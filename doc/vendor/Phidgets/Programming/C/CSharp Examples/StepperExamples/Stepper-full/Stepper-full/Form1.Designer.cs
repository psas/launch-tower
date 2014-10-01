namespace Stepper_full
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
            this.numSteppersTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.versiontxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.motorDataGrp = new System.Windows.Forms.GroupBox();
            this.label17 = new System.Windows.Forms.Label();
            this.velocityTxt = new System.Windows.Forms.TextBox();
            this.currentLbl = new System.Windows.Forms.Label();
            this.currentLimitTrkLbl = new System.Windows.Forms.Label();
            this.stoppedCheckBox = new System.Windows.Forms.CheckBox();
            this.engagedCheckBox = new System.Windows.Forms.CheckBox();
            this.label7 = new System.Windows.Forms.Label();
            this.currentPositionTrk = new System.Windows.Forms.TrackBar();
            this.targetPositionTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.currentLimitTxt = new System.Windows.Forms.TextBox();
            this.positionTxt = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.positionTrk = new System.Windows.Forms.TrackBar();
            this.accelTrk = new System.Windows.Forms.TrackBar();
            this.currentTxt = new System.Windows.Forms.TextBox();
            this.velocityTrk = new System.Windows.Forms.TrackBar();
            this.currentLimitLbl = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.stepperCmb = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.accelTxt = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.velocityLimitTxt = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.currentLimitTrk = new System.Windows.Forms.TrackBar();
            this.inputsGrp = new System.Windows.Forms.GroupBox();
            this.input3Chk = new System.Windows.Forms.CheckBox();
            this.input2Chk = new System.Windows.Forms.CheckBox();
            this.input1Chk = new System.Windows.Forms.CheckBox();
            this.input0Chk = new System.Windows.Forms.CheckBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.groupBox1.SuspendLayout();
            this.motorDataGrp.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.currentPositionTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.currentLimitTrk)).BeginInit();
            this.inputsGrp.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.numSteppersTxt);
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
            this.groupBox1.Size = new System.Drawing.Size(319, 173);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Stepper Control Details";
            // 
            // numSteppersTxt
            // 
            this.numSteppersTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.numSteppersTxt.Location = new System.Drawing.Point(82, 140);
            this.numSteppersTxt.Name = "numSteppersTxt";
            this.numSteppersTxt.ReadOnly = true;
            this.numSteppersTxt.Size = new System.Drawing.Size(222, 20);
            this.numSteppersTxt.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 143);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "# Steppers:";
            // 
            // versiontxt
            // 
            this.versiontxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.versiontxt.Location = new System.Drawing.Point(82, 114);
            this.versiontxt.Name = "versiontxt";
            this.versiontxt.ReadOnly = true;
            this.versiontxt.Size = new System.Drawing.Size(222, 20);
            this.versiontxt.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 117);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.serialTxt.Location = new System.Drawing.Point(82, 88);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(222, 20);
            this.serialTxt.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Serial No.:";
            // 
            // nameTxt
            // 
            this.nameTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.nameTxt.Location = new System.Drawing.Point(82, 45);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(222, 37);
            this.nameTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 48);
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
            this.attachedTxt.Location = new System.Drawing.Point(82, 19);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(222, 20);
            this.attachedTxt.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // motorDataGrp
            // 
            this.motorDataGrp.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.motorDataGrp.Controls.Add(this.label13);
            this.motorDataGrp.Controls.Add(this.label17);
            this.motorDataGrp.Controls.Add(this.velocityTxt);
            this.motorDataGrp.Controls.Add(this.currentLbl);
            this.motorDataGrp.Controls.Add(this.currentLimitTrkLbl);
            this.motorDataGrp.Controls.Add(this.stoppedCheckBox);
            this.motorDataGrp.Controls.Add(this.engagedCheckBox);
            this.motorDataGrp.Controls.Add(this.label7);
            this.motorDataGrp.Controls.Add(this.currentPositionTrk);
            this.motorDataGrp.Controls.Add(this.targetPositionTxt);
            this.motorDataGrp.Controls.Add(this.label6);
            this.motorDataGrp.Controls.Add(this.currentLimitTxt);
            this.motorDataGrp.Controls.Add(this.positionTxt);
            this.motorDataGrp.Controls.Add(this.label16);
            this.motorDataGrp.Controls.Add(this.label14);
            this.motorDataGrp.Controls.Add(this.positionTrk);
            this.motorDataGrp.Controls.Add(this.accelTrk);
            this.motorDataGrp.Controls.Add(this.currentTxt);
            this.motorDataGrp.Controls.Add(this.velocityTrk);
            this.motorDataGrp.Controls.Add(this.currentLimitLbl);
            this.motorDataGrp.Controls.Add(this.stepperCmb);
            this.motorDataGrp.Controls.Add(this.label10);
            this.motorDataGrp.Controls.Add(this.label11);
            this.motorDataGrp.Controls.Add(this.accelTxt);
            this.motorDataGrp.Controls.Add(this.label9);
            this.motorDataGrp.Controls.Add(this.velocityLimitTxt);
            this.motorDataGrp.Controls.Add(this.label8);
            this.motorDataGrp.Controls.Add(this.currentLimitTrk);
            this.motorDataGrp.Location = new System.Drawing.Point(12, 191);
            this.motorDataGrp.Name = "motorDataGrp";
            this.motorDataGrp.Size = new System.Drawing.Size(319, 491);
            this.motorDataGrp.TabIndex = 3;
            this.motorDataGrp.TabStop = false;
            this.motorDataGrp.Text = "Motor Data";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(180, 57);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(40, 13);
            this.label17.TabIndex = 31;
            this.label17.Text = "Actual:";
            // 
            // velocityTxt
            // 
            this.velocityTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.velocityTxt.Location = new System.Drawing.Point(225, 54);
            this.velocityTxt.Name = "velocityTxt";
            this.velocityTxt.ReadOnly = true;
            this.velocityTxt.Size = new System.Drawing.Size(80, 20);
            this.velocityTxt.TabIndex = 30;
            // 
            // currentLbl
            // 
            this.currentLbl.AutoSize = true;
            this.currentLbl.Location = new System.Drawing.Point(179, 135);
            this.currentLbl.Name = "currentLbl";
            this.currentLbl.Size = new System.Drawing.Size(40, 13);
            this.currentLbl.TabIndex = 29;
            this.currentLbl.Text = "Actual:";
            // 
            // currentLimitTrkLbl
            // 
            this.currentLimitTrkLbl.AutoSize = true;
            this.currentLimitTrkLbl.Location = new System.Drawing.Point(6, 430);
            this.currentLimitTrkLbl.Name = "currentLimitTrkLbl";
            this.currentLimitTrkLbl.Size = new System.Drawing.Size(68, 13);
            this.currentLimitTrkLbl.TabIndex = 17;
            this.currentLimitTrkLbl.Text = "Current Limit:";
            // 
            // stoppedCheckBox
            // 
            this.stoppedCheckBox.AutoSize = true;
            this.stoppedCheckBox.Enabled = false;
            this.stoppedCheckBox.Location = new System.Drawing.Point(185, 174);
            this.stoppedCheckBox.Name = "stoppedCheckBox";
            this.stoppedCheckBox.Size = new System.Drawing.Size(66, 17);
            this.stoppedCheckBox.TabIndex = 28;
            this.stoppedCheckBox.Text = "Stopped";
            this.stoppedCheckBox.UseVisualStyleBackColor = true;
            // 
            // engagedCheckBox
            // 
            this.engagedCheckBox.AutoSize = true;
            this.engagedCheckBox.Enabled = false;
            this.engagedCheckBox.Location = new System.Drawing.Point(67, 174);
            this.engagedCheckBox.Name = "engagedCheckBox";
            this.engagedCheckBox.Size = new System.Drawing.Size(69, 17);
            this.engagedCheckBox.TabIndex = 27;
            this.engagedCheckBox.Text = "Engaged";
            this.engagedCheckBox.UseVisualStyleBackColor = true;
            this.engagedCheckBox.CheckedChanged += new System.EventHandler(this.engagedCheckBox_CheckedChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 375);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(84, 13);
            this.label7.TabIndex = 25;
            this.label7.Text = "Current Position:";
            // 
            // currentPositionTrk
            // 
            this.currentPositionTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.currentPositionTrk.Enabled = false;
            this.currentPositionTrk.Location = new System.Drawing.Point(6, 391);
            this.currentPositionTrk.Name = "currentPositionTrk";
            this.currentPositionTrk.Size = new System.Drawing.Size(307, 45);
            this.currentPositionTrk.TabIndex = 24;
            this.currentPositionTrk.Scroll += new System.EventHandler(this.currentPositionTrk_Scroll);
            // 
            // targetPositionTxt
            // 
            this.targetPositionTxt.Location = new System.Drawing.Point(93, 106);
            this.targetPositionTxt.Name = "targetPositionTxt";
            this.targetPositionTxt.ReadOnly = true;
            this.targetPositionTxt.Size = new System.Drawing.Size(80, 20);
            this.targetPositionTxt.TabIndex = 23;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 109);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(81, 13);
            this.label6.TabIndex = 22;
            this.label6.Text = "Position Target:";
            // 
            // currentLimitTxt
            // 
            this.currentLimitTxt.Location = new System.Drawing.Point(93, 132);
            this.currentLimitTxt.Name = "currentLimitTxt";
            this.currentLimitTxt.ReadOnly = true;
            this.currentLimitTxt.Size = new System.Drawing.Size(80, 20);
            this.currentLimitTxt.TabIndex = 21;
            // 
            // positionTxt
            // 
            this.positionTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.positionTxt.Location = new System.Drawing.Point(225, 106);
            this.positionTxt.Name = "positionTxt";
            this.positionTxt.ReadOnly = true;
            this.positionTxt.Size = new System.Drawing.Size(80, 20);
            this.positionTxt.TabIndex = 19;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(179, 109);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(40, 13);
            this.label16.TabIndex = 18;
            this.label16.Text = "Actual:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(6, 320);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(81, 13);
            this.label14.TabIndex = 15;
            this.label14.Text = "Target Position:";
            // 
            // positionTrk
            // 
            this.positionTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.positionTrk.Enabled = false;
            this.positionTrk.Location = new System.Drawing.Point(6, 336);
            this.positionTrk.Name = "positionTrk";
            this.positionTrk.Size = new System.Drawing.Size(307, 45);
            this.positionTrk.TabIndex = 14;
            this.positionTrk.Scroll += new System.EventHandler(this.positionTrk_Scroll);
            // 
            // accelTrk
            // 
            this.accelTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.accelTrk.Enabled = false;
            this.accelTrk.Location = new System.Drawing.Point(6, 281);
            this.accelTrk.Name = "accelTrk";
            this.accelTrk.Size = new System.Drawing.Size(307, 45);
            this.accelTrk.TabIndex = 13;
            this.accelTrk.Scroll += new System.EventHandler(this.accelTrk_Scroll);
            // 
            // currentTxt
            // 
            this.currentTxt.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.currentTxt.Location = new System.Drawing.Point(225, 132);
            this.currentTxt.Name = "currentTxt";
            this.currentTxt.ReadOnly = true;
            this.currentTxt.Size = new System.Drawing.Size(80, 20);
            this.currentTxt.TabIndex = 11;
            // 
            // velocityTrk
            // 
            this.velocityTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.velocityTrk.Enabled = false;
            this.velocityTrk.Location = new System.Drawing.Point(6, 226);
            this.velocityTrk.Name = "velocityTrk";
            this.velocityTrk.Size = new System.Drawing.Size(307, 45);
            this.velocityTrk.TabIndex = 6;
            this.velocityTrk.Scroll += new System.EventHandler(this.velocityTrk_Scroll);
            // 
            // currentLimitLbl
            // 
            this.currentLimitLbl.AutoSize = true;
            this.currentLimitLbl.Location = new System.Drawing.Point(6, 135);
            this.currentLimitLbl.Name = "currentLimitLbl";
            this.currentLimitLbl.Size = new System.Drawing.Size(68, 13);
            this.currentLimitLbl.TabIndex = 10;
            this.currentLimitLbl.Text = "Current Limit:";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 265);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(69, 13);
            this.label13.TabIndex = 12;
            this.label13.Text = "Acceleration:";
            // 
            // stepperCmb
            // 
            this.stepperCmb.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.stepperCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.stepperCmb.Enabled = false;
            this.stepperCmb.FormattingEnabled = true;
            this.stepperCmb.Location = new System.Drawing.Point(156, 19);
            this.stepperCmb.Name = "stepperCmb";
            this.stepperCmb.Size = new System.Drawing.Size(129, 21);
            this.stepperCmb.TabIndex = 9;
            this.stepperCmb.SelectedIndexChanged += new System.EventHandler(this.stepperCmb_SelectedIndexChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 210);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(71, 13);
            this.label10.TabIndex = 7;
            this.label10.Text = "Velocity Limit:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(34, 22);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(116, 13);
            this.label11.TabIndex = 8;
            this.label11.Text = "Choose Stepper Motor:";
            // 
            // accelTxt
            // 
            this.accelTxt.Location = new System.Drawing.Point(93, 80);
            this.accelTxt.Name = "accelTxt";
            this.accelTxt.ReadOnly = true;
            this.accelTxt.Size = new System.Drawing.Size(80, 20);
            this.accelTxt.TabIndex = 5;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 83);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(69, 13);
            this.label9.TabIndex = 4;
            this.label9.Text = "Acceleration:";
            // 
            // velocityLimitTxt
            // 
            this.velocityLimitTxt.Location = new System.Drawing.Point(93, 54);
            this.velocityLimitTxt.Name = "velocityLimitTxt";
            this.velocityLimitTxt.ReadOnly = true;
            this.velocityLimitTxt.Size = new System.Drawing.Size(80, 20);
            this.velocityLimitTxt.TabIndex = 3;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 57);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(71, 13);
            this.label8.TabIndex = 2;
            this.label8.Text = "Velocity Limit:";
            // 
            // currentLimitTrk
            // 
            this.currentLimitTrk.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.currentLimitTrk.Enabled = false;
            this.currentLimitTrk.Location = new System.Drawing.Point(6, 446);
            this.currentLimitTrk.Name = "currentLimitTrk";
            this.currentLimitTrk.Size = new System.Drawing.Size(307, 45);
            this.currentLimitTrk.TabIndex = 16;
            this.currentLimitTrk.Scroll += new System.EventHandler(this.currentLimitTrk_Scroll);
            // 
            // inputsGrp
            // 
            this.inputsGrp.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.inputsGrp.Controls.Add(this.input3Chk);
            this.inputsGrp.Controls.Add(this.input2Chk);
            this.inputsGrp.Controls.Add(this.input1Chk);
            this.inputsGrp.Controls.Add(this.input0Chk);
            this.inputsGrp.Location = new System.Drawing.Point(12, 688);
            this.inputsGrp.Name = "inputsGrp";
            this.inputsGrp.Size = new System.Drawing.Size(319, 51);
            this.inputsGrp.TabIndex = 4;
            this.inputsGrp.TabStop = false;
            this.inputsGrp.Text = "Digital Inputs";
            // 
            // input3Chk
            // 
            this.input3Chk.AutoSize = true;
            this.input3Chk.Enabled = false;
            this.input3Chk.Location = new System.Drawing.Point(230, 20);
            this.input3Chk.Name = "input3Chk";
            this.input3Chk.Size = new System.Drawing.Size(59, 17);
            this.input3Chk.TabIndex = 3;
            this.input3Chk.Tag = "3";
            this.input3Chk.Text = "Input 3";
            this.input3Chk.UseVisualStyleBackColor = true;
            // 
            // input2Chk
            // 
            this.input2Chk.AutoSize = true;
            this.input2Chk.Enabled = false;
            this.input2Chk.Location = new System.Drawing.Point(163, 20);
            this.input2Chk.Name = "input2Chk";
            this.input2Chk.Size = new System.Drawing.Size(59, 17);
            this.input2Chk.TabIndex = 2;
            this.input2Chk.Tag = "2";
            this.input2Chk.Text = "Input 2";
            this.input2Chk.UseVisualStyleBackColor = true;
            // 
            // input1Chk
            // 
            this.input1Chk.AutoSize = true;
            this.input1Chk.Enabled = false;
            this.input1Chk.Location = new System.Drawing.Point(96, 20);
            this.input1Chk.Name = "input1Chk";
            this.input1Chk.Size = new System.Drawing.Size(59, 17);
            this.input1Chk.TabIndex = 1;
            this.input1Chk.Tag = "1";
            this.input1Chk.Text = "Input 1";
            this.input1Chk.UseVisualStyleBackColor = true;
            // 
            // input0Chk
            // 
            this.input0Chk.AutoSize = true;
            this.input0Chk.Enabled = false;
            this.input0Chk.Location = new System.Drawing.Point(29, 20);
            this.input0Chk.Name = "input0Chk";
            this.input0Chk.Size = new System.Drawing.Size(59, 17);
            this.input0Chk.TabIndex = 0;
            this.input0Chk.Tag = "0";
            this.input0Chk.Text = "Input 0";
            this.input0Chk.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(343, 744);
            this.Controls.Add(this.inputsGrp);
            this.Controls.Add(this.motorDataGrp);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(351, 778);
            this.MinimumSize = new System.Drawing.Size(351, 778);
            this.Name = "Form1";
            this.Text = "Stepper-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.motorDataGrp.ResumeLayout(false);
            this.motorDataGrp.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.currentPositionTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.accelTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.velocityTrk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.currentLimitTrk)).EndInit();
            this.inputsGrp.ResumeLayout(false);
            this.inputsGrp.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox numSteppersTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox versiontxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox motorDataGrp;
        private System.Windows.Forms.TrackBar accelTrk;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox currentTxt;
        private System.Windows.Forms.Label currentLimitLbl;
        private System.Windows.Forms.ComboBox stepperCmb;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TrackBar velocityTrk;
        private System.Windows.Forms.TextBox accelTxt;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox velocityLimitTxt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TrackBar positionTrk;
        private System.Windows.Forms.TrackBar currentLimitTrk;
        private System.Windows.Forms.Label currentLimitTrkLbl;
        private System.Windows.Forms.TextBox currentLimitTxt;
        private System.Windows.Forms.TextBox positionTxt;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox targetPositionTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox inputsGrp;
        private System.Windows.Forms.CheckBox input3Chk;
        private System.Windows.Forms.CheckBox input2Chk;
        private System.Windows.Forms.CheckBox input1Chk;
        private System.Windows.Forms.CheckBox input0Chk;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TrackBar currentPositionTrk;
        private System.Windows.Forms.CheckBox stoppedCheckBox;
        private System.Windows.Forms.CheckBox engagedCheckBox;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox velocityTxt;
        private System.Windows.Forms.Label currentLbl;
        private System.Windows.Forms.Timer timer1;

    }
}

