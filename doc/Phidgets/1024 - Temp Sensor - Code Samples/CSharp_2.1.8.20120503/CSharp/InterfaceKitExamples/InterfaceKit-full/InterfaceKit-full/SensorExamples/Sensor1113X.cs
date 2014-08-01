using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1113X : UserControl
    {
        public int sensorValue;
        public Sensor1113X()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            textBox1.Text = val.ToString();
            trackBar1.Value = val;
        }

    }
}
