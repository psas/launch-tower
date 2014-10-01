namespace InterfaceKit_full.SensorExamples
{
    partial class BaseSensor
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.analogInputLabel0 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // analogInputLabel0
            // 
            this.analogInputLabel0.AutoSize = true;
            this.analogInputLabel0.Location = new System.Drawing.Point(3, 10);
            this.analogInputLabel0.Name = "analogInputLabel0";
            this.analogInputLabel0.Size = new System.Drawing.Size(37, 13);
            this.analogInputLabel0.TabIndex = 52;
            this.analogInputLabel0.Text = "Value:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(46, 7);
            this.textBox1.MaxLength = 3;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(63, 20);
            this.textBox1.TabIndex = 51;
            // 
            // BaseSensor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.analogInputLabel0);
            this.Controls.Add(this.textBox1);
            this.Name = "BaseSensor";
            this.Size = new System.Drawing.Size(317, 65);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label analogInputLabel0;
        private System.Windows.Forms.TextBox textBox1;
    }
}
