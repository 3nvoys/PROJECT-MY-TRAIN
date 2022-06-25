using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tugas5
{
    public partial class signup : System.Web.UI.Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (SqlDBHelper.ExecuteNonQuery("Insert into users(email, nama, password) values(@email,@nama,@password)", CommandType.Text, new NpgsqlParameter("@email", TextBox1.Text), new NpgsqlParameter("@nama", TextBox2.Text), new NpgsqlParameter("@password", TextBox3.Text)))
            {
                TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = "";
                //GridView1.Visible = false;
                lblmsg2.Text = "Akun telah selesai dibuat ";
                lblmsg2.ForeColor = System.Drawing.Color.Blue;
            }

            else
            {
                TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = "";
                lblmsg2.Text = "Failed";
                lblmsg2.ForeColor = System.Drawing.Color.Red;
            }

        }
        public static class SqlDBHelper
        {
            public static bool ExecuteDataSet(out DataTable dt, string sql, CommandType cmdType, params NpgsqlParameter[] parameters)
            {
                using (DataSet ds = new DataSet())
                using (NpgsqlConnection connStr = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString))
                using (NpgsqlCommand cmd = new NpgsqlCommand(sql, connStr))
                {
                    cmd.CommandType = cmdType;
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.Add(item);
                    }

                    try
                    {
                        cmd.Connection.Open();
                        new NpgsqlDataAdapter(cmd).Fill(ds);
                    }
                    catch (NpgsqlException ex)
                    {
                        dt = null;
                        return false;

                    }


                    dt = ds.Tables[0];
                    return true;
                }
            }
            public static bool ExecuteNonQuery(string sql, CommandType cmdType, params NpgsqlParameter[] parameters)
            {
                using (DataSet ds = new DataSet())
                using (NpgsqlConnection connStr = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString))
                using (NpgsqlCommand cmd = new NpgsqlCommand(sql, connStr))
                {
                    cmd.CommandType = cmdType;
                    foreach (var item in parameters)
                    {
                        cmd.Parameters.Add(item);
                    }

                    try
                    {

                        cmd.Connection.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (NpgsqlException ex)
                    {

                        return false;

                    }

                    return true;

                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}