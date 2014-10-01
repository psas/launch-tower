using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1115: UserControl
    {
        public int sensorValue;
        public Sensor1115()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (val / 4.0) + 10;
            textBox1.Text = tmp.ToString("0.####") + "kPa";
        }

    }
}
