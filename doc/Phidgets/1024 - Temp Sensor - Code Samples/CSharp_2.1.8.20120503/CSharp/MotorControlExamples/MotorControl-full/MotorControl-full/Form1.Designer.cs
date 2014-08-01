namespace MotorControl_full
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.numSensorsTxt = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.numEncodersTxt = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.numInputsTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.numMotorsTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.versiontxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.digitalInputsGroup = new System.Windows.Forms.GroupBox();
            this.input3Chk = new System.Windows.Forms.CheckBox();
            this.input2Chk = new System.Windows.Forms.CheckBox();
            this.input1Chk = new System.Windows.Forms.CheckBox();
            this.input0Chk = new System.Windows.Forms.CheckBox();
            this.motorsGroup = new System.Windows.Forms.GroupBox();
            this.brakingTrk = new System.Windows.Forms.TrackBar();
            this.label18 = new System.Windows.Forms.Label();
            this.brakingTxt = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.backEmfSensingCheck = new System.Windows.Forms.CheckBox();
            this.backEmfTxt = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.accelTrk = new System.Windows.Forms.TrackBar();
            this.label13 = new System.Windows.Forms.Label();
            this.cChangeTxt = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.motorCmb = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.velocityTrk = new System.Windows.Forms.TrackBar();
            this.AccelTxt = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.vMaxTxt = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.vCurrentTxt = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.encodersGroup = new System.Windows.Forms.GroupBox();
            this.resetEncoderButton = new System.Windows.Forms.Button();
            this.encoderPosition = new System.Windows.Forms.TextBox();
            this.label19 = new System.Windows.Forms.Label();
            this.sensorsGroup = new System.Windows.Forms.GroupBox();
            this.ratiometricCheck = new System.Windows.Forms.CheckBox();
            this.sensor0Txt = new System.Windows.Forms.TextBox();
            this.label20 = new System.Windows.Forms.Label();
            this.sensor1Txt = new System.Windows.Forms.TextBox();
            this.label21 = new System.Windows.Forms.Label();
            this.voltageTxt = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.supplyVoltageTimer = new System.Windows.Forms.Timer(this.components);
            this.groupBox1.SuspendLayout();
            this.digitalInputsGroup.SuspendLayout();
            this.motorsGroup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.brakingTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).BeginInit();
            this.encodersGroup.SuspendLayout();
            this.sensorsGroup.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.numSensorsTxt);
            this.groupBox1.Controls.Add(this.label14);
            this.groupBox1.Controls.Add(this.numEncodersTxt);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.numInputsTxt);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.numMotorsTxt);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.versiontxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(306, 183);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "MotorControl Details";
            // 
            // numSensorsTxt
            // 
            this.numSensorsTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.numSensorsTxt.Location = new System.Drawing.Point(243, 154);
            this.numSensorsTxt.Name = "numSensorsTxt";
            this.numSensorsTxt.ReadOnly = true;
            this.numSensorsTxt.Size = new System.Drawing.Size(53, 20);
            this.numSensorsTxt.TabIndex = 15;
            this.numSensorsTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label14
            // 
            this.label14.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(179, 157);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(58, 13);
            this.label14.TabIndex = 14;
            this.label14.Text = "# Sensors:";
            // 
            // numEncodersTxt
            // 
            this.numEncodersTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.numEncodersTxt.Location = new System.Drawing.Point(243, 128);
            this.numEncodersTxt.Name = "numEncodersTxt";
            this.numEncodersTxt.ReadOnly = true;
            this.numEncodersTxt.Size = new System.Drawing.Size(53, 20);
            this.numEncodersTxt.TabIndex = 13;
            this.numEncodersTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label15
            // 
            this.label15.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(172, 131);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(65, 13);
            this.label15.TabIndex = 12;
            this.label15.Text = "# Encoders:";
            // 
            // numInputsTxt
            // 
            this.numInputsTxt.Location = new System.Drawing.Point(68, 154);
            this.numInputsTxt.Name = "numInputsTxt";
            this.numInputsTxt.ReadOnly = true;
            this.numInputsTxt.Size = new System.Drawing.Size(53, 20);
            this.numInputsTxt.TabIndex = 11;
            this.numInputsTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(13, 157);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(49, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "# Inputs:";
            // 
            // numMotorsTxt
            // 
            this.numMotorsTxt.Location = new System.Drawing.Point(68, 128);
            this.numMotorsTxt.Name = "numMotorsTxt";
            this.numMotorsTxt.ReadOnly = true;
            this.numMotorsTxt.Size = new System.Drawing.Size(53, 20);
            this.numMotorsTxt.TabIndex = 9;
            this.numMotorsTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 131);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(52, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "# Motors:";
            // 
            // versiontxt
            // 
            this.versiontxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.versiontxt.Location = new System.Drawing.Point(243, 102);
            this.versiontxt.Name = "versiontxt";
            this.versiontxt.ReadOnly = true;
            this.versiontxt.Size = new System.Drawing.Size(53, 20);
            this.versiontxt.TabIndex = 7;
            this.versiontxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label4
            // 
            this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(192, 105);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(68, 102);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(53, 20);
            this.serialTxt.TabIndex = 5;
            this.serialTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Serial No.:";
            // 
            // nameTxt
            // 
            this.nameTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.nameTxt.Location = new System.Drawing.Point(68, 48);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(228, 48);
            this.nameTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Name:";
            // 
            // attachedTxt
            // 
            this.attachedTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.attachedTxt.Location = new System.Drawing.Point(68, 22);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(228, 20);
            this.attachedTxt.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // digitalInputsGroup
            // 
            this.digitalInputsGroup.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.digitalInputsGroup.Controls.Add(this.input3Chk);
            this.digitalInputsGroup.Controls.Add(this.input2Chk);
            this.digitalInputsGroup.Controls.Add(this.input1Chk);
            this.digitalInputsGroup.Controls.Add(this.input0Chk);
            this.digitalInputsGroup.Location = new System.Drawing.Point(12, 496);
            this.digitalInputsGroup.Name = "digitalInputsGroup";
            this.digitalInputsGroup.Size = new System.Drawing.Size(306, 46);
            this.digitalInputsGroup.TabIndex = 1;
            this.digitalInputsGroup.TabStop = false;
            this.digitalInputsGroup.Text = "Digital Inputs";
            this.digitalInputsGroup.Visible = false;
            // 
            // input3Chk
            // 
            this.input3Chk.AutoCheck = false;
            this.input3Chk.AutoSize = true;
            this.input3Chk.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.input3Chk.Location = new System.Drawing.Point(120, 19);
            this.input3Chk.Name = "input3Chk";
            this.input3Chk.Size = new System.Drawing.Size(32, 17);
            this.input3Chk.TabIndex = 3;
            this.input3Chk.Tag = "3";
            this.input3Chk.Text = "3";
            this.input3Chk.UseVisualStyleBackColor = true;
            this.input3Chk.Visible = false;
            // 
            // input2Chk
            // 
            this.input2Chk.AutoCheck = false;
            this.input2Chk.AutoSize = true;
            this.input2Chk.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.input2Chk.Location = new System.Drawing.Point(82, 19);
            this.input2Chk.Name = "input2Chk";
            this.input2Chk.Size = new System.Drawing.Size(32, 17);
            this.input2Chk.TabIndex = 2;
            this.input2Chk.Tag = "2";
            this.input2Chk.Text = "2";
            this.input2Chk.UseVisualStyleBackColor = true;
            this.input2Chk.Visible = false;
            // 
            // input1Chk
            // 
            this.input1Chk.AutoCheck = false;
            this.input1Chk.AutoSize = true;
            this.input1Chk.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.input1Chk.Location = new System.Drawing.Point(44, 19);
            this.input1Chk.Name = "input1Chk";
            this.input1Chk.Size = new System.Drawing.Size(32, 17);
            this.input1Chk.TabIndex = 1;
            this.input1Chk.Tag = "1";
            this.input1Chk.Text = "1";
            this.input1Chk.UseVisualStyleBackColor = true;
            this.input1Chk.Visible = false;
            // 
            // input0Chk
            // 
            this.input0Chk.AutoCheck = false;
            this.input0Chk.AutoSize = true;
            this.input0Chk.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.input0Chk.Location = new System.Drawing.Point(6, 19);
            this.input0Chk.Name = "input0Chk";
            this.input0Chk.Size = new System.Drawing.Size(32, 17);
            this.input0Chk.TabIndex = 0;
            this.input0Chk.Tag = "0";
            this.input0Chk.Text = "0";
            this.input0Chk.UseVisualStyleBackColor = true;
            this.input0Chk.Visible = false;
            // 
            // motorsGroup
            // 
            this.motorsGroup.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.motorsGroup.Controls.Add(this.voltageTxt);
            this.motorsGroup.Controls.Add(this.label22);
            this.motorsGroup.Controls.Add(this.brakingTrk);
            this.motorsGroup.Controls.Add(this.label18);
            this.motorsGroup.Controls.Add(this.brakingTxt);
            this.motorsGroup.Controls.Add(this.label17);
            this.motorsGroup.Controls.Add(this.backEmfSensingCheck);
            this.motorsGroup.Controls.Add(this.backEmfTxt);
            this.motorsGroup.Controls.Add(this.label16);
            this.motorsGroup.Controls.Add(this.accelTrk);
            this.motorsGroup.Controls.Add(this.label13);
            this.motorsGroup.Controls.Add(this.cChangeTxt);
            this.motorsGroup.Controls.Add(this.label12);
            this.motorsGroup.Controls.Add(this.motorCmb);
            this.motorsGroup.Controls.Add(this.label11);
            this.motorsGroup.Controls.Add(this.label10);
            this.motorsGroup.Controls.Add(this.velocityTrk);
            this.motorsGroup.Controls.Add(this.AccelTxt);
            this.motorsGroup.Controls.Add(this.label9);
            this.motorsGroup.Controls.Add(this.vMaxTxt);
            this.motorsGroup.Controls.Add(this.label8);
            this.motorsGroup.Controls.Add(this.vCurrentTxt);
            this.motorsGroup.Controls.Add(this.label7);
            this.motorsGroup.Location = new System.Drawing.Point(12, 201);
            this.motorsGroup.Name = "motorsGroup";
            this.motorsGroup.Size = new System.Drawing.Size(306, 289);
            this.motorsGroup.TabIndex = 2;
            this.motorsGroup.TabStop = false;
            this.motorsGroup.Text = "Motors";
            // 
            // brakingTrk
            // 
            this.brakingTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.brakingTrk.Enabled = false;
            this.brakingTrk.LargeChange = 10;
            this.brakingTrk.Location = new System.Drawing.Point(96, 241);
            this.brakingTrk.Maximum = 100;
            this.brakingTrk.Name = "brakingTrk";
            this.brakingTrk.Size = new System.Drawing.Size(204, 45);
            this.brakingTrk.TabIndex = 20;
            this.brakingTrk.TickFrequency = 10;
            this.brakingTrk.Scroll += new System.EventHandler(this.brakingTrk_Scroll);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(44, 245);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(46, 13);
            this.label18.TabIndex = 19;
            this.label18.Text = "Braking:";
            // 
            // brakingTxt
            // 
            this.brakingTxt.Location = new System.Drawing.Point(96, 138);
            this.brakingTxt.Name = "brakingTxt";
            this.brakingTxt.ReadOnly = true;
            this.brakingTxt.Size = new System.Drawing.Size(53, 20);
            this.brakingTxt.TabIndex = 18;
            this.brakingTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(44, 141);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(46, 13);
            this.label17.TabIndex = 17;
            this.label17.Text = "Braking:";
            // 
            // backEmfSensingCheck
            // 
            this.backEmfSensingCheck.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.backEmfSensingCheck.AutoSize = true;
            this.backEmfSensingCheck.Enabled = false;
            this.backEmfSensingCheck.Location = new System.Drawing.Point(183, 88);
            this.backEmfSensingCheck.Name = "backEmfSensingCheck";
            this.backEmfSensingCheck.Size = new System.Drawing.Size(117, 17);
            this.backEmfSensingCheck.TabIndex = 16;
            this.backEmfSensingCheck.Text = "Back EMF Sensing";
            this.backEmfSensingCheck.UseVisualStyleBackColor = true;
            this.backEmfSensingCheck.CheckedChanged += new System.EventHandler(this.backEmfSensingCheck_CheckedChanged);
            // 
            // backEmfTxt
            // 
            this.backEmfTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.backEmfTxt.Location = new System.Drawing.Point(243, 112);
            this.backEmfTxt.Name = "backEmfTxt";
            this.backEmfTxt.ReadOnly = true;
            this.backEmfTxt.Size = new System.Drawing.Size(53, 20);
            this.backEmfTxt.TabIndex = 15;
            this.backEmfTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label16
            // 
            this.label16.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(177, 115);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(60, 13);
            this.label16.TabIndex = 14;
            this.label16.Text = "Back EMF:";
            // 
            // accelTrk
            // 
            this.accelTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.accelTrk.Enabled = false;
            this.accelTrk.Location = new System.Drawing.Point(96, 207);
            this.accelTrk.Name = "accelTrk";
            this.accelTrk.Size = new System.Drawing.Size(204, 45);
            this.accelTrk.TabIndex = 13;
            this.accelTrk.Scroll += new System.EventHandler(this.accelTrk_Scroll);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(24, 211);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(69, 13);
            this.label13.TabIndex = 12;
            this.label13.Text = "Acceleration:";
            // 
            // cChangeTxt
            // 
            this.cChangeTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cChangeTxt.Location = new System.Drawing.Point(243, 60);
            this.cChangeTxt.Name = "cChangeTxt";
            this.cChangeTxt.ReadOnly = true;
            this.cChangeTxt.Size = new System.Drawing.Size(53, 20);
            this.cChangeTxt.TabIndex = 11;
            this.cChangeTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label12
            // 
            this.label12.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(193, 63);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(44, 13);
            this.label12.TabIndex = 10;
            this.label12.Text = "Current:";
            // 
            // motorCmb
            // 
            this.motorCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.motorCmb.Enabled = false;
            this.motorCmb.FormattingEnabled = true;
            this.motorCmb.Location = new System.Drawing.Point(169, 19);
            this.motorCmb.Name = "motorCmb";
            this.motorCmb.Size = new System.Drawing.Size(50, 21);
            this.motorCmb.TabIndex = 9;
            this.motorCmb.SelectedIndexChanged += new System.EventHandler(this.motorCmb_SelectedIndexChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(87, 22);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(76, 13);
            this.label11.TabIndex = 8;
            this.label11.Text = "Choose Motor:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(9, 177);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(81, 13);
            this.label10.TabIndex = 7;
            this.label10.Text = "Target Velocity:";
            // 
            // velocityTrk
            // 
            this.velocityTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.velocityTrk.Enabled = false;
            this.velocityTrk.LargeChange = 10;
            this.velocityTrk.Location = new System.Drawing.Point(96, 173);
            this.velocityTrk.Maximum = 100;
            this.velocityTrk.Minimum = -100;
            this.velocityTrk.Name = "velocityTrk";
            this.velocityTrk.Size = new System.Drawing.Size(204, 45);
            this.velocityTrk.TabIndex = 6;
            this.velocityTrk.TickFrequency = 10;
            this.velocityTrk.Scroll += new System.EventHandler(this.velocityTrk_Scroll);
            // 
            // AccelTxt
            // 
            this.AccelTxt.Location = new System.Drawing.Point(96, 112);
            this.AccelTxt.Name = "AccelTxt";
            this.AccelTxt.ReadOnly = true;
            this.AccelTxt.Size = new System.Drawing.Size(53, 20);
            this.AccelTxt.TabIndex = 5;
            this.AccelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(21, 115);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(69, 13);
            this.label9.TabIndex = 4;
            this.label9.Text = "Acceleration:";
            // 
            // vMaxTxt
            // 
            this.vMaxTxt.Location = new System.Drawing.Point(96, 60);
            this.vMaxTxt.Name = "vMaxTxt";
            this.vMaxTxt.ReadOnly = true;
            this.vMaxTxt.Size = new System.Drawing.Size(53, 20);
            this.vMaxTxt.TabIndex = 3;
            this.vMaxTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 63);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(81, 13);
            this.label8.TabIndex = 2;
            this.label8.Text = "Target Velocity:";
            // 
            // vCurrentTxt
            // 
            this.vCurrentTxt.Location = new System.Drawing.Point(96, 86);
            this.vCurrentTxt.Name = "vCurrentTxt";
            this.vCurrentTxt.ReadOnly = true;
            this.vCurrentTxt.Size = new System.Drawing.Size(53, 20);
            this.vCurrentTxt.TabIndex = 1;
            this.vCurrentTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 89);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(84, 13);
            this.label7.TabIndex = 0;
            this.label7.Text = "Current Velocity:";
            // 
            // encodersGroup
            // 
            this.encodersGroup.Controls.Add(this.resetEncoderButton);
            this.encodersGroup.Controls.Add(this.encoderPosition);
            this.encodersGroup.Controls.Add(this.label19);
            this.encodersGroup.Location = new System.Drawing.Point(12, 548);
            this.encodersGroup.Name = "encodersGroup";
            this.encodersGroup.Size = new System.Drawing.Size(306, 48);
            this.encodersGroup.TabIndex = 3;
            this.encodersGroup.TabStop = false;
            this.encodersGroup.Text = "Encoder";
            this.encodersGroup.Visible = false;
            // 
            // resetEncoderButton
            // 
            this.resetEncoderButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.resetEncoderButton.Location = new System.Drawing.Point(243, 17);
            this.resetEncoderButton.Name = "resetEncoderButton";
            this.resetEncoderButton.Size = new System.Drawing.Size(57, 23);
            this.resetEncoderButton.TabIndex = 20;
            this.resetEncoderButton.Text = "Reset";
            this.resetEncoderButton.UseVisualStyleBackColor = true;
            this.resetEncoderButton.Click += new System.EventHandler(this.resetEncoderButton_Click);
            // 
            // encoderPosition
            // 
            this.encoderPosition.Location = new System.Drawing.Point(62, 20);
            this.encoderPosition.Name = "encoderPosition";
            this.encoderPosition.ReadOnly = true;
            this.encoderPosition.Size = new System.Drawing.Size(87, 20);
            this.encoderPosition.TabIndex = 19;
            this.encoderPosition.Tag = "0";
            this.encoderPosition.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(9, 23);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(47, 13);
            this.label19.TabIndex = 0;
            this.label19.Text = "Position:";
            // 
            // sensorsGroup
            // 
            this.sensorsGroup.Controls.Add(this.ratiometricCheck);
            this.sensorsGroup.Controls.Add(this.sensor0Txt);
            this.sensorsGroup.Controls.Add(this.label20);
            this.sensorsGroup.Controls.Add(this.sensor1Txt);
            this.sensorsGroup.Controls.Add(this.label21);
            this.sensorsGroup.Location = new System.Drawing.Point(12, 602);
            this.sensorsGroup.Name = "sensorsGroup";
            this.sensorsGroup.Size = new System.Drawing.Size(306, 47);
            this.sensorsGroup.TabIndex = 4;
            this.sensorsGroup.TabStop = false;
            this.sensorsGroup.Text = "Sensors";
            this.sensorsGroup.Visible = false;
            // 
            // ratiometricCheck
            // 
            this.ratiometricCheck.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.ratiometricCheck.AutoSize = true;
            this.ratiometricCheck.Location = new System.Drawing.Point(221, 18);
            this.ratiometricCheck.Name = "ratiometricCheck";
            this.ratiometricCheck.Size = new System.Drawing.Size(79, 17);
            this.ratiometricCheck.TabIndex = 96;
            this.ratiometricCheck.Text = "Ratiometric";
            this.ratiometricCheck.UseVisualStyleBackColor = true;
            this.ratiometricCheck.CheckedChanged += new System.EventHandler(this.ratiometricCheck_CheckedChanged);
            // 
            // sensor0Txt
            // 
            this.sensor0Txt.Location = new System.Drawing.Point(22, 16);
            this.sensor0Txt.Name = "sensor0Txt";
            this.sensor0Txt.ReadOnly = true;
            this.sensor0Txt.Size = new System.Drawing.Size(37, 20);
            this.sensor0Txt.TabIndex = 97;
            this.sensor0Txt.Tag = "0";
            this.sensor0Txt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(6, 19);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(13, 13);
            this.label20.TabIndex = 99;
            this.label20.Text = "0";
            // 
            // sensor1Txt
            // 
            this.sensor1Txt.Location = new System.Drawing.Point(90, 16);
            this.sensor1Txt.Name = "sensor1Txt";
            this.sensor1Txt.ReadOnly = true;
            this.sensor1Txt.Size = new System.Drawing.Size(37, 20);
            this.sensor1Txt.TabIndex = 98;
            this.sensor1Txt.Tag = "1";
            this.sensor1Txt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(74, 19);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(13, 13);
            this.label21.TabIndex = 100;
            this.label21.Text = "1";
            // 
            // voltageTxt
            // 
            this.voltageTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.voltageTxt.Location = new System.Drawing.Point(243, 138);
            this.voltageTxt.Name = "voltageTxt";
            this.voltageTxt.ReadOnly = true;
            this.voltageTxt.Size = new System.Drawing.Size(53, 20);
            this.voltageTxt.TabIndex = 22;
            this.voltageTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label22
            // 
            this.label22.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(156, 141);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(81, 13);
            this.label22.TabIndex = 21;
            this.label22.Text = "Supply Voltage:";
            // 
            // supplyVoltageTimer
            // 
            this.supplyVoltageTimer.Tick += new System.EventHandler(this.supplyVoltageTimer_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(330, 661);
            this.Controls.Add(this.sensorsGroup);
            this.Controls.Add(this.encodersGroup);
            this.Controls.Add(this.motorsGroup);
            this.Controls.Add(this.digitalInputsGroup);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(338, 695);
            this.MinimumSize = new System.Drawing.Size(338, 535);
            this.Name = "Form1";
            this.Text = "MotorControl-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.digitalInputsGroup.ResumeLayout(false);
            this.digitalInputsGroup.PerformLayout();
            this.motorsGroup.ResumeLayout(false);
            this.motorsGroup.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.brakingTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).EndInit();
            this.encodersGroup.ResumeLayout(false);
            this.encodersGroup.PerformLayout();
            this.sensorsGroup.ResumeLayout(false);
            this.sensorsGroup.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox versiontxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox numInputsTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox numMotorsTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox digitalInputsGroup;
        private System.Windows.Forms.CheckBox input3Chk;
        private System.Windows.Forms.CheckBox input2Chk;
        private System.Windows.Forms.CheckBox input1Chk;
        private System.Windows.Forms.CheckBox input0Chk;
        private System.Windows.Forms.GroupBox motorsGroup;
        private System.Windows.Forms.TextBox AccelTxt;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox vMaxTxt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox vCurrentTxt;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TrackBar velocityTrk;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox motorCmb;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox cChangeTxt;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TrackBar accelTrk;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox numSensorsTxt;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox numEncodersTxt;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox backEmfTxt;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.CheckBox backEmfSensingCheck;
        private System.Windows.Forms.TextBox brakingTxt;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TrackBar brakingTrk;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.GroupBox encodersGroup;
        private System.Windows.Forms.TextBox encoderPosition;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Button resetEncoderButton;
        private System.Windows.Forms.GroupBox sensorsGroup;
        private System.Windows.Forms.CheckBox ratiometricCheck;
        private System.Windows.Forms.TextBox sensor0Txt;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.TextBox sensor1Txt;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.TextBox voltageTxt;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Timer supplyVoltageTimer;
    }
}

