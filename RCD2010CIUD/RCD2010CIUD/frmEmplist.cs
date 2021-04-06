using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RCD2010CIUD
{
    public partial class frmEmplist : Form
    {
        public frmEmplist()
        {
            InitializeComponent();
        }

        private void tblEmployeeBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tblEmployeeBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.employeeCDataSet);

        }

        private void frmEmplist_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'employeeCDataSet.tblEmployee' table. You can move, or remove it, as needed.
            this.tblEmployeeTableAdapter.Fill(this.employeeCDataSet.tblEmployee);

        }
    }
}
