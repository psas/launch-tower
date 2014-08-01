using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class BaseSensor : UserControl
    {
        public int sensorValue;
        public BaseSensor()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            textBox1.Text = val.ToString();
        }

    }
}
