using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1126: UserControl
    {
        public int sensorValue;
        public Sensor1126()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (val / 18) - 27.777;
            textBox1.Text = tmp.ToString("0.####") + "kPa";
            tmp = (val * 0.008055) - 4.0277;
            textBox2.Text = tmp.ToString("0.####") + "psi";
        }

    }
}
