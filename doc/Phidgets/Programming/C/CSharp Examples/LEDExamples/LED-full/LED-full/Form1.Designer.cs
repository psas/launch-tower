namespace LED_full
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
            this.ledNumTxt = new System.Windows.Forms.TextBox();
            this.versionTxt = new System.Windows.Forms.TextBox();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.currentLimitlabel = new System.Windows.Forms.Label();
            this.currentLimitCmb = new System.Windows.Forms.ComboBox();
            this.voltageLabel = new System.Windows.Forms.Label();
            this.voltageCmb = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.ledTrk = new System.Windows.Forms.TrackBar();
            this.label6 = new System.Windows.Forms.Label();
            this.ledIndexCmb = new System.Windows.Forms.ComboBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTrk)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ledNumTxt);
            this.groupBox1.Controls.Add(this.versionTxt);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(10, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(223, 214);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "LED info";
            // 
            // ledNumTxt
            // 
            this.ledNumTxt.Location = new System.Drawing.Point(70, 181);
            this.ledNumTxt.Name = "ledNumTxt";
            this.ledNumTxt.ReadOnly = true;
            this.ledNumTxt.Size = new System.Drawing.Size(141, 20);
            this.ledNumTxt.TabIndex = 9;
            // 
            // versionTxt
            // 
            this.versionTxt.Location = new System.Drawing.Point(70, 146);
            this.versionTxt.Name = "versionTxt";
            this.versionTxt.ReadOnly = true;
            this.versionTxt.Size = new System.Drawing.Size(141, 20);
            this.versionTxt.TabIndex = 8;
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(70, 114);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(141, 20);
            this.serialTxt.TabIndex = 7;
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(70, 57);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(141, 45);
            this.nameTxt.TabIndex = 6;
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(70, 25);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(141, 20);
            this.attachedTxt.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 184);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(58, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "# of LEDs:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 149);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Version:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Serial No.:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Name:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.currentLimitlabel);
            this.groupBox2.Controls.Add(this.currentLimitCmb);
            this.groupBox2.Controls.Add(this.voltageLabel);
            this.groupBox2.Controls.Add(this.voltageCmb);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.ledTrk);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.ledIndexCmb);
            this.groupBox2.Location = new System.Drawing.Point(10, 226);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(223, 158);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "LED Control";
            // 
            // currentLimitlabel
            // 
            this.currentLimitlabel.AutoSize = true;
            this.currentLimitlabel.Location = new System.Drawing.Point(19, 130);
            this.currentLimitlabel.Name = "currentLimitlabel";
            this.currentLimitlabel.Size = new System.Drawing.Size(68, 13);
            this.currentLimitlabel.TabIndex = 7;
            this.currentLimitlabel.Text = "Current Limit:";
            this.currentLimitlabel.Visible = false;
            // 
            // currentLimitCmb
            // 
            this.currentLimitCmb.Enabled = false;
            this.currentLimitCmb.FormattingEnabled = true;
            this.currentLimitCmb.Items.AddRange(new object[] {
            "20mA",
            "40mA",
            "60mA",
            "80mA"});
            this.currentLimitCmb.Location = new System.Drawing.Point(93, 127);
            this.currentLimitCmb.Name = "currentLimitCmb";
            this.currentLimitCmb.Size = new System.Drawing.Size(121, 21);
            this.currentLimitCmb.TabIndex = 6;
            this.currentLimitCmb.Visible = false;
            this.currentLimitCmb.SelectedIndexChanged += new System.EventHandler(this.currentLimitCmb_SelectedIndexChanged);
            // 
            // voltageLabel
            // 
            this.voltageLabel.AutoSize = true;
            this.voltageLabel.Location = new System.Drawing.Point(41, 103);
            this.voltageLabel.Name = "voltageLabel";
            this.voltageLabel.Size = new System.Drawing.Size(46, 13);
            this.voltageLabel.TabIndex = 5;
            this.voltageLabel.Text = "Voltage:";
            this.voltageLabel.Visible = false;
            // 
            // voltageCmb
            // 
            this.voltageCmb.Enabled = false;
            this.voltageCmb.FormattingEnabled = true;
            this.voltageCmb.Items.AddRange(new object[] {
            "1.7V",
            "2.75V",
            "3.9V",
            "5.0V"});
            this.voltageCmb.Location = new System.Drawing.Point(93, 100);
            this.voltageCmb.Name = "voltageCmb";
            this.voltageCmb.Size = new System.Drawing.Size(121, 21);
            this.voltageCmb.TabIndex = 4;
            this.voltageCmb.Visible = false;
            this.voltageCmb.SelectedIndexChanged += new System.EventHandler(this.voltageCmb_SelectedIndexChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 64);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(83, 13);
            this.label8.TabIndex = 3;
            this.label8.Text = "LED Brightness:";
            // 
            // ledTrk
            // 
            this.ledTrk.Enabled = false;
            this.ledTrk.LargeChange = 10;
            this.ledTrk.Location = new System.Drawing.Point(95, 52);
            this.ledTrk.Maximum = 100;
            this.ledTrk.Name = "ledTrk";
            this.ledTrk.Size = new System.Drawing.Size(121, 45);
            this.ledTrk.TabIndex = 2;
            this.ledTrk.TickFrequency = 10;
            this.ledTrk.Scroll += new System.EventHandler(this.ledTrk_Scroll);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(27, 28);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "LED Index:";
            // 
            // ledIndexCmb
            // 
            this.ledIndexCmb.Enabled = false;
            this.ledIndexCmb.FormattingEnabled = true;
            this.ledIndexCmb.Location = new System.Drawing.Point(93, 25);
            this.ledIndexCmb.Name = "ledIndexCmb";
            this.ledIndexCmb.Size = new System.Drawing.Size(121, 21);
            this.ledIndexCmb.TabIndex = 0;
            this.ledIndexCmb.SelectedIndexChanged += new System.EventHandler(this.ledIndexCmb_SelectedIndexChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(243, 388);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(251, 422);
            this.MinimumSize = new System.Drawing.Size(251, 422);
            this.Name = "Form1";
            this.Text = "LED-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTrk)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.TextBox ledNumTxt;
        private System.Windows.Forms.TextBox versionTxt;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox ledIndexCmb;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TrackBar ledTrk;
        private System.Windows.Forms.Label currentLimitlabel;
        private System.Windows.Forms.ComboBox currentLimitCmb;
        private System.Windows.Forms.Label voltageLabel;
        private System.Windows.Forms.ComboBox voltageCmb;
    }
}

