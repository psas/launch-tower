namespace FrequencyCounter_full
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.versiontxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label14 = new System.Windows.Forms.Label();
            this.timeTxt = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.countTxt = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.channelCmb = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.enCB = new System.Windows.Forms.CheckBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.filterCmb = new System.Windows.Forms.ComboBox();
            this.timeOutTxt = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.freqTxt = new System.Windows.Forms.TextBox();
            this.totalTimeTxt = new System.Windows.Forms.TextBox();
            this.totalCntTxt = new System.Windows.Forms.TextBox();
            this.resetButton = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
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
            this.groupBox1.Size = new System.Drawing.Size(277, 195);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Frequency Counter Info";
            // 
            // versiontxt
            // 
            this.versiontxt.Location = new System.Drawing.Point(108, 151);
            this.versiontxt.Name = "versiontxt";
            this.versiontxt.ReadOnly = true;
            this.versiontxt.Size = new System.Drawing.Size(163, 20);
            this.versiontxt.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(46, 154);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(108, 120);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(163, 20);
            this.serialTxt.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(46, 123);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Serial No.:";
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(108, 59);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(163, 48);
            this.nameTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(46, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Name:";
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(108, 28);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(163, 20);
            this.attachedTxt.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(46, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.resetButton);
            this.groupBox2.Controls.Add(this.label14);
            this.groupBox2.Controls.Add(this.timeTxt);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Controls.Add(this.countTxt);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.channelCmb);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.enCB);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.filterCmb);
            this.groupBox2.Controls.Add(this.timeOutTxt);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.freqTxt);
            this.groupBox2.Controls.Add(this.totalTimeTxt);
            this.groupBox2.Controls.Add(this.totalCntTxt);
            this.groupBox2.Location = new System.Drawing.Point(13, 214);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(277, 277);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Frequency Data";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(227, 144);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(20, 13);
            this.label14.TabIndex = 26;
            this.label14.Text = "ms";
            // 
            // timeTxt
            // 
            this.timeTxt.Location = new System.Drawing.Point(151, 141);
            this.timeTxt.Name = "timeTxt";
            this.timeTxt.ReadOnly = true;
            this.timeTxt.Size = new System.Drawing.Size(72, 20);
            this.timeTxt.TabIndex = 25;
            this.timeTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(102, 144);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(48, 13);
            this.label12.TabIndex = 23;
            this.label12.Text = "pulses in";
            // 
            // countTxt
            // 
            this.countTxt.Location = new System.Drawing.Point(36, 141);
            this.countTxt.Name = "countTxt";
            this.countTxt.ReadOnly = true;
            this.countTxt.Size = new System.Drawing.Size(65, 20);
            this.countTxt.TabIndex = 22;
            this.countTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(17, 122);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(74, 13);
            this.label11.TabIndex = 21;
            this.label11.Text = "Count Events:";
            // 
            // channelCmb
            // 
            this.channelCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.channelCmb.Enabled = false;
            this.channelCmb.FormattingEnabled = true;
            this.channelCmb.Location = new System.Drawing.Point(158, 19);
            this.channelCmb.Name = "channelCmb";
            this.channelCmb.Size = new System.Drawing.Size(54, 21);
            this.channelCmb.TabIndex = 15;
            this.channelCmb.SelectedIndexChanged += new System.EventHandler(this.channelCmb_SelectedIndexChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(64, 22);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(88, 13);
            this.label8.TabIndex = 19;
            this.label8.Text = "Choose Channel:";
            // 
            // enCB
            // 
            this.enCB.AutoSize = true;
            this.enCB.Enabled = false;
            this.enCB.Location = new System.Drawing.Point(17, 57);
            this.enCB.Name = "enCB";
            this.enCB.Size = new System.Drawing.Size(65, 17);
            this.enCB.TabIndex = 20;
            this.enCB.Text = "Enabled";
            this.enCB.UseVisualStyleBackColor = true;
            this.enCB.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(91, 58);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(32, 13);
            this.label7.TabIndex = 18;
            this.label7.Text = "Filter:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(91, 85);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(70, 13);
            this.label6.TabIndex = 17;
            this.label6.Text = "Timeout (ms):";
            // 
            // filterCmb
            // 
            this.filterCmb.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.filterCmb.Enabled = false;
            this.filterCmb.FormattingEnabled = true;
            this.filterCmb.Location = new System.Drawing.Point(129, 55);
            this.filterCmb.Name = "filterCmb";
            this.filterCmb.Size = new System.Drawing.Size(130, 21);
            this.filterCmb.TabIndex = 16;
            this.filterCmb.SelectedIndexChanged += new System.EventHandler(this.filterCmb_SelectedIndexChanged);
            // 
            // timeOutTxt
            // 
            this.timeOutTxt.Enabled = false;
            this.timeOutTxt.Location = new System.Drawing.Point(165, 82);
            this.timeOutTxt.Name = "timeOutTxt";
            this.timeOutTxt.Size = new System.Drawing.Size(94, 20);
            this.timeOutTxt.TabIndex = 14;
            this.timeOutTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.timeOutTxt.TextChanged += new System.EventHandler(this.timeOutTxt_TextChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(25, 244);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(82, 13);
            this.label10.TabIndex = 13;
            this.label10.Text = "Total Time (ms):";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(42, 218);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(65, 13);
            this.label9.TabIndex = 12;
            this.label9.Text = "Total Count:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(25, 192);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Frequency (Hz):";
            // 
            // freqTxt
            // 
            this.freqTxt.Enabled = false;
            this.freqTxt.Location = new System.Drawing.Point(113, 189);
            this.freqTxt.Name = "freqTxt";
            this.freqTxt.ReadOnly = true;
            this.freqTxt.Size = new System.Drawing.Size(94, 20);
            this.freqTxt.TabIndex = 2;
            this.freqTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // totalTimeTxt
            // 
            this.totalTimeTxt.Enabled = false;
            this.totalTimeTxt.Location = new System.Drawing.Point(113, 241);
            this.totalTimeTxt.Name = "totalTimeTxt";
            this.totalTimeTxt.ReadOnly = true;
            this.totalTimeTxt.Size = new System.Drawing.Size(94, 20);
            this.totalTimeTxt.TabIndex = 1;
            this.totalTimeTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // totalCntTxt
            // 
            this.totalCntTxt.Enabled = false;
            this.totalCntTxt.Location = new System.Drawing.Point(113, 215);
            this.totalCntTxt.Name = "totalCntTxt";
            this.totalCntTxt.ReadOnly = true;
            this.totalCntTxt.Size = new System.Drawing.Size(94, 20);
            this.totalCntTxt.TabIndex = 0;
            this.totalCntTxt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // resetButton
            // 
            this.resetButton.Location = new System.Drawing.Point(213, 225);
            this.resetButton.Name = "resetButton";
            this.resetButton.Size = new System.Drawing.Size(46, 23);
            this.resetButton.TabIndex = 27;
            this.resetButton.Text = "Reset";
            this.resetButton.UseVisualStyleBackColor = true;
            this.resetButton.Click += new System.EventHandler(this.resetButton_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(302, 503);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "FrequencyCounter-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox versiontxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox freqTxt;
        private System.Windows.Forms.TextBox totalTimeTxt;
        private System.Windows.Forms.TextBox totalCntTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox filterCmb;
        private System.Windows.Forms.ComboBox channelCmb;
        private System.Windows.Forms.TextBox timeOutTxt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.CheckBox enCB;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox timeTxt;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox countTxt;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button resetButton;
    }
}

