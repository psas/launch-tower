using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class Sensor1122DC: UserControl
    {
        public int sensorValue;
        public Sensor1122DC()
        {
            InitializeComponent();
        }

        public void changeDisplay(int val)
        {
            double tmp = (val / 13.2) - 37.8787;
            textBox1.Text = tmp.ToString("0.#####") + "amps";
        }

    }
}
