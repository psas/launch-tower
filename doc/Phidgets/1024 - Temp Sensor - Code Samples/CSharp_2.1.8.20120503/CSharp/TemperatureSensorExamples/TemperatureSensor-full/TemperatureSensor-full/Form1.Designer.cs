namespace TemperatureSensor_full
{
    partial class Form1
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.numThermoTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.versionTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.thermoCmb = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.ambientRange = new System.Windows.Forms.Label();
            this.potentialRange = new System.Windows.Forms.Label();
            this.thermoRange = new System.Windows.Forms.Label();
            this.thermoTypeComboBox = new System.Windows.Forms.ComboBox();
            this.thermoTypeLabel = new System.Windows.Forms.Label();
            this.thermoPotTxt = new System.Windows.Forms.TextBox();
            this.potentialLabel = new System.Windows.Forms.Label();
            this.sensitivityTxt = new System.Windows.Forms.TextBox();
            this.SensitivityTrk = new System.Windows.Forms.TrackBar();
            this.label8 = new System.Windows.Forms.Label();
            this.onboardTempTxt = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.thermoTempTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.SensitivityTrk)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.numThermoTxt);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.versionTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(9, 7);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(305, 229);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Device Info";
            // 
            // numThermoTxt
            // 
            this.numThermoTxt.Location = new System.Drawing.Point(136, 191);
            this.numThermoTxt.Name = "numThermoTxt";
            this.numThermoTxt.ReadOnly = true;
            this.numThermoTxt.Size = new System.Drawing.Size(148, 20);
            this.numThermoTxt.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 194);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(112, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "# Temperature Inputs:";
            // 
            // versionTxt
            // 
            this.versionTxt.Location = new System.Drawing.Point(136, 157);
            this.versionTxt.Name = "versionTxt";
            this.versionTxt.ReadOnly = true;
            this.versionTxt.Size = new System.Drawing.Size(148, 20);
            this.versionTxt.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 160);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(136, 125);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(148, 20);
            this.serialTxt.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 128);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Serial No.:";
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(136, 59);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(148, 52);
            this.nameTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Name:";
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(136, 26);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(148, 20);
            this.attachedTxt.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.thermoCmb);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.ambientRange);
            this.groupBox2.Controls.Add(this.potentialRange);
            this.groupBox2.Controls.Add(this.thermoRange);
            this.groupBox2.Controls.Add(this.thermoTypeComboBox);
            this.groupBox2.Controls.Add(this.thermoTypeLabel);
            this.groupBox2.Controls.Add(this.thermoPotTxt);
            this.groupBox2.Controls.Add(this.potentialLabel);
            this.groupBox2.Controls.Add(this.sensitivityTxt);
            this.groupBox2.Controls.Add(this.SensitivityTrk);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.onboardTempTxt);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.thermoTempTxt);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Location = new System.Drawing.Point(9, 242);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(305, 215);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Sensor Data";
            // 
            // thermoCmb
            // 
            this.thermoCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.thermoCmb.Enabled = false;
            this.thermoCmb.FormattingEnabled = true;
            this.thermoCmb.Location = new System.Drawing.Point(188, 13);
            this.thermoCmb.Name = "thermoCmb";
            this.thermoCmb.Size = new System.Drawing.Size(51, 21);
            this.thermoCmb.TabIndex = 17;
            this.thermoCmb.SelectedIndexChanged += new System.EventHandler(this.thermoCmb_SelectedIndexChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(65, 16);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(109, 13);
            this.label11.TabIndex = 16;
            this.label11.Text = "Choose Sensor Input:";
            // 
            // ambientRange
            // 
            this.ambientRange.AutoSize = true;
            this.ambientRange.Location = new System.Drawing.Point(118, 182);
            this.ambientRange.Name = "ambientRange";
            this.ambientRange.Size = new System.Drawing.Size(13, 13);
            this.ambientRange.TabIndex = 13;
            this.ambientRange.Text = "()";
            // 
            // potentialRange
            // 
            this.potentialRange.AutoSize = true;
            this.potentialRange.Location = new System.Drawing.Point(58, 96);
            this.potentialRange.Name = "potentialRange";
            this.potentialRange.Size = new System.Drawing.Size(13, 13);
            this.potentialRange.TabIndex = 12;
            this.potentialRange.Text = "()";
            // 
            // thermoRange
            // 
            this.thermoRange.AutoSize = true;
            this.thermoRange.Location = new System.Drawing.Point(21, 80);
            this.thermoRange.Name = "thermoRange";
            this.thermoRange.Size = new System.Drawing.Size(13, 13);
            this.thermoRange.TabIndex = 11;
            this.thermoRange.Text = "()";
            // 
            // thermoTypeComboBox
            // 
            this.thermoTypeComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.thermoTypeComboBox.Enabled = false;
            this.thermoTypeComboBox.FormattingEnabled = true;
            this.thermoTypeComboBox.Items.AddRange(new object[] {
            "K-Type",
            "J-Type",
            "E-Type",
            "T-Type"});
            this.thermoTypeComboBox.Location = new System.Drawing.Point(218, 40);
            this.thermoTypeComboBox.Name = "thermoTypeComboBox";
            this.thermoTypeComboBox.Size = new System.Drawing.Size(66, 21);
            this.thermoTypeComboBox.TabIndex = 10;
            this.thermoTypeComboBox.SelectedIndexChanged += new System.EventHandler(this.thermoTypeComboBox_SelectedIndexChanged);
            // 
            // thermoTypeLabel
            // 
            this.thermoTypeLabel.AutoSize = true;
            this.thermoTypeLabel.Location = new System.Drawing.Point(6, 44);
            this.thermoTypeLabel.Name = "thermoTypeLabel";
            this.thermoTypeLabel.Size = new System.Drawing.Size(105, 13);
            this.thermoTypeLabel.TabIndex = 9;
            this.thermoTypeLabel.Text = "Thermocouple Type:";
            // 
            // thermoPotTxt
            // 
            this.thermoPotTxt.AcceptsTab = true;
            this.thermoPotTxt.Location = new System.Drawing.Point(218, 93);
            this.thermoPotTxt.Name = "thermoPotTxt";
            this.thermoPotTxt.ReadOnly = true;
            this.thermoPotTxt.Size = new System.Drawing.Size(66, 20);
            this.thermoPotTxt.TabIndex = 8;
            // 
            // potentialLabel
            // 
            this.potentialLabel.AutoSize = true;
            this.potentialLabel.Location = new System.Drawing.Point(6, 96);
            this.potentialLabel.Name = "potentialLabel";
            this.potentialLabel.Size = new System.Drawing.Size(51, 13);
            this.potentialLabel.TabIndex = 7;
            this.potentialLabel.Text = "Potential:";
            // 
            // sensitivityTxt
            // 
            this.sensitivityTxt.Location = new System.Drawing.Point(69, 123);
            this.sensitivityTxt.Name = "sensitivityTxt";
            this.sensitivityTxt.ReadOnly = true;
            this.sensitivityTxt.Size = new System.Drawing.Size(78, 20);
            this.sensitivityTxt.TabIndex = 6;
            // 
            // SensitivityTrk
            // 
            this.SensitivityTrk.Location = new System.Drawing.Point(153, 119);
            this.SensitivityTrk.Maximum = 200;
            this.SensitivityTrk.Name = "SensitivityTrk";
            this.SensitivityTrk.Size = new System.Drawing.Size(131, 45);
            this.SensitivityTrk.TabIndex = 5;
            this.SensitivityTrk.TickFrequency = 10;
            this.SensitivityTrk.Scroll += new System.EventHandler(this.SensitivityTrk_Scroll);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 126);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(57, 13);
            this.label8.TabIndex = 4;
            this.label8.Text = "Sensitivity:";
            // 
            // onboardTempTxt
            // 
            this.onboardTempTxt.Location = new System.Drawing.Point(218, 179);
            this.onboardTempTxt.Name = "onboardTempTxt";
            this.onboardTempTxt.ReadOnly = true;
            this.onboardTempTxt.Size = new System.Drawing.Size(66, 20);
            this.onboardTempTxt.TabIndex = 3;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 182);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(111, 13);
            this.label7.TabIndex = 2;
            this.label7.Text = "Ambient Temperature:";
            // 
            // thermoTempTxt
            // 
            this.thermoTempTxt.AcceptsTab = true;
            this.thermoTempTxt.Location = new System.Drawing.Point(218, 67);
            this.thermoTempTxt.Name = "thermoTempTxt";
            this.thermoTempTxt.ReadOnly = true;
            this.thermoTempTxt.Size = new System.Drawing.Size(66, 20);
            this.thermoTempTxt.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 64);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(106, 13);
            this.label6.TabIndex = 0;
            this.label6.Text = "Sensor Temperature:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(324, 465);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(332, 499);
            this.MinimumSize = new System.Drawing.Size(332, 499);
            this.Name = "Form1";
            this.Text = "TemperatureSensor-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.SensitivityTrk)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox numThermoTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox versionTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox onboardTempTxt;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox thermoTempTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TrackBar SensitivityTrk;
        private System.Windows.Forms.TextBox sensitivityTxt;
        private System.Windows.Forms.TextBox thermoPotTxt;
        private System.Windows.Forms.Label potentialLabel;
        private System.Windows.Forms.ComboBox thermoTypeComboBox;
        private System.Windows.Forms.Label thermoTypeLabel;
        private System.Windows.Forms.Label ambientRange;
        private System.Windows.Forms.Label potentialRange;
        private System.Windows.Forms.Label thermoRange;
        private System.Windows.Forms.ComboBox thermoCmb;
        private System.Windows.Forms.Label label11;
    }
}

