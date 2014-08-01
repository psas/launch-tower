using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor3500: UserControl
    {
        public int sensorValue;
        public Sensor3500()
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
                    tmp = (val / 100.0);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 1:
                    tmp = (val / 40.0);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 2:
                    tmp = (val / 20.0);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
                case 3:
                    tmp = (val / 10.0);
                    textBox1.Text = tmp.ToString("0.####");
                    break;
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    label1.Text = "AC Amps (RMS) = (SensorValue / 100)";
                    break;
                case 1:
                    label1.Text = "AC Amps (RMS) = (SensorValue / 40)";
                    break;
                case 2:
                    label1.Text = "AC Amps (RMS) = (SensorValue / 20)";
                    break;
                case 3:
                    label1.Text = "AC Amps (RMS) = (SensorValue / 10)";
                    break;
            }
        }

    }
}
