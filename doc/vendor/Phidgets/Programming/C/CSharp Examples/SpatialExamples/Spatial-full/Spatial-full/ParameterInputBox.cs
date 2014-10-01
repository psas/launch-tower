using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Spatial_full
{
    public partial class ParameterInputBox : Form
    {
        public ParameterInputBox()
        {
            InitializeComponent();
            okButton.DialogResult = DialogResult.OK;
            cancelButton.DialogResult = DialogResult.Cancel;
        }

        public ParameterInputBox(string param)
        {
            InitializeComponent();
            okButton.DialogResult = DialogResult.OK;
            cancelButton.DialogResult = DialogResult.Cancel;
            textBox.Text = param;
        }

        public String parameters
        {
            get
            {
                return textBox.Text;
            }
        }
    }
}