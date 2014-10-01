namespace Wireframe
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.trackBar4 = new System.Windows.Forms.TrackBar();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.xVelTxt = new System.Windows.Forms.TextBox();
            this.yVelTxt = new System.Windows.Forms.TextBox();
            this.zVelTxt = new System.Windows.Forms.TextBox();
            this.xPosnTxt = new System.Windows.Forms.TextBox();
            this.yPosnTxt = new System.Windows.Forms.TextBox();
            this.zPosnTxt = new System.Windows.Forms.TextBox();
            this.gyroRadio = new System.Windows.Forms.RadioButton();
            this.positionRadio = new System.Windows.Forms.RadioButton();
            this.timeTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.compassCorrections = new System.Windows.Forms.CheckBox();
            this.totMagDivTxt = new System.Windows.Forms.TextBox();
            this.label28 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.zMagdiffTxt = new System.Windows.Forms.TextBox();
            this.yMagdiffTxt = new System.Windows.Forms.TextBox();
            this.label24 = new System.Windows.Forms.Label();
            this.xMagdiffTxt = new System.Windows.Forms.TextBox();
            this.label25 = new System.Windows.Forms.Label();
            this.label26 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.totGravTxt = new System.Windows.Forms.TextBox();
            this.zGravTxt = new System.Windows.Forms.TextBox();
            this.yGravTxt = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.xGravTxt = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.zeroStatusTxt = new System.Windows.Forms.TextBox();
            this.initialRotWithGravity = new System.Windows.Forms.CheckBox();
            this.label10 = new System.Windows.Forms.Label();
            this.totAccelTxt = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.zAccelTxt = new System.Windows.Forms.TextBox();
            this.yAccelTxt = new System.Windows.Forms.TextBox();
            this.xAccelTxt = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.totPosnTxt = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.totVelTxt = new System.Windows.Forms.TextBox();
            this.overRotsTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar4)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureBox1.BackColor = System.Drawing.Color.CornflowerBlue;
            this.pictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(571, 533);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Resize += new System.EventHandler(this.pictureBox1_Resize);
            // 
            // trackBar4
            // 
            this.trackBar4.LargeChange = 500;
            this.trackBar4.Location = new System.Drawing.Point(56, 403);
            this.trackBar4.Maximum = 16000;
            this.trackBar4.Name = "trackBar4";
            this.trackBar4.Size = new System.Drawing.Size(320, 45);
            this.trackBar4.TabIndex = 4;
            this.trackBar4.TickFrequency = 500;
            this.trackBar4.Value = 4000;
            this.trackBar4.Scroll += new System.EventHandler(this.trackBar4_Scroll);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 403);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Zoom";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(230, 451);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 9;
            this.button1.Text = "Zero";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(15, 36);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(57, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "X Velocity:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(15, 88);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(57, 13);
            this.label11.TabIndex = 17;
            this.label11.Text = "Z Velocity:";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(15, 62);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(57, 13);
            this.label12.TabIndex = 18;
            this.label12.Text = "Y Velocity:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 189);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 13);
            this.label2.TabIndex = 21;
            this.label2.Text = "Y Position:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 215);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 13);
            this.label3.TabIndex = 20;
            this.label3.Text = "Z Position:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(15, 163);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 13);
            this.label4.TabIndex = 19;
            this.label4.Text = "X Position:";
            // 
            // xVelTxt
            // 
            this.xVelTxt.Location = new System.Drawing.Point(78, 33);
            this.xVelTxt.Name = "xVelTxt";
            this.xVelTxt.Size = new System.Drawing.Size(100, 20);
            this.xVelTxt.TabIndex = 22;
            this.xVelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yVelTxt
            // 
            this.yVelTxt.Location = new System.Drawing.Point(78, 59);
            this.yVelTxt.Name = "yVelTxt";
            this.yVelTxt.Size = new System.Drawing.Size(100, 20);
            this.yVelTxt.TabIndex = 23;
            this.yVelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // zVelTxt
            // 
            this.zVelTxt.Location = new System.Drawing.Point(78, 85);
            this.zVelTxt.Name = "zVelTxt";
            this.zVelTxt.Size = new System.Drawing.Size(100, 20);
            this.zVelTxt.TabIndex = 24;
            this.zVelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // xPosnTxt
            // 
            this.xPosnTxt.Location = new System.Drawing.Point(78, 160);
            this.xPosnTxt.Name = "xPosnTxt";
            this.xPosnTxt.Size = new System.Drawing.Size(100, 20);
            this.xPosnTxt.TabIndex = 25;
            this.xPosnTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yPosnTxt
            // 
            this.yPosnTxt.Location = new System.Drawing.Point(78, 186);
            this.yPosnTxt.Name = "yPosnTxt";
            this.yPosnTxt.Size = new System.Drawing.Size(100, 20);
            this.yPosnTxt.TabIndex = 26;
            this.yPosnTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // zPosnTxt
            // 
            this.zPosnTxt.Location = new System.Drawing.Point(78, 212);
            this.zPosnTxt.Name = "zPosnTxt";
            this.zPosnTxt.Size = new System.Drawing.Size(100, 20);
            this.zPosnTxt.TabIndex = 27;
            this.zPosnTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // gyroRadio
            // 
            this.gyroRadio.AutoSize = true;
            this.gyroRadio.Checked = true;
            this.gyroRadio.Location = new System.Drawing.Point(216, 480);
            this.gyroRadio.Name = "gyroRadio";
            this.gyroRadio.Size = new System.Drawing.Size(124, 17);
            this.gyroRadio.TabIndex = 28;
            this.gyroRadio.TabStop = true;
            this.gyroRadio.Text = "Show Rotations Only";
            this.gyroRadio.UseVisualStyleBackColor = true;
            this.gyroRadio.CheckedChanged += new System.EventHandler(this.gyroRadio_CheckedChanged);
            // 
            // positionRadio
            // 
            this.positionRadio.AutoSize = true;
            this.positionRadio.Location = new System.Drawing.Point(216, 503);
            this.positionRadio.Name = "positionRadio";
            this.positionRadio.Size = new System.Drawing.Size(166, 17);
            this.positionRadio.TabIndex = 29;
            this.positionRadio.Text = "Show Rotations and Positions";
            this.positionRadio.UseVisualStyleBackColor = true;
            this.positionRadio.CheckedChanged += new System.EventHandler(this.positionRadio_CheckedChanged);
            // 
            // timeTxt
            // 
            this.timeTxt.Location = new System.Drawing.Point(78, 285);
            this.timeTxt.Name = "timeTxt";
            this.timeTxt.Size = new System.Drawing.Size(100, 20);
            this.timeTxt.TabIndex = 31;
            this.timeTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(15, 288);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(33, 13);
            this.label5.TabIndex = 30;
            this.label5.Text = "Time:";
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.compassCorrections);
            this.groupBox1.Controls.Add(this.totMagDivTxt);
            this.groupBox1.Controls.Add(this.label28);
            this.groupBox1.Controls.Add(this.label27);
            this.groupBox1.Controls.Add(this.zMagdiffTxt);
            this.groupBox1.Controls.Add(this.yMagdiffTxt);
            this.groupBox1.Controls.Add(this.label24);
            this.groupBox1.Controls.Add(this.xMagdiffTxt);
            this.groupBox1.Controls.Add(this.label25);
            this.groupBox1.Controls.Add(this.label26);
            this.groupBox1.Controls.Add(this.label23);
            this.groupBox1.Controls.Add(this.label22);
            this.groupBox1.Controls.Add(this.label21);
            this.groupBox1.Controls.Add(this.label20);
            this.groupBox1.Controls.Add(this.label16);
            this.groupBox1.Controls.Add(this.totGravTxt);
            this.groupBox1.Controls.Add(this.zGravTxt);
            this.groupBox1.Controls.Add(this.yGravTxt);
            this.groupBox1.Controls.Add(this.label17);
            this.groupBox1.Controls.Add(this.xGravTxt);
            this.groupBox1.Controls.Add(this.label18);
            this.groupBox1.Controls.Add(this.label19);
            this.groupBox1.Controls.Add(this.zeroStatusTxt);
            this.groupBox1.Controls.Add(this.initialRotWithGravity);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.totAccelTxt);
            this.groupBox1.Controls.Add(this.label13);
            this.groupBox1.Controls.Add(this.label14);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.zAccelTxt);
            this.groupBox1.Controls.Add(this.yAccelTxt);
            this.groupBox1.Controls.Add(this.xAccelTxt);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.totPosnTxt);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.totVelTxt);
            this.groupBox1.Controls.Add(this.overRotsTxt);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.timeTxt);
            this.groupBox1.Controls.Add(this.trackBar4);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.positionRadio);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.gyroRadio);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.zPosnTxt);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.yPosnTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.xPosnTxt);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.zVelTxt);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.yVelTxt);
            this.groupBox1.Controls.Add(this.xVelTxt);
            this.groupBox1.Location = new System.Drawing.Point(589, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(392, 533);
            this.groupBox1.TabIndex = 32;
            this.groupBox1.TabStop = false;
            // 
            // compassCorrections
            // 
            this.compassCorrections.AutoSize = true;
            this.compassCorrections.Location = new System.Drawing.Point(6, 503);
            this.compassCorrections.Name = "compassCorrections";
            this.compassCorrections.Size = new System.Drawing.Size(207, 17);
            this.compassCorrections.TabIndex = 69;
            this.compassCorrections.Text = "Use compass data for gyro corrections";
            this.compassCorrections.UseVisualStyleBackColor = true;
            // 
            // totMagDivTxt
            // 
            this.totMagDivTxt.Location = new System.Drawing.Point(276, 372);
            this.totMagDivTxt.Name = "totMagDivTxt";
            this.totMagDivTxt.Size = new System.Drawing.Size(100, 20);
            this.totMagDivTxt.TabIndex = 68;
            this.totMagDivTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(236, 375);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(34, 13);
            this.label28.TabIndex = 67;
            this.label28.Text = "Total:";
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.Location = new System.Drawing.Point(220, 278);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(156, 13);
            this.label27.TabIndex = 66;
            this.label27.Text = "Magnetic Divergence (degrees)";
            // 
            // zMagdiffTxt
            // 
            this.zMagdiffTxt.Location = new System.Drawing.Point(276, 346);
            this.zMagdiffTxt.Name = "zMagdiffTxt";
            this.zMagdiffTxt.Size = new System.Drawing.Size(100, 20);
            this.zMagdiffTxt.TabIndex = 65;
            this.zMagdiffTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yMagdiffTxt
            // 
            this.yMagdiffTxt.Location = new System.Drawing.Point(276, 320);
            this.yMagdiffTxt.Name = "yMagdiffTxt";
            this.yMagdiffTxt.Size = new System.Drawing.Size(100, 20);
            this.yMagdiffTxt.TabIndex = 64;
            this.yMagdiffTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(253, 297);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(17, 13);
            this.label24.TabIndex = 60;
            this.label24.Text = "X:";
            // 
            // xMagdiffTxt
            // 
            this.xMagdiffTxt.Location = new System.Drawing.Point(276, 294);
            this.xMagdiffTxt.Name = "xMagdiffTxt";
            this.xMagdiffTxt.Size = new System.Drawing.Size(100, 20);
            this.xMagdiffTxt.TabIndex = 63;
            this.xMagdiffTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(253, 349);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(17, 13);
            this.label25.TabIndex = 61;
            this.label25.Text = "Z:";
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Location = new System.Drawing.Point(253, 323);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(17, 13);
            this.label26.TabIndex = 62;
            this.label26.Text = "Y:";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(309, 144);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(13, 13);
            this.label23.TabIndex = 59;
            this.label23.Text = "g";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(107, 144);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(15, 13);
            this.label22.TabIndex = 58;
            this.label22.Text = "m";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(94, 17);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(25, 13);
            this.label21.TabIndex = 57;
            this.label21.Text = "m/s";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(309, 17);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(37, 13);
            this.label20.TabIndex = 56;
            this.label20.Text = "m/s^2";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(213, 239);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(70, 13);
            this.label16.TabIndex = 54;
            this.label16.Text = "Total Gravity:";
            // 
            // totGravTxt
            // 
            this.totGravTxt.Location = new System.Drawing.Point(295, 236);
            this.totGravTxt.Name = "totGravTxt";
            this.totGravTxt.Size = new System.Drawing.Size(81, 20);
            this.totGravTxt.TabIndex = 55;
            this.totGravTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // zGravTxt
            // 
            this.zGravTxt.Location = new System.Drawing.Point(276, 212);
            this.zGravTxt.Name = "zGravTxt";
            this.zGravTxt.Size = new System.Drawing.Size(100, 20);
            this.zGravTxt.TabIndex = 53;
            this.zGravTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yGravTxt
            // 
            this.yGravTxt.Location = new System.Drawing.Point(276, 186);
            this.yGravTxt.Name = "yGravTxt";
            this.yGravTxt.Size = new System.Drawing.Size(100, 20);
            this.yGravTxt.TabIndex = 52;
            this.yGravTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(213, 163);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(53, 13);
            this.label17.TabIndex = 48;
            this.label17.Text = "X Gravity:";
            // 
            // xGravTxt
            // 
            this.xGravTxt.Location = new System.Drawing.Point(276, 160);
            this.xGravTxt.Name = "xGravTxt";
            this.xGravTxt.Size = new System.Drawing.Size(100, 20);
            this.xGravTxt.TabIndex = 51;
            this.xGravTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(213, 215);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(53, 13);
            this.label18.TabIndex = 49;
            this.label18.Text = "Z Gravity:";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(213, 189);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(53, 13);
            this.label19.TabIndex = 50;
            this.label19.Text = "Y Gravity:";
            // 
            // zeroStatusTxt
            // 
            this.zeroStatusTxt.Location = new System.Drawing.Point(312, 452);
            this.zeroStatusTxt.Name = "zeroStatusTxt";
            this.zeroStatusTxt.Size = new System.Drawing.Size(70, 20);
            this.zeroStatusTxt.TabIndex = 47;
            // 
            // initialRotWithGravity
            // 
            this.initialRotWithGravity.AutoSize = true;
            this.initialRotWithGravity.Checked = true;
            this.initialRotWithGravity.CheckState = System.Windows.Forms.CheckState.Checked;
            this.initialRotWithGravity.Location = new System.Drawing.Point(6, 480);
            this.initialRotWithGravity.Name = "initialRotWithGravity";
            this.initialRotWithGravity.Size = new System.Drawing.Size(181, 17);
            this.initialRotWithGravity.TabIndex = 46;
            this.initialRotWithGravity.Text = "Initial rotation aligned with gravity";
            this.initialRotWithGravity.UseVisualStyleBackColor = true;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(213, 114);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(64, 13);
            this.label10.TabIndex = 44;
            this.label10.Text = "Total Accel:";
            // 
            // totAccelTxt
            // 
            this.totAccelTxt.Location = new System.Drawing.Point(295, 111);
            this.totAccelTxt.Name = "totAccelTxt";
            this.totAccelTxt.Size = new System.Drawing.Size(81, 20);
            this.totAccelTxt.TabIndex = 45;
            this.totAccelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(213, 36);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(47, 13);
            this.label13.TabIndex = 38;
            this.label13.Text = "X Accel:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(213, 88);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(47, 13);
            this.label14.TabIndex = 39;
            this.label14.Text = "Z Accel:";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(213, 62);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(47, 13);
            this.label15.TabIndex = 40;
            this.label15.Text = "Y Accel:";
            // 
            // zAccelTxt
            // 
            this.zAccelTxt.Location = new System.Drawing.Point(276, 85);
            this.zAccelTxt.Name = "zAccelTxt";
            this.zAccelTxt.Size = new System.Drawing.Size(100, 20);
            this.zAccelTxt.TabIndex = 43;
            this.zAccelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // yAccelTxt
            // 
            this.yAccelTxt.Location = new System.Drawing.Point(276, 59);
            this.yAccelTxt.Name = "yAccelTxt";
            this.yAccelTxt.Size = new System.Drawing.Size(100, 20);
            this.yAccelTxt.TabIndex = 42;
            this.yAccelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // xAccelTxt
            // 
            this.xAccelTxt.Location = new System.Drawing.Point(276, 33);
            this.xAccelTxt.Name = "xAccelTxt";
            this.xAccelTxt.Size = new System.Drawing.Size(100, 20);
            this.xAccelTxt.TabIndex = 41;
            this.xAccelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(15, 239);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(74, 13);
            this.label9.TabIndex = 36;
            this.label9.Text = "Total Position:";
            // 
            // totPosnTxt
            // 
            this.totPosnTxt.Location = new System.Drawing.Point(97, 236);
            this.totPosnTxt.Name = "totPosnTxt";
            this.totPosnTxt.Size = new System.Drawing.Size(81, 20);
            this.totPosnTxt.TabIndex = 37;
            this.totPosnTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(15, 114);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(74, 13);
            this.label7.TabIndex = 34;
            this.label7.Text = "Total Velocity:";
            // 
            // totVelTxt
            // 
            this.totVelTxt.Location = new System.Drawing.Point(97, 111);
            this.totVelTxt.Name = "totVelTxt";
            this.totVelTxt.Size = new System.Drawing.Size(81, 20);
            this.totVelTxt.TabIndex = 35;
            this.totVelTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // overRotsTxt
            // 
            this.overRotsTxt.Location = new System.Drawing.Point(97, 343);
            this.overRotsTxt.Name = "overRotsTxt";
            this.overRotsTxt.Size = new System.Drawing.Size(81, 20);
            this.overRotsTxt.TabIndex = 33;
            this.overRotsTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(15, 346);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 13);
            this.label6.TabIndex = 32;
            this.label6.Text = "Over-rotations:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(993, 554);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.pictureBox1);
            this.Name = "Form1";
            this.Text = "Gyroscope Attitude";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar4)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TrackBar trackBar4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox xVelTxt;
        private System.Windows.Forms.TextBox yVelTxt;
        private System.Windows.Forms.TextBox zVelTxt;
        private System.Windows.Forms.TextBox xPosnTxt;
        private System.Windows.Forms.TextBox yPosnTxt;
        private System.Windows.Forms.TextBox zPosnTxt;
        private System.Windows.Forms.RadioButton gyroRadio;
        private System.Windows.Forms.RadioButton positionRadio;
        private System.Windows.Forms.TextBox timeTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox overRotsTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox totPosnTxt;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox totVelTxt;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox totAccelTxt;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox zAccelTxt;
        private System.Windows.Forms.TextBox yAccelTxt;
        private System.Windows.Forms.TextBox xAccelTxt;
        private System.Windows.Forms.CheckBox initialRotWithGravity;
        private System.Windows.Forms.TextBox zeroStatusTxt;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox totGravTxt;
        private System.Windows.Forms.TextBox zGravTxt;
        private System.Windows.Forms.TextBox yGravTxt;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox xGravTxt;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.TextBox zMagdiffTxt;
        private System.Windows.Forms.TextBox yMagdiffTxt;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.TextBox xMagdiffTxt;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.TextBox totMagDivTxt;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.CheckBox compassCorrections;
    }
}

