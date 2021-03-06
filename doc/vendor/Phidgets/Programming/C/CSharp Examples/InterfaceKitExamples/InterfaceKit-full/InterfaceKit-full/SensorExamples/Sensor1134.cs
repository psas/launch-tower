using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1134: UserControl
    {
        public int sensorValue;
        public Sensor1134()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            sensorValue = val;
            try
            {
                double tmp = double.Parse(comboBox1.Text.ToString()) * (1000.0 / val - 1);
                textBox1.Text = tmp.ToString("0.###") + "Ω";
            }
            catch (Exception)
            {
                textBox1.Text = "Unknown";
            }

               
        }

        private void Sensor1134_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 0;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                double tmp = double.Parse(comboBox1.Text.ToString()) * (1000.0 / sensorValue - 1);
                textBox1.Text = tmp.ToString("0.###") + "Ω";
            }
            catch (Exception)
            {
                textBox1.Text = "Unknown";
            }
        }

    }
}
