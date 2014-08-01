using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1120: UserControl
    {
        public int sensorValue;
        public Sensor1120()
        {
            InitializeComponent();
            comboBox1.SelectedIndex = 0;
        }

        public void changeDisplay(int val)
        {
            double tmp;
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    tmp = (val / 461.0);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 1:
                    tmp = (val / 25.71);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 2:
                    tmp = (val / 9.09);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    label1.Text = "Force = (SensorValue / 461)";
                    break;
                case 1:
                    label1.Text = "Force = (SensorValue / 25.71)";
                    break;
                case 2:
                    label1.Text = "Force = (SensorValue / 9.09)";
                    break;
            }
        }

    }
}
