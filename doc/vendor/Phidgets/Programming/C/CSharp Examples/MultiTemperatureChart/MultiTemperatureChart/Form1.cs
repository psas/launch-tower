using System;
using System.IO;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using ZedGraph;
using Phidgets;
using Phidgets.Events;

namespace MultiTemperatureChart
{
    public partial class Form1 : Form
    {
        PointPairList list1;
        PointPairList list2;
        PointPairList list3;
        PointPairList list4;
        PointPairList list5;

        TimeSpan update;
        DateTime start;
        TemperatureSensor[] sensors = new TemperatureSensor[5];

        FileStream oStream;
        StreamWriter writer;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            startBtn.Enabled = false;

            list1 = new PointPairList();
            list2 = new PointPairList();
            list3 = new PointPairList();
            list4 = new PointPairList();
            list5 = new PointPairList();

            start = new DateTime();

            oStream = new FileStream(Environment.CurrentDirectory + "\\ThermoData.csv", FileMode.Create, FileAccess.Write);
            writer = new StreamWriter(oStream);

            for (int i = 0; i < 5; i++)
            {
                sensors[i] = new TemperatureSensor();
            }
            try
            {
                //NewK = 1010101
                sensors[0].open(1010101);
                sensors[0].waitForAttachment();
                sensors[0].thermocouples[0].Sensitivity = 0.0;
                sensors[0].thermocouples[0].Type = TemperatureSensorSensor.ThermocoupleType.PHIDGET_TEMPERATURE_SENSOR_K_TYPE;
                //oldK = 33112
                sensors[1].open(33112);
                sensors[1].waitForAttachment();
                sensors[1].thermocouples[0].Type = TemperatureSensorSensor.ThermocoupleType.PHIDGET_TEMPERATURE_SENSOR_K_TYPE;
                //oldT = 33038
                sensors[2].open(33038);
                sensors[2].waitForAttachment();
                sensors[2].thermocouples[0].Type = TemperatureSensorSensor.ThermocoupleType.PHIDGET_TEMPERATURE_SENSOR_T_TYPE;
                //oldJ = 33095
                sensors[3].open(33095);
                sensors[3].waitForAttachment();
                sensors[3].thermocouples[0].Type = TemperatureSensorSensor.ThermocoupleType.PHIDGET_TEMPERATURE_SENSOR_J_TYPE;
                //oldE = 33087
                sensors[4].open(33087);
                sensors[4].waitForAttachment();
                sensors[4].thermocouples[0].Type = TemperatureSensorSensor.ThermocoupleType.PHIDGET_TEMPERATURE_SENSOR_E_TYPE;

                sensors[0].TemperatureChange += new TemperatureChangeEventHandler(Sensor_TemperatureChange);
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            startBtn.Enabled = true;

            CreateGraph(zedGraphControl1);
            SetSize();
        }

        private bool CheckForAttach()
        {
            if ((sensors[0].Attached) && (sensors[1].Attached) && (sensors[2].Attached) && (sensors[3].Attached) && (sensors[4].Attached))
            {
                
                return true;
            }
            else
            {
                return false;
            }
        }

        private void startBtn_Click(object sender, EventArgs e)
        {
            start = DateTime.Now;
            update = new TimeSpan();
            startBtn.Enabled = false;
        }

        void Sensor_TemperatureChange(object sender, TemperatureChangeEventArgs e)
        {

            //when event fires, get temperature value and poll temperature values of all the others
            DateTime now = DateTime.Now;
            TimeSpan diff = now.Subtract(start);

            try
            {
                writer.WriteLine(sensors[0].thermocouples[0].Temperature + "," + sensors[1].thermocouples[0].Temperature +
                            "," + sensors[2].thermocouples[0].Temperature + "," + sensors[3].thermocouples[0].Temperature +
                            "," + sensors[4].thermocouples[0].Temperature);
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            if ((int)diff.TotalMilliseconds > update.TotalMilliseconds +
                (zedGraphControl1.GraphPane.CurveList[0].NPts > 5000 ? 5000 : zedGraphControl1.GraphPane.CurveList[0].NPts))
            {
                try
                {
                    zedGraphControl1.GraphPane.CurveList[0].AddPoint(new XDate(now), sensors[0].thermocouples[0].Temperature);
                    zedGraphControl1.GraphPane.CurveList[1].AddPoint(new XDate(now), sensors[1].thermocouples[0].Temperature);
                    zedGraphControl1.GraphPane.CurveList[2].AddPoint(new XDate(now), sensors[2].thermocouples[0].Temperature);
                    zedGraphControl1.GraphPane.CurveList[3].AddPoint(new XDate(now), sensors[3].thermocouples[0].Temperature);
                    zedGraphControl1.GraphPane.CurveList[4].AddPoint(new XDate(now), sensors[4].thermocouples[0].Temperature);
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                dataCount.Text = zedGraphControl1.GraphPane.CurveList[0].NPts.ToString();

                zedGraphControl1.GraphPane.XAxis.Title.Text = "Time (" + zedGraphControl1.GraphPane.XAxis.Scale.Format + ")";

                zedGraphControl1.AxisChange();
                zedGraphControl1.Refresh();

                update = diff;
            }
        }

        void Sensor_Attach(object sender, AttachEventArgs e)
        {

            if (e.Device.Equals(sensors[0]))
            {
                try
                {
                    sensors[0].thermocouples[0].Sensitivity = 0.0;
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
        }

        private void CreateGraph(ZedGraphControl zgc)
        {
            GraphPane myPane = zgc.GraphPane;

            myPane.Title.Text = "Temperature Graph";
            myPane.YAxis.Title.Text = "Temperature";
            myPane.XAxis.Title.Text = "Time";
            myPane.XAxis.Type = AxisType.Date;

            LineItem curve1 = myPane.AddCurve("NewK", list1, Color.Red, SymbolType.None);
            LineItem curve2 = myPane.AddCurve("OldK", list2, Color.Blue, SymbolType.None);
            LineItem curve3 = myPane.AddCurve("OldT", list3, Color.Green, SymbolType.None);
            LineItem curve4 = myPane.AddCurve("OldJ", list4, Color.Purple, SymbolType.None);
            LineItem curve5 = myPane.AddCurve("OldE", list5, Color.Orange, SymbolType.None);

            zgc.AxisChange();
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            SetSize();
        }

        private void SetSize()
        {
            zedGraphControl1.Location = new Point(10, 10);
            // Leave a small margin around the outside of the control
            zedGraphControl1.Size = new Size(ClientRectangle.Width - 20,
                                    ClientRectangle.Height - 20);
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            writer.Close();
            oStream.Close();

            writer = null;
            oStream = null;

            try
            {
                sensors[0].Attach -= new AttachEventHandler(Sensor_Attach);
                sensors[0].TemperatureChange -= new TemperatureChangeEventHandler(Sensor_TemperatureChange);
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            Application.DoEvents();

            for (int i = 0; i < 5; i++)
            {
                try
                {
                    sensors[i].close();
                    sensors[i] = null;
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description, "Phidget Exception: " + ex.Code, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            sensors = null;
        }


    }
}