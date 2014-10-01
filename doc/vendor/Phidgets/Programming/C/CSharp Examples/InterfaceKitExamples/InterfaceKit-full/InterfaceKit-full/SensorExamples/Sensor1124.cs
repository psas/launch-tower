using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1124 : UserControl
    {
        public int sensorValue;
        public Sensor1124()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (val * 0.2222) - 61.111;
            textBox1.Text = tmp.ToString("0.####") + "°c";
        }

    }
}
