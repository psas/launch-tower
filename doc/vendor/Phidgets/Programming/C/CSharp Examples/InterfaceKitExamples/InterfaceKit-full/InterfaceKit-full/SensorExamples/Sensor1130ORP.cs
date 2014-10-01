using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1130ORP: UserControl
    {
        public int sensorValue;
        public Sensor1130ORP()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (2.5 - val / 200.0) / 1.037;
            textBox1.Text = tmp.ToString("0.###") + "mV";
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            changeDisplay(sensorValue);
        }
    }
}
