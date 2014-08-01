using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full
{
    public partial class AdvancedSensorForm : Form
    {
       InterfaceKit_full.SensorExamples.SensorBox[] SensorBoxList;


        public AdvancedSensorForm()
        {
            InitializeComponent();
        }

        private void AdvancedSensorForm_Load(object sender, EventArgs e)
        {
            SensorBoxList = new InterfaceKit_full.SensorExamples.SensorBox[8];
            SensorBoxList[0] = sensorBox1;
            SensorBoxList[1] = sensorBox2;
            SensorBoxList[2] = sensorBox3;
            SensorBoxList[3] = sensorBox4;
            SensorBoxList[4] = sensorBox5;
            SensorBoxList[5] = sensorBox6;
            SensorBoxList[6] = sensorBox7;
            SensorBoxList[7] = sensorBox8;
        }

        public void SetValue(int index, int value)
        {
            SensorBoxList[index].ChangeValue(value);
        }

        public void SetSensorCount(int count)
        {
            for (int i = 0; i < 8; i++)
            {
                SensorBoxList[i].setGroupBoxText("Sensor " + i.ToString());
                if (i < count)
                    SensorBoxList[i].Enabled = true;
                else
                    SensorBoxList[i].Enabled = false;
            }
        }

        private void sensorBox1_Load(object sender, EventArgs e)
        {

        }
    }
}