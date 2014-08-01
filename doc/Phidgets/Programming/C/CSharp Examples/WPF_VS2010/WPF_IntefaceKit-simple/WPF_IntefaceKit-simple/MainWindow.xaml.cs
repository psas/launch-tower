using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Phidgets.Events;
using Phidgets;
using System.Windows.Threading;
using System.Threading;

namespace WPF_IntefaceKit
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private InterfaceKit ifk; 
        private CheckBox[] digiInChkArray = new CheckBox[16];
        private Label[] digiInLblArray = new Label[16];
        private CheckBox[] digiOutChkArray = new CheckBox[16];
        private CheckBox[] digiOutDispChkArray = new CheckBox[16];
        private Label[] digiOutLblArray = new Label[16];
        private TextBox[] sensorInArray = new TextBox[8];
        private Label[] sensorInLblArray = new Label[8];

        private void makeDigiInArrays()
        {
            int count = VisualTreeHelper.GetChildrenCount(digitalInDisplay);
            for (int i = 0; i < count; i++)
            {
                Control childControl = (Control)VisualTreeHelper.GetChild(digitalInDisplay, i);
                childControl.Visibility = System.Windows.Visibility.Hidden;
                if (childControl is CheckBox)
                    digiInChkArray[int.Parse(childControl.Tag.ToString())] = (CheckBox)childControl;
                else if (childControl is Label)
                    digiInLblArray[int.Parse(childControl.Tag.ToString())] = (Label)childControl;
            }
        }

        private void makeDigiOutArrays()
        {
            int count = VisualTreeHelper.GetChildrenCount(digitalOutDisplay);
            for (int i = 0; i < count; i++)
            {
                Control childControl = (Control)VisualTreeHelper.GetChild(digitalOutDisplay, i);
                childControl.Visibility = System.Windows.Visibility.Hidden;
                if (childControl is CheckBox)
                {
                    if(childControl.IsEnabled)
                        digiOutChkArray[int.Parse(childControl.Tag.ToString())] = (CheckBox)childControl;
                    else
                        digiOutDispChkArray[int.Parse(childControl.Tag.ToString())] = (CheckBox)childControl;
                }
                else if (childControl is Label)
                    digiOutLblArray[int.Parse(childControl.Tag.ToString())] = (Label)childControl;
            }
        }

        private void makeSensorInArrays()
        {
            int count = VisualTreeHelper.GetChildrenCount(analogInDisplay);
            for (int i = 0; i < count; i++)
            {
                if (VisualTreeHelper.GetChild(analogInDisplay, i) is Control)
                {
                    Control childControl = (Control)VisualTreeHelper.GetChild(analogInDisplay, i);
                    childControl.Visibility = System.Windows.Visibility.Hidden;
                    if (childControl is TextBox)
                    {
                        sensorInArray[int.Parse(childControl.Tag.ToString())] = (TextBox)childControl;
                    }
                    else if (childControl is Label)
                        sensorInLblArray[int.Parse(childControl.Tag.ToString())] = (Label)childControl;
                }
            }

            count = VisualTreeHelper.GetChildrenCount(sensitivityPanel);
            for (int i = 0; i < count; i++)
            {
                Control childControl = (Control)VisualTreeHelper.GetChild(sensitivityPanel, i);
                childControl.Visibility = System.Windows.Visibility.Hidden;
            }
        }

        void ifk_Attach(object sender, AttachEventArgs e)
        {
            this.Dispatcher.Invoke(new Action(delegate()
                {
                    makeDigiInArrays();
                    makeDigiOutArrays();
                    makeSensorInArrays();

                    InterfaceKit attached = (InterfaceKit)sender;

                    attachedLbl.Content = attached.Attached.ToString();
                    nameLbl.Content = attached.Name;
                    serialNoLbl.Content = attached.SerialNumber.ToString();
                    versionLbl.Content = attached.Version.ToString();
                    digitalInputCountLbl.Content = attached.inputs.Count.ToString();
                    digitalOutputCountLbl.Content = attached.outputs.Count.ToString();
                    sensorCountLbl.Content = attached.sensors.Count.ToString();

                    for (int i = 0; i < attached.inputs.Count; i++)
                    {
                        digiInChkArray[i].Visibility = System.Windows.Visibility.Visible;
                        digiInLblArray[i].Visibility = System.Windows.Visibility.Visible;
                    }

                    for (int i = 0; i < attached.outputs.Count; i++)
                    {
                        digiOutDispChkArray[i].Visibility = System.Windows.Visibility.Visible;
                        digiOutChkArray[i].Visibility = System.Windows.Visibility.Visible;
                        digiOutLblArray[i].Visibility = System.Windows.Visibility.Visible;
                    }

                    if (attached.sensors.Count > 0)
                    {
                        for (int i = 0; i < attached.inputs.Count; i++)
                        {
                            sensorInArray[i].Visibility = System.Windows.Visibility.Visible;
                            sensorInLblArray[i].Visibility = System.Windows.Visibility.Visible;
                        }

                        ratiometricChk.Visibility = System.Windows.Visibility.Visible;
                        sensitivityLbl.Visibility = System.Windows.Visibility.Visible;
                        sensitivitySlider.Visibility = System.Windows.Visibility.Visible;
                        sensitivityTxt.Visibility = System.Windows.Visibility.Visible;

                        try
                        {
                            sensitivitySlider.Value = (double)ifk.sensors[0].Sensitivity;
                            sensitivityTxt.Text = ifk.sensors[0].Sensitivity.ToString();

                            ratiometricChk.Visibility = System.Windows.Visibility.Visible;
                            ratiometricChk.IsChecked = ifk.ratiometric;
                        }
                        catch (PhidgetException pe)
                        {
                            if (pe.Type == PhidgetException.ErrorType.PHIDGET_ERR_UNSUPPORTED)
                            {
                                ratiometricChk.Visibility = System.Windows.Visibility.Hidden;
                            }
                        }
                    }
                }));
            
        }

        void ifk_Detach(object sender, DetachEventArgs e)
        {
            this.Dispatcher.Invoke(new Action(delegate()
                {
                    InterfaceKit detached = (InterfaceKit)sender;

                    attachedLbl.Content = detached.Attached.ToString();
                    nameLbl.Content = "";
                    serialNoLbl.Content = "";
                    versionLbl.Content = "";
                    digitalInputCountLbl.Content = "";
                    digitalOutputCountLbl.Content = "";
                    sensorCountLbl.Content = "";

                    for (int i = 0; i < 16; i++)
                    {
                        digiInChkArray[i].Visibility = System.Windows.Visibility.Hidden;
                        digiInLblArray[i].Visibility = System.Windows.Visibility.Hidden;
                    }

                    for (int i = 0; i < 16; i++)
                    {
                        digiOutDispChkArray[i].Visibility = System.Windows.Visibility.Hidden;
                        digiOutChkArray[i].Visibility = System.Windows.Visibility.Hidden;
                        digiOutLblArray[i].Visibility = System.Windows.Visibility.Hidden;
                    }

                    
                    for (int i = 0; i < 8; i++)
                    {
                        sensorInArray[i].Visibility = System.Windows.Visibility.Hidden;
                        sensorInLblArray[i].Visibility = System.Windows.Visibility.Hidden;
                    }

                    ratiometricChk.Visibility = System.Windows.Visibility.Hidden;
                    sensitivityLbl.Visibility = System.Windows.Visibility.Hidden;
                    sensitivitySlider.Visibility = System.Windows.Visibility.Hidden;
                    sensitivityTxt.Visibility = System.Windows.Visibility.Hidden;
                }));
        }

        void ifk_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Code + ": " + e.Type + System.Environment.NewLine + e.Description, "Phidget Error", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        void ifk_SensorChange(object sender, SensorChangeEventArgs e)
        {
            this.Dispatcher.Invoke(new Action(delegate()
                {
                    sensorInArray[e.Index].Text = e.Value.ToString();
                }));
        }

        void ifk_OutputChange(object sender, OutputChangeEventArgs e)
        {
            this.Dispatcher.Invoke(new Action(delegate()
                {
                    digiOutDispChkArray[e.Index].IsChecked = e.Value;
                }));
        }

        void ifk_InputChange(object sender, InputChangeEventArgs e)
        {
            this.Dispatcher.Invoke(new Action(delegate()
                {
                    digiInChkArray[e.Index].IsChecked = e.Value;
                }));
        }

        private void CheckBox_Click(object sender, RoutedEventArgs e)
        {
            CheckBox outputChk = (CheckBox)sender;

            int outputIndex = int.Parse((string)outputChk.Tag);
            if((bool)outputChk.IsChecked)
                ifk.outputs[outputIndex] = true;
            else
                ifk.outputs[outputIndex] = false;
        }

        private void ratiometricChk_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if ((bool)ratiometricChk.IsChecked)
                    ifk.ratiometric = true;
                else
                    ifk.ratiometric = false;
            }
            catch (PhidgetException) { }
        }

        private void sensitivitySlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            try
            {
                for (int i = 0; i < ifk.sensors.Count; i++)
                    ifk.sensors[i].Sensitivity = (int)sensitivitySlider.Value;

                sensitivityTxt.Text = ((int)sensitivitySlider.Value).ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            makeDigiInArrays();
            makeDigiOutArrays();
            makeSensorInArrays();

            ifk = new InterfaceKit();

            ifk.Attach += new AttachEventHandler(ifk_Attach);
            ifk.Detach += new DetachEventHandler(ifk_Detach);
            ifk.Error += new ErrorEventHandler(ifk_Error);

            ifk.InputChange += new InputChangeEventHandler(ifk_InputChange);
            ifk.OutputChange += new OutputChangeEventHandler(ifk_OutputChange);
            ifk.SensorChange += new SensorChangeEventHandler(ifk_SensorChange);

            ifk.open();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            ifk.SensorChange -= new SensorChangeEventHandler(ifk_SensorChange);
            ifk.OutputChange -= new OutputChangeEventHandler(ifk_OutputChange);
            ifk.InputChange -= new InputChangeEventHandler(ifk_InputChange);

            ifk.Error -= new ErrorEventHandler(ifk_Error);
            ifk.Detach -= new DetachEventHandler(ifk_Detach);
            ifk.Attach -= new AttachEventHandler(ifk_Attach);

            DoEvents();

            ifk.close();
            ifk = null;
        }

        static void DoEvents()
        {
            DispatcherFrame frame = new DispatcherFrame(true);
            Dispatcher.CurrentDispatcher.BeginInvoke(DispatcherPriority.Background, (SendOrPostCallback)delegate(object arg)
            {
                DispatcherFrame fr = arg as DispatcherFrame;
                fr.Continue = false;
            }, frame);
            Dispatcher.PushFrame(frame);
        }
    }
}
