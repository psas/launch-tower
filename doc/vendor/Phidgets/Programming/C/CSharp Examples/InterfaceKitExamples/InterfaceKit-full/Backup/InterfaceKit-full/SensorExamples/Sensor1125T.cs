using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1125T: UserControl
    {
        public int sensorValue;
        public Sensor1125T()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (val * 0.22222) - 61.11;
            textBox1.Text = tmp.ToString("0.####") + "°c";
        }

    }
}
