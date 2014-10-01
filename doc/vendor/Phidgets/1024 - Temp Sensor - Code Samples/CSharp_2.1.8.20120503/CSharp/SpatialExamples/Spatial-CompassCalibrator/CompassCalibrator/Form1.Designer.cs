namespace CompassCalibrator
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
            this.sampleDoneButton = new System.Windows.Forms.Button();
            this.messagesTextBox = new System.Windows.Forms.RichTextBox();
            this.localFieldTextBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.versionTxt = new System.Windows.Forms.TextBox();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.trackBar4 = new System.Windows.Forms.TrackBar();
            this.label9 = new System.Windows.Forms.Label();
            this.rotationTrack = new System.Windows.Forms.TrackBar();
            this.label = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.threeAxisButton = new System.Windows.Forms.RadioButton();
            this.twoAxisButton = new System.Windows.Forms.RadioButton();
            this.Graph = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotationTrack)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.Graph.SuspendLayout();
            this.SuspendLayout();
            // 
            // sampleDoneButton
            // 
            this.sampleDoneButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.sampleDoneButton.Enabled = false;
            this.sampleDoneButton.Location = new System.Drawing.Point(207, 188);
            this.sampleDoneButton.Name = "sampleDoneButton";
            this.sampleDoneButton.Size = new System.Drawing.Size(55, 23);
            this.sampleDoneButton.TabIndex = 0;
            this.sampleDoneButton.Text = "Start";
            this.sampleDoneButton.UseVisualStyleBackColor = true;
            this.sampleDoneButton.Click += new System.EventHandler(this.sampleDoneButton_Click);
            // 
            // messagesTextBox
            // 
            this.messagesTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.messagesTextBox.Location = new System.Drawing.Point(6, 19);
            this.messagesTextBox.Name = "messagesTextBox";
            this.messagesTextBox.Size = new System.Drawing.Size(256, 140);
            this.messagesTextBox.TabIndex = 1;
            this.messagesTextBox.Text = "";
            // 
            // localFieldTextBox
            // 
            this.localFieldTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.localFieldTextBox.Location = new System.Drawing.Point(116, 188);
            this.localFieldTextBox.Name = "localFieldTextBox";
            this.localFieldTextBox.Size = new System.Drawing.Size(53, 20);
            this.localFieldTextBox.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 191);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(104, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Local Field Strength:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.versionTxt);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(268, 137);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Phidget Spatial Info";
            // 
            // versionTxt
            // 
            this.versionTxt.Location = new System.Drawing.Point(85, 108);
            this.versionTxt.Name = "versionTxt";
            this.versionTxt.ReadOnly = true;
            this.versionTxt.Size = new System.Drawing.Size(177, 20);
            this.versionTxt.TabIndex = 8;
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(85, 82);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(177, 20);
            this.serialTxt.TabIndex = 7;
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(85, 56);
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(177, 20);
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
            this.label4.Location = new System.Drawing.Point(22, 111);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Version:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 85);
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
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 30);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Attached:";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureBox1.BackColor = System.Drawing.Color.White;
            this.pictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pictureBox1.Location = new System.Drawing.Point(7, 40);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(341, 314);
            this.pictureBox1.TabIndex = 6;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Resize += new System.EventHandler(this.pictureBox1_Resize);
            // 
            // trackBar4
            // 
            this.trackBar4.LargeChange = 500;
            this.trackBar4.Location = new System.Drawing.Point(237, 12);
            this.trackBar4.Maximum = 16000;
            this.trackBar4.Name = "trackBar4";
            this.trackBar4.Size = new System.Drawing.Size(114, 45);
            this.trackBar4.TabIndex = 7;
            this.trackBar4.TickFrequency = 500;
            this.trackBar4.TickStyle = System.Windows.Forms.TickStyle.None;
            this.trackBar4.Value = 4000;
            this.trackBar4.Scroll += new System.EventHandler(this.trackBar4_Scroll);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(205, 16);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(37, 13);
            this.label9.TabIndex = 8;
            this.label9.Text = "Zoom:";
            // 
            // rotationTrack
            // 
            this.rotationTrack.LargeChange = 50;
            this.rotationTrack.Location = new System.Drawing.Point(84, 12);
            this.rotationTrack.Maximum = 1000;
            this.rotationTrack.Name = "rotationTrack";
            this.rotationTrack.Size = new System.Drawing.Size(115, 45);
            this.rotationTrack.TabIndex = 9;
            this.rotationTrack.TickFrequency = 50;
            this.rotationTrack.TickStyle = System.Windows.Forms.TickStyle.None;
            this.rotationTrack.Value = 100;
            this.rotationTrack.Scroll += new System.EventHandler(this.rotationTrack_Scroll);
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Location = new System.Drawing.Point(6, 16);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(84, 13);
            this.label.TabIndex = 10;
            this.label.Text = "Rotation Speed:";
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.threeAxisButton);
            this.groupBox2.Controls.Add(this.twoAxisButton);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.localFieldTextBox);
            this.groupBox2.Controls.Add(this.messagesTextBox);
            this.groupBox2.Controls.Add(this.sampleDoneButton);
            this.groupBox2.Location = new System.Drawing.Point(12, 155);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(268, 217);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Settings / Status";
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 167);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(46, 13);
            this.label6.TabIndex = 6;
            this.label6.Text = "Method:";
            // 
            // threeAxisButton
            // 
            this.threeAxisButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.threeAxisButton.AutoSize = true;
            this.threeAxisButton.Checked = true;
            this.threeAxisButton.Location = new System.Drawing.Point(116, 165);
            this.threeAxisButton.Name = "threeAxisButton";
            this.threeAxisButton.Size = new System.Drawing.Size(53, 17);
            this.threeAxisButton.TabIndex = 5;
            this.threeAxisButton.TabStop = true;
            this.threeAxisButton.Text = "3-Axis";
            this.threeAxisButton.UseVisualStyleBackColor = true;
            this.threeAxisButton.CheckedChanged += new System.EventHandler(this.threeAxisButton_CheckedChanged);
            // 
            // twoAxisButton
            // 
            this.twoAxisButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.twoAxisButton.AutoSize = true;
            this.twoAxisButton.Location = new System.Drawing.Point(57, 165);
            this.twoAxisButton.Name = "twoAxisButton";
            this.twoAxisButton.Size = new System.Drawing.Size(53, 17);
            this.twoAxisButton.TabIndex = 4;
            this.twoAxisButton.Text = "2-Axis";
            this.twoAxisButton.UseVisualStyleBackColor = true;
            this.twoAxisButton.CheckedChanged += new System.EventHandler(this.twoAxisButton_CheckedChanged);
            // 
            // Graph
            // 
            this.Graph.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.Graph.Controls.Add(this.pictureBox1);
            this.Graph.Controls.Add(this.label);
            this.Graph.Controls.Add(this.label9);
            this.Graph.Controls.Add(this.trackBar4);
            this.Graph.Controls.Add(this.rotationTrack);
            this.Graph.Location = new System.Drawing.Point(286, 12);
            this.Graph.Name = "Graph";
            this.Graph.Size = new System.Drawing.Size(356, 360);
            this.Graph.TabIndex = 12;
            this.Graph.TabStop = false;
            this.Graph.Text = "Graph";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(656, 384);
            this.Controls.Add(this.Graph);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Compass Calibrator";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rotationTrack)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.Graph.ResumeLayout(false);
            this.Graph.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button sampleDoneButton;
        private System.Windows.Forms.RichTextBox messagesTextBox;
        private System.Windows.Forms.TextBox localFieldTextBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox versionTxt;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TrackBar trackBar4;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TrackBar rotationTrack;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox Graph;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RadioButton threeAxisButton;
        private System.Windows.Forms.RadioButton twoAxisButton;
    }
}

