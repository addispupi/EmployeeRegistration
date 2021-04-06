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
    public partial class frmStartcs : Form
    {
        public frmStartcs()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmEmplist EmpList = new frmEmplist();
            EmpList.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 EmpReg = new Form1();
            EmpReg.Show();
        }
    }
}
