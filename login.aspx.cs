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
    public partial class login : System.Web.UI.Page
    {
        DataTable dt;
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (SqlDBHelper.ExecuteDataSet(out dt, "Select email, id_user from users where email = @email and password = @password", CommandType.Text, new NpgsqlParameter("@email", TextBox1.Text), new NpgsqlParameter("@password", TextBox3.Text)))
            {

                int row = 0;
                int index = 0;
                int r = 0;
                int i = 1;
                if (dt.Rows.Count > 0)
                {
                    string value1 = dt.Rows[row][index].ToString();
                    string value2 = dt.Rows[r][i].ToString();
                    //TextBox1.Text = value2;
                    if (SqlDBHelper.ExecuteNonQuery("Insert into login(id_user) values(@us)", CommandType.Text, new NpgsqlParameter("@us", Convert.ToInt32(value2))))
                    {
                        Response.Redirect("/Maindashboard.aspx");
                    }

                    //lblmsg2.Text = Convert.ToString(value1);
                }
                else
                {
                    TextBox1.Text = ""; TextBox3.Text = "";
                    lblmsg2.Text = "Email atau Password yang Anda masukkan Salah, Mohon Diperiksa Kembali";
                }
            }
            else
            {
                TextBox1.Text = ""; TextBox3.Text = "";
                lblmsg2.Text = "Email atau Password yang Anda masukkan Salah, Mohon Diperiksa Kembali";
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

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}