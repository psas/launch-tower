using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1130pH: UserControl
    {
        public int sensorValue;
        public Sensor1130pH()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = 0.0178 * val - 1.889;
            textBox1.Text = tmp.ToString("0.###");
        }
    }
}
