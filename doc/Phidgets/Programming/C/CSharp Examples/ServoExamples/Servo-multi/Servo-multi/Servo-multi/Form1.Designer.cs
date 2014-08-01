namespace Servo_multi
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
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.positionTrk = new System.Windows.Forms.TrackBar();
            this.label7 = new System.Windows.Forms.Label();
            this.positionTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.servoNumCombo = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.controllerCmb = new System.Windows.Forms.ComboBox();
            this.servosTxt = new System.Windows.Forms.TextBox();
            this.versionTxt = new System.Windows.Forms.TextBox();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.positionTrk);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.positionTxt);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.servoNumCombo);
            this.groupBox2.Location = new System.Drawing.Point(12, 253);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(267, 184);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Servo Position";
            // 
            // positionTrk
            // 
            this.positionTrk.Location = new System.Drawing.Point(68, 89);
            this.positionTrk.Name = "positionTrk";
            this.positionTrk.Size = new System.Drawing.Size(104, 45);
            this.positionTrk.TabIndex = 4;
            this.positionTrk.Scroll += new System.EventHandler(this.positionTrk_Scroll);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 57);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(47, 13);
            this.label7.TabIndex = 3;
            this.label7.Text = "Position:";
            // 
            // positionTxt
            // 
            this.positionTxt.Location = new System.Drawing.Point(68, 54);
            this.positionTxt.Name = "positionTxt";
            this.positionTxt.ReadOnly = true;
            this.positionTxt.Size = new System.Drawing.Size(100, 20);
            this.positionTxt.TabIndex = 2;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 22);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(58, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "Servo No.:";
            // 
            // servoNumCombo
            // 
            this.servoNumCombo.FormattingEnabled = true;
            this.servoNumCombo.Location = new System.Drawing.Point(68, 19);
            this.servoNumCombo.Name = "servoNumCombo";
            this.servoNumCombo.Size = new System.Drawing.Size(121, 21);
            this.servoNumCombo.TabIndex = 0;
            this.servoNumCombo.SelectedIndexChanged += new System.EventHandler(this.servoNumCombo_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.controllerCmb);
            this.groupBox1.Controls.Add(this.servosTxt);
            this.groupBox1.Controls.Add(this.versionTxt);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(267, 235);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Servo Info";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 27);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(54, 13);
            this.label8.TabIndex = 11;
            this.label8.Text = "Controller:";
            // 
            // controllerCmb
            // 
            this.controllerCmb.FormattingEnabled = true;
            this.controllerCmb.Location = new System.Drawing.Point(68, 24);
            this.controllerCmb.Name = "controllerCmb";
            this.controllerCmb.Size = new System.Drawing.Size(121, 21);
            this.controllerCmb.TabIndex = 10;
            this.controllerCmb.SelectedIndexChanged += new System.EventHandler(this.controllerCmb_SelectedIndexChanged);
            // 
            // servosTxt
            // 
            this.servosTxt.Location = new System.Drawing.Point(68, 205);
            this.servosTxt.Name = "servosTxt";
            this.servosTxt.ReadOnly = true;
            this.servosTxt.Size = new System.Drawing.Size(100, 20);
            this.servosTxt.TabIndex = 9;
            // 
            // versionTxt
            // 
            this.versionTxt.Location = new System.Drawing.Point(68, 167);
            this.versionTxt.Name = "versionTxt";
            this.versionTxt.ReadOnly = true;
            this.versionTxt.Size = new System.Drawing.Size(100, 20);
            this.versionTxt.TabIndex = 8;
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(68, 130);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(100, 20);
            this.serialTxt.TabIndex = 7;
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(68, 93);
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(100, 20);
            this.nameTxt.TabIndex = 6;
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(68, 60);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(100, 20);
            this.attachedTxt.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 208);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Servos:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 170);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Version:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 133);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Serial No.:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 96);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Name:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 63);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Attached:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(288, 446);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Servo-multi";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.positionTrk)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TrackBar positionTrk;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox positionTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox servoNumCombo;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox controllerCmb;
        private System.Windows.Forms.TextBox servosTxt;
        private System.Windows.Forms.TextBox versionTxt;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}

