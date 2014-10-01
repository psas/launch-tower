using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1131: UserControl
    {
        public int sensorValue;
        public Sensor1131()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = 15.311 * Math.Exp(0.005199 * val);
            textBox1.Text = tmp.ToString("0.###") + "g";
        }

    }
}
