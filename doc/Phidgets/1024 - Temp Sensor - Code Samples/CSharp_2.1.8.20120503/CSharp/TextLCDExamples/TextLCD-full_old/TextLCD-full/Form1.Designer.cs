namespace TextLCD_full
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
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.versionText = new System.Windows.Forms.TextBox();
            this.serialText = new System.Windows.Forms.TextBox();
            this.nameText = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.attachedText = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.attachedLabel = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.customChrChk = new System.Windows.Forms.CheckBox();
            this.cursorBlinkChk = new System.Windows.Forms.CheckBox();
            this.contrastTrkBr = new System.Windows.Forms.TrackBar();
            this.label1 = new System.Windows.Forms.Label();
            this.cursorChk = new System.Windows.Forms.CheckBox();
            this.backlightChk = new System.Windows.Forms.CheckBox();
            this.clearBtn = new System.Windows.Forms.Button();
            this.dispText2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dispText1 = new System.Windows.Forms.TextBox();
            this.brightnessTrkBr = new System.Windows.Forms.TrackBar();
            this.brightnessLbl = new System.Windows.Forms.Label();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.contrastTrkBr)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.brightnessTrkBr)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.versionText);
            this.groupBox2.Controls.Add(this.serialText);
            this.groupBox2.Controls.Add(this.nameText);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.attachedText);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.attachedLabel);
            this.groupBox2.Location = new System.Drawing.Point(12, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(247, 242);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Device Info";
            // 
            // versionText
            // 
            this.versionText.Location = new System.Drawing.Point(65, 163);
            this.versionText.Name = "versionText";
            this.versionText.ReadOnly = true;
            this.versionText.Size = new System.Drawing.Size(176, 20);
            this.versionText.TabIndex = 5;
            // 
            // serialText
            // 
            this.serialText.Location = new System.Drawing.Point(65, 129);
            this.serialText.Name = "serialText";
            this.serialText.ReadOnly = true;
            this.serialText.Size = new System.Drawing.Size(176, 20);
            this.serialText.TabIndex = 4;
            // 
            // nameText
            // 
            this.nameText.Location = new System.Drawing.Point(65, 67);
            this.nameText.Multiline = true;
            this.nameText.Name = "nameText";
            this.nameText.ReadOnly = true;
            this.nameText.Size = new System.Drawing.Size(176, 45);
            this.nameText.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 166);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(45, 13);
            this.label5.TabIndex = 2;
            this.label5.Text = "Version:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 132);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Serial No.:";
            // 
            // attachedText
            // 
            this.attachedText.Location = new System.Drawing.Point(65, 34);
            this.attachedText.Name = "attachedText";
            this.attachedText.ReadOnly = true;
            this.attachedText.Size = new System.Drawing.Size(176, 20);
            this.attachedText.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 70);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Name:";
            // 
            // attachedLabel
            // 
            this.attachedLabel.AutoSize = true;
            this.attachedLabel.Location = new System.Drawing.Point(6, 37);
            this.attachedLabel.Name = "attachedLabel";
            this.attachedLabel.Size = new System.Drawing.Size(53, 13);
            this.attachedLabel.TabIndex = 0;
            this.attachedLabel.Text = "Attached:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.brightnessTrkBr);
            this.groupBox1.Controls.Add(this.brightnessLbl);
            this.groupBox1.Controls.Add(this.customChrChk);
            this.groupBox1.Controls.Add(this.cursorBlinkChk);
            this.groupBox1.Controls.Add(this.contrastTrkBr);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.cursorChk);
            this.groupBox1.Controls.Add(this.backlightChk);
            this.groupBox1.Controls.Add(this.clearBtn);
            this.groupBox1.Controls.Add(this.dispText2);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.dispText1);
            this.groupBox1.Location = new System.Drawing.Point(265, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(268, 242);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "LCD Control";
            // 
            // customChrChk
            // 
            this.customChrChk.AutoSize = true;
            this.customChrChk.Location = new System.Drawing.Point(124, 142);
            this.customChrChk.Name = "customChrChk";
            this.customChrChk.Size = new System.Drawing.Size(115, 17);
            this.customChrChk.TabIndex = 14;
            this.customChrChk.Text = "Custom Characters";
            this.customChrChk.UseVisualStyleBackColor = true;
            this.customChrChk.CheckedChanged += new System.EventHandler(this.customChrChk_CheckedChanged);
            // 
            // cursorBlinkChk
            // 
            this.cursorBlinkChk.AutoSize = true;
            this.cursorBlinkChk.Location = new System.Drawing.Point(124, 119);
            this.cursorBlinkChk.Name = "cursorBlinkChk";
            this.cursorBlinkChk.Size = new System.Drawing.Size(82, 17);
            this.cursorBlinkChk.TabIndex = 13;
            this.cursorBlinkChk.Text = "Cursor Blink";
            this.cursorBlinkChk.UseVisualStyleBackColor = true;
            this.cursorBlinkChk.CheckedChanged += new System.EventHandler(this.cursorBlinkChk_CheckedChanged);
            // 
            // contrastTrkBr
            // 
            this.contrastTrkBr.Location = new System.Drawing.Point(61, 166);
            this.contrastTrkBr.Maximum = 255;
            this.contrastTrkBr.Name = "contrastTrkBr";
            this.contrastTrkBr.Size = new System.Drawing.Size(201, 42);
            this.contrastTrkBr.TabIndex = 12;
            this.contrastTrkBr.TickFrequency = 10;
            this.contrastTrkBr.Scroll += new System.EventHandler(this.contrastTrkBr_Scroll);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 170);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Contrast:";
            // 
            // cursorChk
            // 
            this.cursorChk.AutoSize = true;
            this.cursorChk.Location = new System.Drawing.Point(9, 142);
            this.cursorChk.Name = "cursorChk";
            this.cursorChk.Size = new System.Drawing.Size(56, 17);
            this.cursorChk.TabIndex = 10;
            this.cursorChk.Text = "Cursor";
            this.cursorChk.UseVisualStyleBackColor = true;
            this.cursorChk.CheckedChanged += new System.EventHandler(this.cursorChk_CheckedChanged);
            // 
            // backlightChk
            // 
            this.backlightChk.AutoSize = true;
            this.backlightChk.Location = new System.Drawing.Point(9, 119);
            this.backlightChk.Name = "backlightChk";
            this.backlightChk.Size = new System.Drawing.Size(70, 17);
            this.backlightChk.TabIndex = 9;
            this.backlightChk.Text = "Backlight";
            this.backlightChk.UseVisualStyleBackColor = true;
            this.backlightChk.CheckedChanged += new System.EventHandler(this.backlightChk_CheckedChanged);
            // 
            // clearBtn
            // 
            this.clearBtn.Location = new System.Drawing.Point(94, 89);
            this.clearBtn.Name = "clearBtn";
            this.clearBtn.Size = new System.Drawing.Size(75, 23);
            this.clearBtn.TabIndex = 7;
            this.clearBtn.Text = "Clear";
            this.clearBtn.UseVisualStyleBackColor = true;
            this.clearBtn.Click += new System.EventHandler(this.clearBtn_Click);
            // 
            // dispText2
            // 
            this.dispText2.Location = new System.Drawing.Point(6, 63);
            this.dispText2.Name = "dispText2";
            this.dispText2.Size = new System.Drawing.Size(256, 20);
            this.dispText2.TabIndex = 6;
            this.dispText2.TextChanged += new System.EventHandler(this.dispText2_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Display text:";
            // 
            // dispText1
            // 
            this.dispText1.Location = new System.Drawing.Point(6, 37);
            this.dispText1.Name = "dispText1";
            this.dispText1.Size = new System.Drawing.Size(256, 20);
            this.dispText1.TabIndex = 0;
            this.dispText1.TextChanged += new System.EventHandler(this.dispText1_TextChanged);
            // 
            // brightnessTrkBr
            // 
            this.brightnessTrkBr.Location = new System.Drawing.Point(61, 198);
            this.brightnessTrkBr.Maximum = 255;
            this.brightnessTrkBr.Name = "brightnessTrkBr";
            this.brightnessTrkBr.Size = new System.Drawing.Size(201, 42);
            this.brightnessTrkBr.TabIndex = 16;
            this.brightnessTrkBr.TickFrequency = 10;
            this.brightnessTrkBr.Visible = false;
            this.brightnessTrkBr.Scroll += new System.EventHandler(this.brightnessTrkBr_Scroll);
            // 
            // brightnessLbl
            // 
            this.brightnessLbl.AutoSize = true;
            this.brightnessLbl.Location = new System.Drawing.Point(6, 203);
            this.brightnessLbl.Name = "brightnessLbl";
            this.brightnessLbl.Size = new System.Drawing.Size(59, 13);
            this.brightnessLbl.TabIndex = 15;
            this.brightnessLbl.Text = "Brightness:";
            this.brightnessLbl.Visible = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(544, 265);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(552, 292);
            this.MinimumSize = new System.Drawing.Size(552, 292);
            this.Name = "Form1";
            this.Text = "TextLCD-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.contrastTrkBr)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.brightnessTrkBr)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox versionText;
        private System.Windows.Forms.TextBox serialText;
        private System.Windows.Forms.TextBox nameText;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox attachedText;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label attachedLabel;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.CheckBox customChrChk;
        private System.Windows.Forms.CheckBox cursorBlinkChk;
        private System.Windows.Forms.TrackBar contrastTrkBr;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox cursorChk;
        private System.Windows.Forms.CheckBox backlightChk;
        private System.Windows.Forms.Button clearBtn;
        private System.Windows.Forms.TextBox dispText2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox dispText1;
        private System.Windows.Forms.TrackBar brightnessTrkBr;
        private System.Windows.Forms.Label brightnessLbl;
    }
}

