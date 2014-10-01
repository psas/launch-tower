/* - Manager full -
 * This example creates a data grid view that will display the details of the different Phidgets
 * devices that ar currently connected to the machine.
 *
 * Copyright 2007 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Phidgets; //needed for the Manager class and the other device classes
using Phidgets.Events; //needed for the phidget event handling classes
using System.Collections; //neded for the arraylist I am using to populate the data grid view

namespace Manager_full
{
    public partial class Form1 : Form
    {
        public Manager man; //declare a manager object

        public Form1()
        {
            InitializeComponent();
        }

        //initialize our phidgets manager
        private void Form1_Load(object sender, EventArgs e)
        {
            man = new Manager();

            dataGridView1.ColumnCount = 4;

            dataGridView1.Columns[0].Name = "Device Name";
            dataGridView1.Columns[0].Width = 150;
            dataGridView1.Columns[0].MinimumWidth = 150;
            dataGridView1.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dataGridView1.Columns[1].Name = "Serial No.";
            dataGridView1.Columns[1].Width = 80;
            dataGridView1.Columns[1].MinimumWidth = 80;
            dataGridView1.Columns[2].Name = "Version";
            dataGridView1.Columns[2].Width = 75;
            dataGridView1.Columns[2].MinimumWidth = 75;
            dataGridView1.Columns[3].Name = "Attached";
            dataGridView1.Columns[3].Width = 75;
            dataGridView1.Columns[3].MinimumWidth = 75;

            man.Attach += new AttachEventHandler(man_Attach);
            man.Detach += new DetachEventHandler(man_Detach);
            man.Error += new ErrorEventHandler(man_Error);

            //man.open("localhost", 5001);
            man.open();

            label3.Text = Phidget.LibraryVersion;  //Display the library version on the form.
        }

        //attach event handling code....we will add a row for te newly attached device
        void man_Attach(object sender, AttachEventArgs e)
        {
            
            string[] newRow = {e.Device.Name, e.Device.SerialNumber.ToString(), e.Device.Version.ToString(), e.Device.Attached.ToString()};
            dataGridView1.Rows.Add(newRow);
        }

        //detach event handling code...we will remove the row in the data table that holds the information for the detached device
        void man_Detach(object sender, DetachEventArgs e)
        {
            foreach (DataGridViewRow row in dataGridView1.Rows)
            {
                if (row.Cells[1].Value.Equals(e.Device.SerialNumber.ToString()))
                {
                    dataGridView1.Rows.Remove(row);
                    return;
                }
            }
        }

        //error event handling code...we will simply display the error message in a popup message box
        void man_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Description);
        }

        //When the application is being terminated, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            man.Attach -= new AttachEventHandler(man_Attach);
            man.Detach -= new DetachEventHandler(man_Detach);
            man.Error -= new ErrorEventHandler(man_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            man.close();
        }
    }
}