namespace Spatial_full
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
            this.groupBox9 = new System.Windows.Forms.GroupBox();
            this.dataRateTxt = new System.Windows.Forms.TextBox();
            this.dataRateTrack = new System.Windows.Forms.TrackBar();
            this.magFieldGraphBox = new System.Windows.Forms.GroupBox();
            this.magFieldView = new System.Windows.Forms.Panel();
            this.gyroBox = new System.Windows.Forms.GroupBox();
            this.headingZText = new System.Windows.Forms.TextBox();
            this.headingYText = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.headingXText = new System.Windows.Forms.TextBox();
            this.zeroGyroButton = new System.Windows.Forms.Button();
            this.compassBox = new System.Windows.Forms.GroupBox();
            this.compassXTxt = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.compassZTxt = new System.Windows.Forms.TextBox();
            this.pitchAngleTxt = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.bearingTxt = new System.Windows.Forms.TextBox();
            this.compassYTxt = new System.Windows.Forms.TextBox();
            this.label21 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.rollAngleTxt = new System.Windows.Forms.TextBox();
            this.gyroGraphBox = new System.Windows.Forms.GroupBox();
            this.gyroView = new System.Windows.Forms.Panel();
            this.accelGraphBox = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.accelBox = new System.Windows.Forms.GroupBox();
            this.xTextBox = new System.Windows.Forms.TextBox();
            this.zTextBox = new System.Windows.Forms.TextBox();
            this.yTextBox = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.compassAxesTextBox = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.gyroAxesTextBox = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.accelAxesTextBox = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.versionTxt = new System.Windows.Forms.TextBox();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.compassGraphBox = new System.Windows.Forms.GroupBox();
            this.compassView = new System.Windows.Forms.Panel();
            this.setCompassParamsButton = new System.Windows.Forms.Button();
            this.groupBox9.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataRateTrack)).BeginInit();
            this.magFieldGraphBox.SuspendLayout();
            this.gyroBox.SuspendLayout();
            this.compassBox.SuspendLayout();
            this.gyroGraphBox.SuspendLayout();
            this.gyroView.SuspendLayout();
            this.accelGraphBox.SuspendLayout();
            this.accelBox.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.compassGraphBox.SuspendLayout();
            this.compassView.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox9
            // 
            this.groupBox9.Controls.Add(this.dataRateTxt);
            this.groupBox9.Controls.Add(this.dataRateTrack);
            this.groupBox9.Location = new System.Drawing.Point(12, 267);
            this.groupBox9.Name = "groupBox9";
            this.groupBox9.Size = new System.Drawing.Size(268, 75);
            this.groupBox9.TabIndex = 58;
            this.groupBox9.TabStop = false;
            this.groupBox9.Text = "Data Rate";
            // 
            // dataRateTxt
            // 
            this.dataRateTxt.Location = new System.Drawing.Point(217, 29);
            this.dataRateTxt.Name = "dataRateTxt";
            this.dataRateTxt.ReadOnly = true;
            this.dataRateTxt.Size = new System.Drawing.Size(45, 20);
            this.dataRateTxt.TabIndex = 15;
            // 
            // dataRateTrack
            // 
            this.dataRateTrack.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dataRateTrack.Location = new System.Drawing.Point(10, 24);
            this.dataRateTrack.Name = "dataRateTrack";
            this.dataRateTrack.Size = new System.Drawing.Size(201, 45);
            this.dataRateTrack.TabIndex = 57;
            this.dataRateTrack.Scroll += new System.EventHandler(this.dataRateTrack_Scroll);
            // 
            // magFieldGraphBox
            // 
            this.magFieldGraphBox.Controls.Add(this.magFieldView);
            this.magFieldGraphBox.Location = new System.Drawing.Point(555, 12);
            this.magFieldGraphBox.Name = "magFieldGraphBox";
            this.magFieldGraphBox.Size = new System.Drawing.Size(263, 276);
            this.magFieldGraphBox.TabIndex = 57;
            this.magFieldGraphBox.TabStop = false;
            this.magFieldGraphBox.Text = "Magnetic Field Vector";
            this.magFieldGraphBox.Visible = false;
            // 
            // magFieldView
            // 
            this.magFieldView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.magFieldView.Location = new System.Drawing.Point(6, 19);
            this.magFieldView.Name = "magFieldView";
            this.magFieldView.Size = new System.Drawing.Size(251, 251);
            this.magFieldView.TabIndex = 48;
            // 
            // gyroBox
            // 
            this.gyroBox.Controls.Add(this.headingZText);
            this.gyroBox.Controls.Add(this.headingYText);
            this.gyroBox.Controls.Add(this.label18);
            this.gyroBox.Controls.Add(this.label19);
            this.gyroBox.Controls.Add(this.label20);
            this.gyroBox.Controls.Add(this.headingXText);
            this.gyroBox.Location = new System.Drawing.Point(151, 348);
            this.gyroBox.Name = "gyroBox";
            this.gyroBox.Size = new System.Drawing.Size(129, 108);
            this.gyroBox.TabIndex = 55;
            this.gyroBox.TabStop = false;
            this.gyroBox.Text = "Gyro Data";
            this.gyroBox.Visible = false;
            // 
            // headingZText
            // 
            this.headingZText.Location = new System.Drawing.Point(47, 74);
            this.headingZText.Name = "headingZText";
            this.headingZText.Size = new System.Drawing.Size(54, 20);
            this.headingZText.TabIndex = 70;
            this.headingZText.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // headingYText
            // 
            this.headingYText.Location = new System.Drawing.Point(47, 48);
            this.headingYText.Name = "headingYText";
            this.headingYText.Size = new System.Drawing.Size(54, 20);
            this.headingYText.TabIndex = 69;
            this.headingYText.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(27, 51);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(14, 13);
            this.label18.TabIndex = 67;
            this.label18.Text = "Y";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(27, 77);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(14, 13);
            this.label19.TabIndex = 66;
            this.label19.Text = "Z";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(27, 25);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(14, 13);
            this.label20.TabIndex = 65;
            this.label20.Text = "X";
            // 
            // headingXText
            // 
            this.headingXText.Location = new System.Drawing.Point(47, 22);
            this.headingXText.Name = "headingXText";
            this.headingXText.Size = new System.Drawing.Size(54, 20);
            this.headingXText.TabIndex = 56;
            this.headingXText.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // zeroGyroButton
            // 
            this.zeroGyroButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.zeroGyroButton.Location = new System.Drawing.Point(201, 225);
            this.zeroGyroButton.Name = "zeroGyroButton";
            this.zeroGyroButton.Size = new System.Drawing.Size(47, 23);
            this.zeroGyroButton.TabIndex = 62;
            this.zeroGyroButton.Text = "Zero";
            this.zeroGyroButton.UseVisualStyleBackColor = true;
            this.zeroGyroButton.Click += new System.EventHandler(this.zeroGyroButton_Click);
            // 
            // compassBox
            // 
            this.compassBox.Controls.Add(this.compassXTxt);
            this.compassBox.Controls.Add(this.label22);
            this.compassBox.Controls.Add(this.compassZTxt);
            this.compassBox.Controls.Add(this.pitchAngleTxt);
            this.compassBox.Controls.Add(this.label17);
            this.compassBox.Controls.Add(this.bearingTxt);
            this.compassBox.Controls.Add(this.compassYTxt);
            this.compassBox.Controls.Add(this.label21);
            this.compassBox.Controls.Add(this.label16);
            this.compassBox.Controls.Add(this.label5);
            this.compassBox.Controls.Add(this.label14);
            this.compassBox.Controls.Add(this.rollAngleTxt);
            this.compassBox.Location = new System.Drawing.Point(12, 462);
            this.compassBox.Name = "compassBox";
            this.compassBox.Size = new System.Drawing.Size(268, 108);
            this.compassBox.TabIndex = 56;
            this.compassBox.TabStop = false;
            this.compassBox.Text = "Compass Data";
            this.compassBox.Visible = false;
            // 
            // compassXTxt
            // 
            this.compassXTxt.Location = new System.Drawing.Point(47, 22);
            this.compassXTxt.Name = "compassXTxt";
            this.compassXTxt.Size = new System.Drawing.Size(54, 20);
            this.compassXTxt.TabIndex = 70;
            this.compassXTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label22
            // 
            this.label22.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(117, 25);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(63, 13);
            this.label22.TabIndex = 51;
            this.label22.Text = "Pitch angle:";
            // 
            // compassZTxt
            // 
            this.compassZTxt.Location = new System.Drawing.Point(47, 74);
            this.compassZTxt.Name = "compassZTxt";
            this.compassZTxt.Size = new System.Drawing.Size(54, 20);
            this.compassZTxt.TabIndex = 69;
            this.compassZTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // pitchAngleTxt
            // 
            this.pitchAngleTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.pitchAngleTxt.Location = new System.Drawing.Point(186, 22);
            this.pitchAngleTxt.Name = "pitchAngleTxt";
            this.pitchAngleTxt.Size = new System.Drawing.Size(54, 20);
            this.pitchAngleTxt.TabIndex = 52;
            this.pitchAngleTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(27, 25);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(14, 13);
            this.label17.TabIndex = 65;
            this.label17.Text = "X";
            // 
            // bearingTxt
            // 
            this.bearingTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bearingTxt.Location = new System.Drawing.Point(186, 74);
            this.bearingTxt.Name = "bearingTxt";
            this.bearingTxt.Size = new System.Drawing.Size(54, 20);
            this.bearingTxt.TabIndex = 56;
            this.bearingTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // compassYTxt
            // 
            this.compassYTxt.Location = new System.Drawing.Point(47, 48);
            this.compassYTxt.Name = "compassYTxt";
            this.compassYTxt.Size = new System.Drawing.Size(54, 20);
            this.compassYTxt.TabIndex = 68;
            this.compassYTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label21
            // 
            this.label21.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(123, 51);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(57, 13);
            this.label21.TabIndex = 53;
            this.label21.Text = "Roll angle:";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(27, 77);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(14, 13);
            this.label16.TabIndex = 66;
            this.label16.Text = "Z";
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(134, 77);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(46, 13);
            this.label5.TabIndex = 55;
            this.label5.Text = "Bearing:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(27, 51);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(14, 13);
            this.label14.TabIndex = 67;
            this.label14.Text = "Y";
            // 
            // rollAngleTxt
            // 
            this.rollAngleTxt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.rollAngleTxt.Location = new System.Drawing.Point(186, 48);
            this.rollAngleTxt.Name = "rollAngleTxt";
            this.rollAngleTxt.Size = new System.Drawing.Size(54, 20);
            this.rollAngleTxt.TabIndex = 54;
            this.rollAngleTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // gyroGraphBox
            // 
            this.gyroGraphBox.Controls.Add(this.gyroView);
            this.gyroGraphBox.Location = new System.Drawing.Point(286, 294);
            this.gyroGraphBox.Name = "gyroGraphBox";
            this.gyroGraphBox.Size = new System.Drawing.Size(263, 276);
            this.gyroGraphBox.TabIndex = 54;
            this.gyroGraphBox.TabStop = false;
            this.gyroGraphBox.Text = "Gyroscope Headings";
            this.gyroGraphBox.Visible = false;
            // 
            // gyroView
            // 
            this.gyroView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.gyroView.Controls.Add(this.zeroGyroButton);
            this.gyroView.Location = new System.Drawing.Point(6, 19);
            this.gyroView.Name = "gyroView";
            this.gyroView.Size = new System.Drawing.Size(251, 251);
            this.gyroView.TabIndex = 48;
            // 
            // accelGraphBox
            // 
            this.accelGraphBox.Controls.Add(this.panel1);
            this.accelGraphBox.Location = new System.Drawing.Point(286, 12);
            this.accelGraphBox.Name = "accelGraphBox";
            this.accelGraphBox.Size = new System.Drawing.Size(263, 276);
            this.accelGraphBox.TabIndex = 53;
            this.accelGraphBox.TabStop = false;
            this.accelGraphBox.Text = "Acceleration Vector";
            this.accelGraphBox.Visible = false;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Location = new System.Drawing.Point(6, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(251, 251);
            this.panel1.TabIndex = 6;
            // 
            // accelBox
            // 
            this.accelBox.Controls.Add(this.xTextBox);
            this.accelBox.Controls.Add(this.zTextBox);
            this.accelBox.Controls.Add(this.yTextBox);
            this.accelBox.Controls.Add(this.label13);
            this.accelBox.Controls.Add(this.label12);
            this.accelBox.Controls.Add(this.label10);
            this.accelBox.Location = new System.Drawing.Point(12, 348);
            this.accelBox.Name = "accelBox";
            this.accelBox.Size = new System.Drawing.Size(129, 108);
            this.accelBox.TabIndex = 52;
            this.accelBox.TabStop = false;
            this.accelBox.Text = "Acceleration Data";
            this.accelBox.Visible = false;
            // 
            // xTextBox
            // 
            this.xTextBox.Location = new System.Drawing.Point(47, 22);
            this.xTextBox.Name = "xTextBox";
            this.xTextBox.Size = new System.Drawing.Size(54, 20);
            this.xTextBox.TabIndex = 54;
            this.xTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // zTextBox
            // 
            this.zTextBox.Location = new System.Drawing.Point(47, 74);
            this.zTextBox.Name = "zTextBox";
            this.zTextBox.Size = new System.Drawing.Size(54, 20);
            this.zTextBox.TabIndex = 53;
            this.zTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yTextBox
            // 
            this.yTextBox.Location = new System.Drawing.Point(47, 48);
            this.yTextBox.Name = "yTextBox";
            this.yTextBox.Size = new System.Drawing.Size(54, 20);
            this.yTextBox.TabIndex = 51;
            this.yTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(27, 51);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(14, 13);
            this.label13.TabIndex = 50;
            this.label13.Text = "Y";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(27, 77);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(14, 13);
            this.label12.TabIndex = 49;
            this.label12.Text = "Z";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(27, 25);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(14, 13);
            this.label10.TabIndex = 47;
            this.label10.Text = "X";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.compassAxesTextBox);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.gyroAxesTextBox);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.accelAxesTextBox);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.versionTxt);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(268, 249);
            this.groupBox1.TabIndex = 51;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Phidget Spatial Info";
            // 
            // compassAxesTextBox
            // 
            this.compassAxesTextBox.Location = new System.Drawing.Point(117, 217);
            this.compassAxesTextBox.Name = "compassAxesTextBox";
            this.compassAxesTextBox.ReadOnly = true;
            this.compassAxesTextBox.Size = new System.Drawing.Size(145, 20);
            this.compassAxesTextBox.TabIndex = 14;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(16, 220);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(79, 13);
            this.label8.TabIndex = 13;
            this.label8.Text = "Compass Axes:";
            // 
            // gyroAxesTextBox
            // 
            this.gyroAxesTextBox.Location = new System.Drawing.Point(117, 191);
            this.gyroAxesTextBox.Name = "gyroAxesTextBox";
            this.gyroAxesTextBox.ReadOnly = true;
            this.gyroAxesTextBox.Size = new System.Drawing.Size(145, 20);
            this.gyroAxesTextBox.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(16, 194);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(58, 13);
            this.label7.TabIndex = 11;
            this.label7.Text = "Gyro Axes:";
            // 
            // accelAxesTextBox
            // 
            this.accelAxesTextBox.Location = new System.Drawing.Point(117, 165);
            this.accelAxesTextBox.Name = "accelAxesTextBox";
            this.accelAxesTextBox.ReadOnly = true;
            this.accelAxesTextBox.Size = new System.Drawing.Size(145, 20);
            this.accelAxesTextBox.TabIndex = 10;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(16, 168);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(95, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "Acceleration Axes:";
            // 
            // versionTxt
            // 
            this.versionTxt.Location = new System.Drawing.Point(85, 139);
            this.versionTxt.Name = "versionTxt";
            this.versionTxt.ReadOnly = true;
            this.versionTxt.Size = new System.Drawing.Size(177, 20);
            this.versionTxt.TabIndex = 8;
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(85, 113);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(177, 20);
            this.serialTxt.TabIndex = 7;
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(85, 56);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(177, 48);
            this.nameTxt.TabIndex = 6;
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(85, 27);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(177, 20);
            this.attachedTxt.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 142);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Version:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 116);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Serial No.:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Name:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // compassGraphBox
            // 
            this.compassGraphBox.Controls.Add(this.compassView);
            this.compassGraphBox.Location = new System.Drawing.Point(555, 296);
            this.compassGraphBox.Name = "compassGraphBox";
            this.compassGraphBox.Size = new System.Drawing.Size(263, 276);
            this.compassGraphBox.TabIndex = 58;
            this.compassGraphBox.TabStop = false;
            this.compassGraphBox.Text = "Compass Bearing";
            this.compassGraphBox.Visible = false;
            // 
            // compassView
            // 
            this.compassView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.compassView.Controls.Add(this.setCompassParamsButton);
            this.compassView.Location = new System.Drawing.Point(6, 17);
            this.compassView.Name = "compassView";
            this.compassView.Size = new System.Drawing.Size(251, 251);
            this.compassView.TabIndex = 49;
            // 
            // setCompassParamsButton
            // 
            this.setCompassParamsButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.setCompassParamsButton.Location = new System.Drawing.Point(170, 225);
            this.setCompassParamsButton.Name = "setCompassParamsButton";
            this.setCompassParamsButton.Size = new System.Drawing.Size(78, 23);
            this.setCompassParamsButton.TabIndex = 63;
            this.setCompassParamsButton.Text = "Set Params...";
            this.setCompassParamsButton.UseVisualStyleBackColor = true;
            this.setCompassParamsButton.Click += new System.EventHandler(this.setCompassParamsButton_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(830, 580);
            this.Controls.Add(this.compassGraphBox);
            this.Controls.Add(this.groupBox9);
            this.Controls.Add(this.gyroGraphBox);
            this.Controls.Add(this.magFieldGraphBox);
            this.Controls.Add(this.gyroBox);
            this.Controls.Add(this.compassBox);
            this.Controls.Add(this.accelGraphBox);
            this.Controls.Add(this.accelBox);
            this.Controls.Add(this.groupBox1);
            this.MaximumSize = new System.Drawing.Size(838, 614);
            this.MinimumSize = new System.Drawing.Size(298, 386);
            this.Name = "Form1";
            this.Text = "Spatial - full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox9.ResumeLayout(false);
            this.groupBox9.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataRateTrack)).EndInit();
            this.magFieldGraphBox.ResumeLayout(false);
            this.gyroBox.ResumeLayout(false);
            this.gyroBox.PerformLayout();
            this.compassBox.ResumeLayout(false);
            this.compassBox.PerformLayout();
            this.gyroGraphBox.ResumeLayout(false);
            this.gyroView.ResumeLayout(false);
            this.accelGraphBox.ResumeLayout(false);
            this.accelBox.ResumeLayout(false);
            this.accelBox.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.compassGraphBox.ResumeLayout(false);
            this.compassView.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox9;
        private System.Windows.Forms.TrackBar dataRateTrack;
        private System.Windows.Forms.GroupBox magFieldGraphBox;
        private System.Windows.Forms.Panel magFieldView;
        private System.Windows.Forms.GroupBox gyroBox;
        private System.Windows.Forms.TextBox headingZText;
        private System.Windows.Forms.TextBox headingYText;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Button zeroGyroButton;
        private System.Windows.Forms.TextBox headingXText;
        private System.Windows.Forms.GroupBox compassBox;
        private System.Windows.Forms.TextBox compassXTxt;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.TextBox compassZTxt;
        private System.Windows.Forms.TextBox pitchAngleTxt;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox bearingTxt;
        private System.Windows.Forms.TextBox compassYTxt;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox rollAngleTxt;
        private System.Windows.Forms.GroupBox gyroGraphBox;
        private System.Windows.Forms.Panel gyroView;
        private System.Windows.Forms.GroupBox accelGraphBox;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox accelBox;
        private System.Windows.Forms.TextBox xTextBox;
        private System.Windows.Forms.TextBox zTextBox;
        private System.Windows.Forms.TextBox yTextBox;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox compassAxesTextBox;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox gyroAxesTextBox;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox accelAxesTextBox;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox versionTxt;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox dataRateTxt;
        private System.Windows.Forms.GroupBox compassGraphBox;
        private System.Windows.Forms.Panel compassView;
        private System.Windows.Forms.Button setCompassParamsButton;


    }
}

