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
    public partial class Maindashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gv();
        }
        public void gv()
        {
            DataTable dt;
            if (SqlDBHelper.ExecuteDataSet(out dt, "select train_name as Nama_Kereta, city as Kota, city_to as Kota_Tujuan, run_time as Jam_Berangkat, arrived as Jam_Tiba, run_date as Tanggal_Keberangkatan from train t join train_station ts on (t.id_train = ts.id_train) join station s on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime)", CommandType.Text))
            {
                GridView1.DataSource = dt;
                GridView1.Visible = true;
                GridView1.DataBind();
                GridView1.Visible = true;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/caritiket.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/cekorder.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Cancelorder.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (SqlDBHelper.ExecuteDataSet(out dt, "Select id_user from login", CommandType.Text))
            {
                int row = 0;
                int index = 0;
                int r = 0;
                int i = 1;
                if (dt.Rows.Count > 0)
                {
                    string value1 = dt.Rows[row][index].ToString();
                    if (SqlDBHelper.ExecuteNonQuery("delete from login where id_user = @us", CommandType.Text, new NpgsqlParameter("@us", Convert.ToInt32(value1))))
                    {
                        Response.Redirect("/login.aspx");
                    }
                }
                
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/changeorder.aspx");
        }
    }
}