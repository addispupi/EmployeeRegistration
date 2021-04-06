using System.Data.SqlClient;
using System.Windows.Forms;

namespace RCD2010CIUD
{
    class ConnectionClass
    {
        SqlConnection dbconnection;
        string conString;

        public SqlConnection Connection()
        {
            conString = @"Data Source=GASHAASE;Initial Catalog=employeeC;Integrated Security=True";
            dbconnection = new SqlConnection(conString);
            try
            {
                dbconnection.Open();
                //MessageBox.Show("Dtabase has Connected Successfully!");
                return dbconnection;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }
    }
}
