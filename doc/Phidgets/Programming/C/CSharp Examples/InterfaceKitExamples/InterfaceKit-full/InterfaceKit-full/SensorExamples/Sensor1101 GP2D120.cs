using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1101_GP2D120 : UserControl
    {
        public int sensorValue;
        public Sensor1101_GP2D120()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
           if ((val < 530)&&(val > 80))
            {
                double tmp = 2076 / (val - 11);
                textBox1.Text = tmp.ToString("0.##") +"cm";
            }
            else
                textBox1.Text = "Object Not Detected";
        }

    }
}
