using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace InterfaceKit_full.SensorExamples
{
    public partial class SensorBox : UserControl
    {
        string comboItem;
        UserControl sensorDisplay;
        int lastSensorValue;

        public SensorBox()
        {
            InitializeComponent();
        }

        public void setGroupBoxText(string s)
        {
            groupBox1.Text = s;
        }

        private void SensorBox_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 0;
            sensorDisplay = baseSensor1;
            comboItem = comboBox1.SelectedItem.ToString();
            lastSensorValue = 0;
        }


        //This function has the task of creating the correct sensor control based on what was selected
        private void comboBox1_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (sensorDisplay != null)
            {
                sensorDisplay.Dispose();
                sensorDisplay = null;
            }

            comboItem = comboBox1.SelectedItem.ToString();
            switch (comboItem)
            {
                case "Base Value": sensorDisplay = new BaseSensor(); break;
                case "1101 - IR Distance Adapter 4-30cm": sensorDisplay = new Sensor1101_GP2D120(); break;
                case "1101 - IR Distance Adapter 10-80cm": sensorDisplay = new Sensor1101_GP2D12(); break;
                case "1101 - IR Distance Adapter 20-150cm": sensorDisplay = new Sensor1101_GP2Y0A02YK(); break;
                case "1102 - IR Reflective Sensor 5mm": sensorDisplay = new Sensor1102(); break;
                case "1103 - IR Reflective Sensor 10cm": sensorDisplay = new Sensor1103(); break;
                case "1104 - Vibration Sensor": sensorDisplay = new Sensor1104(); break;
                case "1105 - Light Sensor": sensorDisplay = new Sensor1105(); break;
                case "1106 - Force Sensor": sensorDisplay = new Sensor1106(); break;
                case "1107 - Humidity Sensor": sensorDisplay = new Sensor1107(); break;
                case "1108 - Magnetic Sensor": sensorDisplay = new Sensor1108(); break;
                case "1109 - Rotation Sensor": sensorDisplay = new Sensor1109(); break;
                case "1110 - Touch Sensor": sensorDisplay = new Sensor1110(); break;
                case "1111 - Motion Sensor": sensorDisplay = new Sensor1111(); break;
                case "1112 - Slider Sensor": sensorDisplay = new Sensor1112(); break;
                case "1113 - Mini Joystick Sensor [X]": sensorDisplay = new Sensor1113X(); break;
                case "1113 - Mini Joystick Sensor [Y]": sensorDisplay = new Sensor1113Y(); break;
                case "1115 - Pressure Sensor": sensorDisplay = new Sensor1115(); break;
                case "1116 - Multi-turn Rotation Sensor": sensorDisplay = new Sensor1116(); break;
                case "1117 - Voltage Sensor": sensorDisplay = new Sensor1117(); break;
                case "1118 - 50Amp Current Sensor [AC]": sensorDisplay = new Sensor1118AC(); break;
                case "1118 - 50Amp Current Sensor [DC]": sensorDisplay = new Sensor1118DC(); break;
                case "1119 - 20Amp Current Sensor [AC]": sensorDisplay = new Sensor1119AC(); break;
                case "1119 - 20Amp Current Sensor [DC]": sensorDisplay = new Sensor1119DC(); break;
                case "1120 - FlexiForce Adapter Board": sensorDisplay = new Sensor1120(); break;
                case "1121 - Voltage Divider": sensorDisplay = new Sensor1121(); break;
                case "1122 - 30Amp Current Sensor [AC]": sensorDisplay = new Sensor1122AC(); break;
                case "1122 - 30Amp Current Sensor [DC]": sensorDisplay = new Sensor1122DC(); break;
                case "1123 - Precision Voltage Sensor": sensorDisplay = new Sensor1123(); break;
                case "1124 - Precision Temperature Sensor": sensorDisplay = new Sensor1124(); break;
                case "1125 - Humidity/Temperature Sensor [H]": sensorDisplay = new Sensor1125H(); break;
                case "1125 - Humidity/Temperature Sensor [T]": sensorDisplay = new Sensor1125T(); break;
                case "1127 - Precision Light Sensor": sensorDisplay = new Sensor1127(); break;
                case "1126 - Differential Gas Pressure Sensor": sensorDisplay = new Sensor1126(); break;
                case "1128 - Sonar Sensor": sensorDisplay = new Sensor1128(); break;
                case "1129 - Touch Sensor": sensorDisplay = new Sensor1129(); break;
                case "1130 - pH Adapter Board [pH]": sensorDisplay = new Sensor1130pH(); break;
                case "1130 - pH Adapter Board [ORP]": sensorDisplay = new Sensor1130ORP(); break;
                case "1131 - Thin Force Sensor": sensorDisplay = new Sensor1131(); break;
                case "1132 - 4-20 mA Adapter": sensorDisplay = new Sensor1132(); break;
                case "1133 - Sound Sensor": sensorDisplay = new Sensor1133(); break;
                case "1134 - Switchable Voltage Divider": sensorDisplay = new Sensor1134(); break;
                case "1135 - Precision Voltage Sensor": sensorDisplay = new Sensor1135(); break;
                case "3120-3123 - FC22 Compression Load Cell": sensorDisplay = new Sensor3120(); break;
                case "3500-3503 - i-Snail Current Sensor": sensorDisplay = new Sensor3500(); break;

            }

            if (sensorDisplay != null)
            {
                sensorDisplay.Location = new Point(6, 25);
                groupBox1.Controls.Add(sensorDisplay);
                ChangeValue(lastSensorValue);
            }
        }

        //This function has the task of executing changeDisplay based on what was selected
        public void ChangeValue(int val)
        {
            lastSensorValue = val;
            if (sensorDisplay == null)
                return;

            switch (comboItem)
            {
                case "Base Value": ((BaseSensor) sensorDisplay).changeDisplay(val); break;
                case "1101 - IR Distance Adapter 4-30cm": ((Sensor1101_GP2D120)sensorDisplay).changeDisplay(val); break;
                case "1101 - IR Distance Adapter 10-80cm": ((Sensor1101_GP2D12)sensorDisplay).changeDisplay(val); break;
                case "1101 - IR Distance Adapter 20-150cm": ((Sensor1101_GP2Y0A02YK)sensorDisplay).changeDisplay(val); break;
                case "1102 - IR Reflective Sensor 5mm": ((Sensor1102)sensorDisplay).changeDisplay(val); break;
                case "1103 - IR Reflective Sensor 10cm": ((Sensor1103)sensorDisplay).changeDisplay(val); break;
                case "1104 - Vibration Sensor": ((Sensor1104)sensorDisplay).changeDisplay(val); break;
                case "1105 - Light Sensor": ((Sensor1105)sensorDisplay).changeDisplay(val); break;
                case "1106 - Force Sensor": ((Sensor1106)sensorDisplay).changeDisplay(val); break;
                case "1107 - Humidity Sensor": ((Sensor1107)sensorDisplay).changeDisplay(val); break;
                case "1108 - Magnetic Sensor": ((Sensor1108)sensorDisplay).changeDisplay(val); break;
                case "1109 - Rotation Sensor": ((Sensor1109)sensorDisplay).changeDisplay(val); break;
                case "1110 - Touch Sensor": ((Sensor1110)sensorDisplay).changeDisplay(val); break;
                case "1111 - Motion Sensor": ((Sensor1111)sensorDisplay).changeDisplay(val); break;
                case "1112 - Slider Sensor": ((Sensor1112)sensorDisplay).changeDisplay(val); break;
                case "1113 - Mini Joystick Sensor [X]": ((Sensor1113X)sensorDisplay).changeDisplay(val); break;
                case "1113 - Mini Joystick Sensor [Y]": ((Sensor1113Y)sensorDisplay).changeDisplay(val); break;
                case "1115 - Pressure Sensor": ((Sensor1115)sensorDisplay).changeDisplay(val); break;
                case "1116 - Multi-turn Rotation Sensor": ((Sensor1116)sensorDisplay).changeDisplay(val); break;
                case "1117 - Voltage Sensor": ((Sensor1117)sensorDisplay).changeDisplay(val); break;
                case "1118 - 50Amp Current Sensor [AC]": ((Sensor1118AC)sensorDisplay).changeDisplay(val); break;
                case "1118 - 50Amp Current Sensor [DC]": ((Sensor1118DC)sensorDisplay).changeDisplay(val); break;
                case "1119 - 20Amp Current Sensor [AC]": ((Sensor1119AC)sensorDisplay).changeDisplay(val); break;
                case "1119 - 20Amp Current Sensor [DC]": ((Sensor1119DC)sensorDisplay).changeDisplay(val); break;
                case "1120 - FlexiForce Adapter Board": ((Sensor1120)sensorDisplay).changeDisplay(val); break;
                case "1121 - Voltage Divider": ((Sensor1121)sensorDisplay).changeDisplay(val); break;
                case "1122 - 30Amp Current Sensor [AC]": ((Sensor1122AC)sensorDisplay).changeDisplay(val); break;
                case "1122 - 30Amp Current Sensor [DC]": ((Sensor1122DC)sensorDisplay).changeDisplay(val); break;
                case "1123 - Precision Voltage Sensor": ((Sensor1123)sensorDisplay).changeDisplay(val); break;
                case "1124 - Precision Temperature Sensor": ((Sensor1124)sensorDisplay).changeDisplay(val); break;
                case "1125 - Humidity/Temperature Sensor [H]": ((Sensor1125H)sensorDisplay).changeDisplay(val); break;
                case "1125 - Humidity/Temperature Sensor [T]": ((Sensor1125T)sensorDisplay).changeDisplay(val); break;
                case "1126 - Differential Gas Pressure Sensor": ((Sensor1126)sensorDisplay).changeDisplay(val); break;
                case "1127 - Precision Light Sensor": ((Sensor1127)sensorDisplay).changeDisplay(val); break;
                case "1128 - Sonar Sensor": ((Sensor1128)sensorDisplay).changeDisplay(val); break;
                case "1129 - Touch Sensor": ((Sensor1129)sensorDisplay).changeDisplay(val); break;
                case "1130 - pH Adapter Board [pH]": ((Sensor1130pH)sensorDisplay).changeDisplay(val); break;
                case "1130 - pH Adapter Board [ORP]": ((Sensor1130ORP)sensorDisplay).changeDisplay(val); break;
                case "1131 - Thin Force Sensor": ((Sensor1131)sensorDisplay).changeDisplay(val); break;
                case "1132 - 4-20 mA Adapter": ((Sensor1132)sensorDisplay).changeDisplay(val); break;
                case "1133 - Sound Sensor": ((Sensor1133)sensorDisplay).changeDisplay(val); break;
                case "1134 - Switchable Voltage Divider": ((Sensor1134)sensorDisplay).changeDisplay(val); break;
                case "1135 - Precision Voltage Sensor": ((Sensor1135)sensorDisplay).changeDisplay(val); break;
                case "3120-3123 - FC22 Compression Load Cell": ((Sensor3120)sensorDisplay).changeDisplay(val); break;
                case "3500-3503 - i-Snail Current Sensor": ((Sensor3500)sensorDisplay).changeDisplay(val); break;
            }
        }


    }
}
