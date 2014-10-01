using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Encoder_full
{
    public partial class TextInputBox : Form
    {
        public TextInputBox()
        {
            InitializeComponent();
        }

        public TextInputBox(String title, String string1, String string2)
        {
            InitializeComponent();
            this.Text = title;
            message1.Text = string1;
            message2.Text = string2;

            okButton.DialogResult = DialogResult.OK;
            cancelButton.DialogResult = DialogResult.Cancel;
        }

        public String password
        {
            get
            {
                return passwordBox.Text;
            }
        }
    }
}