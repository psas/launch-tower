using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Phidgets;
using Phidgets.Events;
using ZedGraph;

namespace TemperatureChart
{
    public partial class Form1 : Form
    {
        PointPairList list1;
        PointPairList list2;
        TemperatureSensor therm;
        TimeSpan update;

        DateTime start;

        public Form1()
        {
            InitializeComponent();
            list1 = new PointPairList();
            list2 = new PointPairList();
            therm = new TemperatureSensor();
            start = new DateTime();
        }
        // Respond to the form 'Resize' event
        private void Form1_Resize(object sender, EventArgs e)
        {
            SetSize();
        }

        // SetSize() is separate from Resize() so we can 
        // call it independently from the Form1_Load() method
        // This leaves a 10 px margin around the outside of the control
        // Customize this to fit your needs
        private void SetSize()
        {
            zedGraphControl1.Location = new Point(10, 10);
            // Leave a small margin around the outside of the control
            zedGraphControl1.Size = new Size(ClientRectangle.Width - 20,
                                    ClientRectangle.Height - 20);
        }

        // Respond to form 'Load' event
        private void Form1_Load(object sender, EventArgs e)
        {
            // Setup the graph
            CreateGraph(zedGraphControl1);
            // Size the control to fill the form with a margin
            SetSize();

            therm.TemperatureChange += new TemperatureChangeEventHandler(therm_TemperatureChange);
            therm.Attach += new AttachEventHandler(therm_Attach);

            therm.open();
        }

        void therm_Attach(object sender, AttachEventArgs e)
        {
            start = DateTime.Now;
            therm.thermocouples[0].Sensitivity = 0;
            update = new TimeSpan();
        }

        void therm_TemperatureChange(object sender, TemperatureChangeEventArgs e)
        {
            DateTime now = DateTime.Now;
            TimeSpan diff = now.Subtract(start);

            //only actually update sometimes - otherwise it really freezes the display and the dataset gets too large
            //change the update rate at the ammount of data increases to a max of 5 second
            if ((int)diff.TotalMilliseconds > update.TotalMilliseconds + 
                (zedGraphControl1.GraphPane.CurveList[0].NPts>5000?5000:zedGraphControl1.GraphPane.CurveList[0].NPts))
            {
                zedGraphControl1.GraphPane.CurveList[0].AddPoint(new XDate(now), therm.ambientSensor.Temperature);
                zedGraphControl1.GraphPane.CurveList[1].AddPoint(new XDate(now), therm.thermocouples[0].Temperature);

                dataCount.Text = zedGraphControl1.GraphPane.CurveList[0].NPts.ToString();

                zedGraphControl1.GraphPane.XAxis.Title.Text = "Time (" + zedGraphControl1.GraphPane.XAxis.Scale.Format + ")";

                zedGraphControl1.AxisChange();
                zedGraphControl1.Refresh();

                update = diff;
            }
        }

        // Build the Chart
        private void CreateGraph(ZedGraphControl zgc)
        {
            // get a reference to the GraphPane
            GraphPane myPane = zgc.GraphPane;

            // Set the Titles
            myPane.Title.Text = "Temperature Graph";
            myPane.YAxis.Title.Text = "Temperature";
            myPane.XAxis.Title.Text = "Time";
            myPane.XAxis.Type = AxisType.Date;
            //myPane.XAxis.Scale.Format 

            // Generate a red curve with diamond
            // symbols, and "Porsche" in the legend
            LineItem myCurve = myPane.AddCurve("Ambient",
                  list1, Color.Red, SymbolType.None);

            // Generate a blue curve with circle
            // symbols, and "Piper" in the legend
            LineItem myCurve2 = myPane.AddCurve("Thermocouple",
                  list2, Color.Blue, SymbolType.None);

            // Tell ZedGraph to refigure the
            // axes since the data have changed
            zgc.AxisChange();
        }
    }
}