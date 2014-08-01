using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1129 : UserControl
    {
        public int sensorValue;
        public Sensor1129()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            if (val < 500)
                textBox1.Text = "Touch Not Detected";
            else
                textBox1.Text = "Touch Detected";
        }

    }
}
