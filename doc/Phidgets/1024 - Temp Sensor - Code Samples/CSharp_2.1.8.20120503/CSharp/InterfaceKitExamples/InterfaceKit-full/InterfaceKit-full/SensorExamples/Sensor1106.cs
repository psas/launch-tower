using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1106 : UserControl
    {
        public int sensorValue;
        public Sensor1106()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            trackBar1.Value = val;
            this.Update();
        }

    }
}
