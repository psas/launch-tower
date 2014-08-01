using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1133: UserControl
    {
        public int sensorValue;
        public Sensor1133()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = 16.801 * Math.Log(val) + 9.872;
            textBox1.Text = tmp.ToString("0.###") + " dB";
        }

    }
}
