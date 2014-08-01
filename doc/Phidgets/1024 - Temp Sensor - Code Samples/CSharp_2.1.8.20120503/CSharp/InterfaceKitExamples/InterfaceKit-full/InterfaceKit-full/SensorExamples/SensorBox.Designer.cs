namespace InterfaceKit_full.SensorExamples
{
    partial class SensorBox
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.baseSensor1 = new InterfaceKit_full.SensorExamples.BaseSensor();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.baseSensor1);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(329, 93);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Sensor #";
            // 
            // baseSensor1
            // 
            this.baseSensor1.Location = new System.Drawing.Point(6, 25);
            this.baseSensor1.Name = "baseSensor1";
            this.baseSensor1.Size = new System.Drawing.Size(317, 65);
            this.baseSensor1.TabIndex = 58;
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Base Value",
            "1101 - IR Distance Adapter 4-30cm",
            "1101 - IR Distance Adapter 10-80cm",
            "1101 - IR Distance Adapter 20-150cm",
            "1102 - IR Reflective Sensor 5mm",
            "1103 - IR Reflective Sensor 10cm",
            "1104 - Vibration Sensor",
            "1105 - Light Sensor",
            "1106 - Force Sensor",
            "1107 - Humidity Sensor",
            "1108 - Magnetic Sensor",
            "1109 - Rotation Sensor",
            "1110 - Touch Sensor",
            "1111 - Motion Sensor",
            "1112 - Slider Sensor",
            "1113 - Mini Joystick Sensor [X]",
            "1113 - Mini Joystick Sensor [Y]",
            "1115 - Pressure Sensor",
            "1116 - Multi-turn Rotation Sensor",
            "1117 - Voltage Sensor",
            "1118 - 50Amp Current Sensor [AC]",
            "1118 - 50Amp Current Sensor [DC]",
            "1119 - 20Amp Current Sensor [AC]",
            "1119 - 20Amp Current Sensor [DC]",
            "1120 - FlexiForce Adapter Board",
            "1121 - Voltage Divider",
            "1122 - 30Amp Current Sensor [AC]",
            "1122 - 30Amp Current Sensor [DC]",
            "1123 - Precision Voltage Sensor",
            "1124 - Precision Temperature Sensor",
            "1125 - Humidity/Temperature Sensor [H]",
            "1125 - Humidity/Temperature Sensor [T]",
            "1126 - Differential Gas Pressure Sensor",
            "1127 - Precision Light Sensor",
            "1128 - Sonar Sensor",
            "1129 - Touch Sensor",
            "1130 - pH Adapter Board [pH]",
            "1130 - pH Adapter Board [ORP]",
            "1131 - Thin Force Sensor",
            "1132 - 4-20 mA Adapter",
            "1133 - Sound Sensor",
            "1134 - Switchable Voltage Divider",
            "1135 - Precision Voltage Sensor",
            "3120-3123 - FC22 Compression Load Cell",
            "3500-3503 - i-Snail Current Sensor"});
            this.comboBox1.Location = new System.Drawing.Point(64, 0);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(259, 21);
            this.comboBox1.TabIndex = 57;
            this.comboBox1.SelectionChangeCommitted += new System.EventHandler(this.comboBox1_SelectionChangeCommitted);
            // 
            // SensorBox
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Name = "SensorBox";
            this.Size = new System.Drawing.Size(335, 99);
            this.Load += new System.EventHandler(this.SensorBox_Load);
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox comboBox1;
        private BaseSensor baseSensor1;
    }
}
