using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1101_GP2D12 : UserControl
    {
        public int sensorValue;
        public Sensor1101_GP2D12()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
           if ((val < 500)&&(val > 80))
            {
                double tmp = 4800.0 / (val - 20);
                textBox1.Text = tmp.ToString("0.##") +"cm";
            }
            else
                textBox1.Text = "Object Not Detected";
        }

    }
}
