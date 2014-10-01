using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor3120: UserControl
    {
        public int sensorValue;
        public Sensor3120()
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
                    tmp = (val / 70.0) - 10.0 / 7.0;
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 1:
                    tmp = (val / 28.0) - 25.0 / 7.0;
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 2:
                    tmp = (val / 14.0) - 50.0 / 7.0;
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 3:
                    tmp = (val / 7.0) - 100.0 / 7.0;
                    textBox1.Text = tmp.ToString("0.####");
                    break;
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    label1.Text = "Force (lb) = (SensorValue / 70) - 10 / 7";
                    break;
                case 1:
                    label1.Text = "Force (lb) = (SensorValue / 28) - 25 / 7";
                    break;
                case 2:
                    label1.Text = "Force (lb) = (SensorValue / 14) - 50 / 7";
                    break;
                case 3:
                    label1.Text = "Force (lb) = (SensorValue / 7) - 100 / 7";
                    break;
            }
        }

    }
}
