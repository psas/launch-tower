namespace GPS_full
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.versiontxt = new System.Windows.Forms.TextBox();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.serialTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.attachedTxt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Close_GM = new System.Windows.Forms.Button();
            this.Open_GM = new System.Windows.Forms.Button();
            this.dateTxt = new System.Windows.Forms.Label();
            this.timeTxt = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.velTxt1 = new System.Windows.Forms.Label();
            this.altTxt1 = new System.Windows.Forms.Label();
            this.headTxt1 = new System.Windows.Forms.Label();
            this.latTxt1 = new System.Windows.Forms.Label();
            this.longTxt1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.headTxt = new System.Windows.Forms.TextBox();
            this.velTxt = new System.Windows.Forms.TextBox();
            this.altTxt = new System.Windows.Forms.TextBox();
            this.longTxt = new System.Windows.Forms.TextBox();
            this.latTxt = new System.Windows.Forms.TextBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.gMapControl1 = new GMap.NET.WindowsForms.GMapControl();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.versiontxt);
            this.groupBox1.Controls.Add(this.nameTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.serialTxt);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.attachedTxt);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(463, 110);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "GPS Details";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(212, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 20;
            this.label2.Text = "Name:";
            // 
            // versiontxt
            // 
            this.versiontxt.Location = new System.Drawing.Point(69, 71);
            this.versiontxt.Name = "versiontxt";
            this.versiontxt.ReadOnly = true;
            this.versiontxt.Size = new System.Drawing.Size(122, 20);
            this.versiontxt.TabIndex = 25;
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(256, 19);
            this.nameTxt.Multiline = true;
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.ReadOnly = true;
            this.nameTxt.Size = new System.Drawing.Size(163, 46);
            this.nameTxt.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 74);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 24;
            this.label4.Text = "Version:";
            // 
            // serialTxt
            // 
            this.serialTxt.Location = new System.Drawing.Point(69, 45);
            this.serialTxt.Name = "serialTxt";
            this.serialTxt.ReadOnly = true;
            this.serialTxt.Size = new System.Drawing.Size(122, 20);
            this.serialTxt.TabIndex = 23;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 48);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 22;
            this.label3.Text = "Serial No.:";
            // 
            // attachedTxt
            // 
            this.attachedTxt.Location = new System.Drawing.Point(69, 19);
            this.attachedTxt.Name = "attachedTxt";
            this.attachedTxt.ReadOnly = true;
            this.attachedTxt.Size = new System.Drawing.Size(122, 20);
            this.attachedTxt.TabIndex = 19;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 18;
            this.label1.Text = "Attached:";
            // 
            // Close_GM
            // 
            this.Close_GM.Enabled = false;
            this.Close_GM.Location = new System.Drawing.Point(397, 58);
            this.Close_GM.Name = "Close_GM";
            this.Close_GM.Size = new System.Drawing.Size(54, 35);
            this.Close_GM.TabIndex = 11;
            this.Close_GM.Text = "Close Map";
            this.Close_GM.UseVisualStyleBackColor = true;
            this.Close_GM.Click += new System.EventHandler(this.Close_GE_Click);
            // 
            // Open_GM
            // 
            this.Open_GM.Location = new System.Drawing.Point(337, 58);
            this.Open_GM.Name = "Open_GM";
            this.Open_GM.Size = new System.Drawing.Size(54, 35);
            this.Open_GM.TabIndex = 10;
            this.Open_GM.Text = "Open Map";
            this.Open_GM.UseVisualStyleBackColor = true;
            this.Open_GM.Click += new System.EventHandler(this.Open_GE_Click);
            // 
            // dateTxt
            // 
            this.dateTxt.AutoSize = true;
            this.dateTxt.Location = new System.Drawing.Point(6, 9);
            this.dateTxt.Name = "dateTxt";
            this.dateTxt.Size = new System.Drawing.Size(33, 13);
            this.dateTxt.TabIndex = 8;
            this.dateTxt.Text = "Date:";
            // 
            // timeTxt
            // 
            this.timeTxt.AutoSize = true;
            this.timeTxt.Location = new System.Drawing.Point(3, 9);
            this.timeTxt.Name = "timeTxt";
            this.timeTxt.Size = new System.Drawing.Size(33, 13);
            this.timeTxt.TabIndex = 7;
            this.timeTxt.Text = "Time:";
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Location = new System.Drawing.Point(13, 101);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(438, 378);
            this.panel1.TabIndex = 2;
            // 
            // velTxt1
            // 
            this.velTxt1.AutoSize = true;
            this.velTxt1.Location = new System.Drawing.Point(178, 45);
            this.velTxt1.Name = "velTxt1";
            this.velTxt1.Size = new System.Drawing.Size(47, 13);
            this.velTxt1.TabIndex = 12;
            this.velTxt1.Text = "Velocity:";
            // 
            // altTxt1
            // 
            this.altTxt1.AutoSize = true;
            this.altTxt1.Location = new System.Drawing.Point(15, 71);
            this.altTxt1.Name = "altTxt1";
            this.altTxt1.Size = new System.Drawing.Size(45, 13);
            this.altTxt1.TabIndex = 13;
            this.altTxt1.Text = "Altitude:";
            // 
            // headTxt1
            // 
            this.headTxt1.AutoSize = true;
            this.headTxt1.Location = new System.Drawing.Point(178, 71);
            this.headTxt1.Name = "headTxt1";
            this.headTxt1.Size = new System.Drawing.Size(50, 13);
            this.headTxt1.TabIndex = 14;
            this.headTxt1.Text = "Heading:";
            // 
            // latTxt1
            // 
            this.latTxt1.AutoSize = true;
            this.latTxt1.Location = new System.Drawing.Point(15, 19);
            this.latTxt1.Name = "latTxt1";
            this.latTxt1.Size = new System.Drawing.Size(48, 13);
            this.latTxt1.TabIndex = 15;
            this.latTxt1.Text = "Latitude:";
            // 
            // longTxt1
            // 
            this.longTxt1.AutoSize = true;
            this.longTxt1.Location = new System.Drawing.Point(15, 45);
            this.longTxt1.Name = "longTxt1";
            this.longTxt1.Size = new System.Drawing.Size(57, 13);
            this.longTxt1.TabIndex = 16;
            this.longTxt1.Text = "Longitude:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.pictureBox1);
            this.groupBox2.Controls.Add(this.headTxt);
            this.groupBox2.Controls.Add(this.velTxt);
            this.groupBox2.Controls.Add(this.altTxt);
            this.groupBox2.Controls.Add(this.longTxt);
            this.groupBox2.Controls.Add(this.latTxt);
            this.groupBox2.Controls.Add(this.Open_GM);
            this.groupBox2.Controls.Add(this.checkBox1);
            this.groupBox2.Controls.Add(this.Close_GM);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.groupBox4);
            this.groupBox2.Controls.Add(this.panel1);
            this.groupBox2.Controls.Add(this.latTxt1);
            this.groupBox2.Controls.Add(this.velTxt1);
            this.groupBox2.Controls.Add(this.headTxt1);
            this.groupBox2.Controls.Add(this.altTxt1);
            this.groupBox2.Controls.Add(this.longTxt1);
            this.groupBox2.Location = new System.Drawing.Point(12, 129);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(463, 98);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "GPS Data";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(295, 68);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(20, 20);
            this.pictureBox1.TabIndex = 25;
            this.pictureBox1.TabStop = false;
            // 
            // headTxt
            // 
            this.headTxt.Location = new System.Drawing.Point(231, 68);
            this.headTxt.Name = "headTxt";
            this.headTxt.Size = new System.Drawing.Size(56, 20);
            this.headTxt.TabIndex = 24;
            // 
            // velTxt
            // 
            this.velTxt.Location = new System.Drawing.Point(231, 42);
            this.velTxt.Name = "velTxt";
            this.velTxt.Size = new System.Drawing.Size(84, 20);
            this.velTxt.TabIndex = 23;
            // 
            // altTxt
            // 
            this.altTxt.Location = new System.Drawing.Point(78, 68);
            this.altTxt.Name = "altTxt";
            this.altTxt.Size = new System.Drawing.Size(94, 20);
            this.altTxt.TabIndex = 22;
            // 
            // longTxt
            // 
            this.longTxt.Location = new System.Drawing.Point(78, 42);
            this.longTxt.Name = "longTxt";
            this.longTxt.Size = new System.Drawing.Size(94, 20);
            this.longTxt.TabIndex = 21;
            // 
            // latTxt
            // 
            this.latTxt.Location = new System.Drawing.Point(78, 16);
            this.latTxt.Name = "latTxt";
            this.latTxt.Size = new System.Drawing.Size(94, 20);
            this.latTxt.TabIndex = 20;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoCheck = false;
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(231, 18);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(84, 17);
            this.checkBox1.TabIndex = 19;
            this.checkBox1.Text = "Fix Acquired";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.timeTxt);
            this.groupBox3.Location = new System.Drawing.Point(339, 7);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(112, 26);
            this.groupBox3.TabIndex = 17;
            this.groupBox3.TabStop = false;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dateTxt);
            this.groupBox4.Location = new System.Drawing.Point(339, 29);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(112, 26);
            this.groupBox4.TabIndex = 18;
            this.groupBox4.TabStop = false;
            // 
            // gMapControl1
            // 
            this.gMapControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.gMapControl1.CanDragMap = true;
            this.gMapControl1.GrayScaleMode = false;
            this.gMapControl1.LevelsKeepInMemmory = 5;
            this.gMapControl1.Location = new System.Drawing.Point(12, 234);
            this.gMapControl1.MapType = GMap.NET.MapType.GoogleMap;
            this.gMapControl1.MarkersEnabled = true;
            this.gMapControl1.MaxZoom = 20;
            this.gMapControl1.MinZoom = 1;
            this.gMapControl1.MouseWheelZoomType = GMap.NET.MouseWheelZoomType.MousePositionAndCenter;
            this.gMapControl1.Name = "gMapControl1";
            this.gMapControl1.PolygonsEnabled = true;
            this.gMapControl1.RetryLoadTile = 0;
            this.gMapControl1.RoutesEnabled = true;
            this.gMapControl1.ShowTileGridLines = false;
            this.gMapControl1.Size = new System.Drawing.Size(463, 333);
            this.gMapControl1.TabIndex = 4;
            this.gMapControl1.Zoom = 18;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(23, 573);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(131, 22);
            this.button1.TabIndex = 11;
            this.button1.Text = "Map View";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(332, 573);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(131, 22);
            this.button2.TabIndex = 12;
            this.button2.Text = "Satellite View";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(179, 573);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(131, 22);
            this.button3.TabIndex = 13;
            this.button3.Text = "Hybrid View";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.BackColor = System.Drawing.Color.Red;
            this.pictureBox2.Location = new System.Drawing.Point(241, 398);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(5, 5);
            this.pictureBox2.TabIndex = 14;
            this.pictureBox2.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(489, 233);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.gMapControl1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "GPS-full";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label dateTxt;
        private System.Windows.Forms.Label timeTxt;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Close_GM;
        private System.Windows.Forms.Button Open_GM;
        private System.Windows.Forms.Label velTxt1;
        private System.Windows.Forms.Label altTxt1;
        private System.Windows.Forms.Label headTxt1;
        private System.Windows.Forms.Label latTxt1;
        private System.Windows.Forms.Label longTxt1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox versiontxt;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox serialTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox attachedTxt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TextBox headTxt;
        private System.Windows.Forms.TextBox velTxt;
        private System.Windows.Forms.TextBox altTxt;
        private System.Windows.Forms.TextBox longTxt;
        private System.Windows.Forms.TextBox latTxt;
        private GMap.NET.WindowsForms.GMapControl gMapControl1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
    }
}

