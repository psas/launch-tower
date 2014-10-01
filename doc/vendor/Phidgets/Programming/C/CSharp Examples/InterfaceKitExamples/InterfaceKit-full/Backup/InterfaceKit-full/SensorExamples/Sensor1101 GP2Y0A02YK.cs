using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1101_GP2Y0A02YK : UserControl
    {
        public int sensorValue;
        public Sensor1101_GP2Y0A02YK()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
           if ((val < 490)&&(val > 80))
            {
                double tmp = 9462 / (val - 16.92);
                textBox1.Text = tmp.ToString("0.##") +"cm";
            }
            else
                textBox1.Text = "Object Not Detected";
        }

    }
}
