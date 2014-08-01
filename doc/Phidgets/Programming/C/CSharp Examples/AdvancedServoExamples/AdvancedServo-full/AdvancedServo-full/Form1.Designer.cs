namespace AdvancedServo_full
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
            this.numServosTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.versiontxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.motor1Grp = new System.Windows.Forms.GroupBox();
            this.servoTypeCmb = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.maxPosnTextBox = new System.Windows.Forms.TextBox();
            this.minPosnTextBox = new System.Windows.Forms.TextBox();
            this.minPosnTrackBar = new System.Windows.Forms.TrackBar();
            this.label19 = new System.Windows.Forms.Label();
            this.maxPosnTrackBar = new System.Windows.Forms.TrackBar();
            this.label17 = new System.Windows.Forms.Label();
            this.stoppedCheckBox = new System.Windows.Forms.CheckBox();
            this.speedRampingCheckBox = new System.Windows.Forms.CheckBox();
            this.engagedCheckBox = new System.Windows.Forms.CheckBox();
            this.accelTxt = new System.Windows.Forms.TextBox();
            this.target_velocityTxt = new System.Windows.Forms.TextBox();
            this.target_positionTxt = new System.Windows.Forms.TextBox();
            this.actual_positionTxt = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.positionTrk = new System.Windows.Forms.TrackBar();
            this.accelTrk = new System.Windows.Forms.TrackBar();
            this.currentTxt = new System.Windows.Forms.TextBox();
            this.velocityTrk = new System.Windows.Forms.TrackBar();
            this.label12 = new System.Windows.Forms.Label();
            this.servoCmb = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.actual_velocityTxt = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.motor1Grp.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.minPosnTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.maxPosnTrackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.numServosTxt);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.versiontxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(13, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(287, 179);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "AdvancedServo Control Details";
            // 
            // numServosTxt
            // 
            this.numServosTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.numServosTxt.Location = new System.Drawing.Point(77, 147);
            this.numServosTxt.Name = "numServosTxt";
            this.numServosTxt.ReadOnly = true;
            this.numServosTxt.Size = new System.Drawing.Size(195, 20);
            this.numServosTxt.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 150);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "# Servos:";
            // 
            // versiontxt
            // 
            this.versiontxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.versiontxt.Location = new System.Drawing.Point(77, 121);
            this.versiontxt.Name = "versiontxt";
            this.versiontxt.ReadOnly = true;
            this.versiontxt.Size = new System.Drawing.Size(195, 20);
            this.versiontxt.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 124);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.serialTxt.Location = new System.Drawing.Point(77, 95);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(195, 20);
            this.serialTxt.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 98);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Serial No.:";
            // 
            // nameTxt
            // 
            this.nameTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.nameTxt.Location = new System.Drawing.Point(77, 52);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(195, 37);
            this.nameTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 55);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Name:";
            // 
            // attachedTxt
            // 
            this.attachedTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.attachedTxt.ForeColor = System.Drawing.Color.Black;
            this.attachedTxt.Location = new System.Drawing.Point(77, 26);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(195, 20);
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
            // motor1Grp
            // 
            this.motor1Grp.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.motor1Grp.Controls.Add(this.servoTypeCmb);
            this.motor1Grp.Controls.Add(this.label6);
            this.motor1Grp.Controls.Add(this.label10);
            this.motor1Grp.Controls.Add(this.label13);
            this.motor1Grp.Controls.Add(this.maxPosnTextBox);
            this.motor1Grp.Controls.Add(this.minPosnTextBox);
            this.motor1Grp.Controls.Add(this.minPosnTrackBar);
            this.motor1Grp.Controls.Add(this.label19);
            this.motor1Grp.Controls.Add(this.maxPosnTrackBar);
            this.motor1Grp.Controls.Add(this.label17);
            this.motor1Grp.Controls.Add(this.stoppedCheckBox);
            this.motor1Grp.Controls.Add(this.speedRampingCheckBox);
            this.motor1Grp.Controls.Add(this.engagedCheckBox);
            this.motor1Grp.Controls.Add(this.accelTxt);
            this.motor1Grp.Controls.Add(this.target_velocityTxt);
            this.motor1Grp.Controls.Add(this.target_positionTxt);
            this.motor1Grp.Controls.Add(this.actual_positionTxt);
            this.motor1Grp.Controls.Add(this.label16);
            this.motor1Grp.Controls.Add(this.label14);
            this.motor1Grp.Controls.Add(this.positionTrk);
            this.motor1Grp.Controls.Add(this.accelTrk);
            this.motor1Grp.Controls.Add(this.currentTxt);
            this.motor1Grp.Controls.Add(this.velocityTrk);
            this.motor1Grp.Controls.Add(this.label12);
            this.motor1Grp.Controls.Add(this.servoCmb);
            this.motor1Grp.Controls.Add(this.label11);
            this.motor1Grp.Controls.Add(this.actual_velocityTxt);
            this.motor1Grp.Controls.Add(this.label8);
            this.motor1Grp.Location = new System.Drawing.Point(13, 197);
            this.motor1Grp.Name = "motor1Grp";
            this.motor1Grp.Size = new System.Drawing.Size(287, 482);
            this.motor1Grp.TabIndex = 4;
            this.motor1Grp.TabStop = false;
            this.motor1Grp.Text = "Servo Data";
            // 
            // servoTypeCmb
            // 
            this.servoTypeCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.servoTypeCmb.Enabled = false;
            this.servoTypeCmb.FormattingEnabled = true;
            this.servoTypeCmb.Location = new System.Drawing.Point(94, 49);
            this.servoTypeCmb.Name = "servoTypeCmb";
            this.servoTypeCmb.Size = new System.Drawing.Size(178, 21);
            this.servoTypeCmb.TabIndex = 42;
            this.servoTypeCmb.SelectedIndexChanged += new System.EventHandler(this.servoTypeCmb_SelectedIndexChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 52);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(34, 13);
            this.label6.TabIndex = 41;
            this.label6.Text = "Type:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 253);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(66, 13);
            this.label10.TabIndex = 7;
            this.label10.Text = "Set Velocity:";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 308);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(88, 13);
            this.label13.TabIndex = 12;
            this.label13.Text = "Set Acceleration:";
            // 
            // maxPosnTextBox
            // 
            this.maxPosnTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.maxPosnTextBox.Location = new System.Drawing.Point(217, 379);
            this.maxPosnTextBox.Name = "maxPosnTextBox";
            this.maxPosnTextBox.ReadOnly = true;
            this.maxPosnTextBox.Size = new System.Drawing.Size(55, 20);
            this.maxPosnTextBox.TabIndex = 36;
            // 
            // minPosnTextBox
            // 
            this.minPosnTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.minPosnTextBox.Location = new System.Drawing.Point(217, 434);
            this.minPosnTextBox.Name = "minPosnTextBox";
            this.minPosnTextBox.ReadOnly = true;
            this.minPosnTextBox.Size = new System.Drawing.Size(55, 20);
            this.minPosnTextBox.TabIndex = 40;
            // 
            // minPosnTrackBar
            // 
            this.minPosnTrackBar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.minPosnTrackBar.Enabled = false;
            this.minPosnTrackBar.Location = new System.Drawing.Point(6, 434);
            this.minPosnTrackBar.Name = "minPosnTrackBar";
            this.minPosnTrackBar.Size = new System.Drawing.Size(205, 45);
            this.minPosnTrackBar.TabIndex = 38;
            this.minPosnTrackBar.TickFrequency = 5;
            this.minPosnTrackBar.Scroll += new System.EventHandler(this.minPosnTrackBar_Scroll);
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(6, 418);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(86, 13);
            this.label19.TabIndex = 37;
            this.label19.Text = "Set Min Position:";
            // 
            // maxPosnTrackBar
            // 
            this.maxPosnTrackBar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.maxPosnTrackBar.Enabled = false;
            this.maxPosnTrackBar.Location = new System.Drawing.Point(6, 379);
            this.maxPosnTrackBar.Name = "maxPosnTrackBar";
            this.maxPosnTrackBar.Size = new System.Drawing.Size(205, 45);
            this.maxPosnTrackBar.TabIndex = 34;
            this.maxPosnTrackBar.TickFrequency = 5;
            this.maxPosnTrackBar.Scroll += new System.EventHandler(this.maxPosnTrackBar_Scroll);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(6, 363);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(88, 13);
            this.label17.TabIndex = 33;
            this.label17.Text = "Set Max position:";
            // 
            // stoppedCheckBox
            // 
            this.stoppedCheckBox.AutoSize = true;
            this.stoppedCheckBox.Enabled = false;
            this.stoppedCheckBox.Location = new System.Drawing.Point(204, 166);
            this.stoppedCheckBox.Name = "stoppedCheckBox";
            this.stoppedCheckBox.Size = new System.Drawing.Size(66, 17);
            this.stoppedCheckBox.TabIndex = 32;
            this.stoppedCheckBox.Text = "Stopped";
            this.stoppedCheckBox.UseVisualStyleBackColor = true;
            // 
            // speedRampingCheckBox
            // 
            this.speedRampingCheckBox.AutoSize = true;
            this.speedRampingCheckBox.Enabled = false;
            this.speedRampingCheckBox.Location = new System.Drawing.Point(94, 166);
            this.speedRampingCheckBox.Name = "speedRampingCheckBox";
            this.speedRampingCheckBox.Size = new System.Drawing.Size(102, 17);
            this.speedRampingCheckBox.TabIndex = 31;
            this.speedRampingCheckBox.Text = "Speed Ramping";
            this.speedRampingCheckBox.UseVisualStyleBackColor = true;
            this.speedRampingCheckBox.CheckedChanged += new System.EventHandler(this.speedRampingCheckBox_CheckedChanged);
            // 
            // engagedCheckBox
            // 
            this.engagedCheckBox.AutoSize = true;
            this.engagedCheckBox.Enabled = false;
            this.engagedCheckBox.Location = new System.Drawing.Point(17, 166);
            this.engagedCheckBox.Name = "engagedCheckBox";
            this.engagedCheckBox.Size = new System.Drawing.Size(69, 17);
            this.engagedCheckBox.TabIndex = 30;
            this.engagedCheckBox.Text = "Engaged";
            this.engagedCheckBox.UseVisualStyleBackColor = true;
            this.engagedCheckBox.CheckedChanged += new System.EventHandler(this.engagedCheckBox_CheckedChanged);
            // 
            // accelTxt
            // 
            this.accelTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.accelTxt.Location = new System.Drawing.Point(217, 324);
            this.accelTxt.Name = "accelTxt";
            this.accelTxt.ReadOnly = true;
            this.accelTxt.Size = new System.Drawing.Size(55, 20);
            this.accelTxt.TabIndex = 27;
            // 
            // target_velocityTxt
            // 
            this.target_velocityTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.target_velocityTxt.Location = new System.Drawing.Point(217, 269);
            this.target_velocityTxt.Name = "target_velocityTxt";
            this.target_velocityTxt.ReadOnly = true;
            this.target_velocityTxt.Size = new System.Drawing.Size(55, 20);
            this.target_velocityTxt.TabIndex = 25;
            // 
            // target_positionTxt
            // 
            this.target_positionTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.target_positionTxt.Location = new System.Drawing.Point(217, 214);
            this.target_positionTxt.Name = "target_positionTxt";
            this.target_positionTxt.ReadOnly = true;
            this.target_positionTxt.Size = new System.Drawing.Size(55, 20);
            this.target_positionTxt.TabIndex = 23;
            // 
            // actual_positionTxt
            // 
            this.actual_positionTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.actual_positionTxt.Location = new System.Drawing.Point(94, 102);
            this.actual_positionTxt.Name = "actual_positionTxt";
            this.actual_positionTxt.ReadOnly = true;
            this.actual_positionTxt.Size = new System.Drawing.Size(178, 20);
            this.actual_positionTxt.TabIndex = 19;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(6, 105);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(80, 13);
            this.label16.TabIndex = 18;
            this.label16.Text = "Actual Position:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(6, 198);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(100, 13);
            this.label14.TabIndex = 15;
            this.label14.Text = "Set Target Position:";
            // 
            // positionTrk
            // 
            this.positionTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.positionTrk.Enabled = false;
            this.positionTrk.LargeChange = 500;
            this.positionTrk.Location = new System.Drawing.Point(6, 214);
            this.positionTrk.Name = "positionTrk";
            this.positionTrk.Size = new System.Drawing.Size(206, 45);
            this.positionTrk.TabIndex = 14;
            this.positionTrk.TickFrequency = 500;
            this.positionTrk.Scroll += new System.EventHandler(this.positionTrk_Scroll);
            // 
            // accelTrk
            // 
            this.accelTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.accelTrk.Enabled = false;
            this.accelTrk.LargeChange = 10000;
            this.accelTrk.Location = new System.Drawing.Point(6, 324);
            this.accelTrk.Name = "accelTrk";
            this.accelTrk.Size = new System.Drawing.Size(205, 45);
            this.accelTrk.TabIndex = 13;
            this.accelTrk.TickFrequency = 10000;
            this.accelTrk.Scroll += new System.EventHandler(this.accelTrk_Scroll);
            // 
            // currentTxt
            // 
            this.currentTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.currentTxt.Location = new System.Drawing.Point(94, 128);
            this.currentTxt.Name = "currentTxt";
            this.currentTxt.ReadOnly = true;
            this.currentTxt.Size = new System.Drawing.Size(178, 20);
            this.currentTxt.TabIndex = 11;
            // 
            // velocityTrk
            // 
            this.velocityTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.velocityTrk.Enabled = false;
            this.velocityTrk.LargeChange = 10;
            this.velocityTrk.Location = new System.Drawing.Point(6, 269);
            this.velocityTrk.Name = "velocityTrk";
            this.velocityTrk.Size = new System.Drawing.Size(206, 45);
            this.velocityTrk.TabIndex = 6;
            this.velocityTrk.TickFrequency = 10;
            this.velocityTrk.Scroll += new System.EventHandler(this.velocityTrk_Scroll);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(6, 131);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(44, 13);
            this.label12.TabIndex = 10;
            this.label12.Text = "Current:";
            // 
            // servoCmb
            // 
            this.servoCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.servoCmb.Enabled = false;
            this.servoCmb.FormattingEnabled = true;
            this.servoCmb.Location = new System.Drawing.Point(159, 19);
            this.servoCmb.Name = "servoCmb";
            this.servoCmb.Size = new System.Drawing.Size(48, 21);
            this.servoCmb.TabIndex = 9;
            this.servoCmb.SelectedIndexChanged += new System.EventHandler(this.servoCmb_SelectedIndexChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(79, 22);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(77, 13);
            this.label11.TabIndex = 8;
            this.label11.Text = "Choose Servo:";
            // 
            // actual_velocityTxt
            // 
            this.actual_velocityTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.actual_velocityTxt.Location = new System.Drawing.Point(94, 76);
            this.actual_velocityTxt.Name = "actual_velocityTxt";
            this.actual_velocityTxt.ReadOnly = true;
            this.actual_velocityTxt.Size = new System.Drawing.Size(178, 20);
            this.actual_velocityTxt.TabIndex = 3;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 79);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(80, 13);
            this.label8.TabIndex = 2;
            this.label8.Text = "Actual Velocity:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(313, 691);
            this.Controls.Add(this.motor1Grp);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MinimumSize = new System.Drawing.Size(321, 686);
            this.Name = "Form1";
            this.Text = "AdvancedServo-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.motor1Grp.ResumeLayout(false);
            this.motor1Grp.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.minPosnTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.maxPosnTrackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox numServosTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox versiontxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox motor1Grp;
        private System.Windows.Forms.TextBox actual_positionTxt;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TrackBar positionTrk;
        private System.Windows.Forms.TrackBar accelTrk;
        private System.Windows.Forms.TextBox currentTxt;
        private System.Windows.Forms.TrackBar velocityTrk;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.ComboBox servoCmb;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox actual_velocityTxt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox target_positionTxt;
        private System.Windows.Forms.TextBox accelTxt;
        private System.Windows.Forms.TextBox target_velocityTxt;
        private System.Windows.Forms.CheckBox speedRampingCheckBox;
        private System.Windows.Forms.CheckBox engagedCheckBox;
        private System.Windows.Forms.CheckBox stoppedCheckBox;
        private System.Windows.Forms.TextBox minPosnTextBox;
        private System.Windows.Forms.TrackBar minPosnTrackBar;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.TextBox maxPosnTextBox;
        private System.Windows.Forms.TrackBar maxPosnTrackBar;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.ComboBox servoTypeCmb;
        private System.Windows.Forms.Label label6;
    }
}

