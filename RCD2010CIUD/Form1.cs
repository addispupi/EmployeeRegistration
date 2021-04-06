using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace RCD2010CIUD
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            ConnectionClass cm = new ConnectionClass();
            cm.Connection();

            SqlCommand cmd = new SqlCommand("dbo.sp_InsertEmployee", cm.Connection());
            cmd.CommandType = CommandType.StoredProcedure;

            //create parameter
            var gender = this.combGender.GetItemText(this.combGender.SelectedItem);

            cmd.Parameters.AddWithValue("EmpId", txtEmpID.Text);
            cmd.Parameters.AddWithValue("EmpName", txtEmpName.Text);
            cmd.Parameters.AddWithValue("EmpDOB", dtpDOB.Value);
            cmd.Parameters.AddWithValue("EmpGender", gender);
            cmd.Parameters.AddWithValue("EmpAddress", txtAddress.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("The Record is Added Sccussfully!");
            ClearFeilds();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearFeilds();
        }

        private void ClearFeilds()
        {
            txtEmpID.Text = "";
            txtEmpName.Text = "";
            dtpDOB.ResetText();
            combGender.SelectedItem = null;
            txtAddress.Text = "";
        }
    }
}
