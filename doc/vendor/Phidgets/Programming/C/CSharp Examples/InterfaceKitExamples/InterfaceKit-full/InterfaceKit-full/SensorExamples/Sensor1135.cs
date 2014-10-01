using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1135: UserControl
    {
        public int sensorValue;
        public Sensor1135()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp =val /13.62 - 36.7107;
            textBox1.Text = tmp.ToString("0.###") + "V";
        }

    }
}
