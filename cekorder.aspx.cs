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
    public partial class cekorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    if (SqlDBHelper.ExecuteDataSet(out dt, "select nama as nama, train_name as nama_kereta, seat_name as seat, run_time as berangkat_pukul, run_date as berangkat_tanggal, price as harga from users u join detail_tiket dt on (u.id_user = dt.id_user) join detail_seat ds on (ds.id_ds = dt.id_ds) join seat s on (s.id_seat = ds.id_seat) join train_station ts on (ts.id_ts = ds.id_ts) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train) join station son on (son.id_station = ts.id_station) join login l on (u.id_user = l.id_user) join price p on (p.id_price = ts.id_price) where l.id_user = " + Convert.ToInt32(value1), CommandType.Text))
                    {
                        GridView1.DataSource = dt;
                        GridView1.Visible = true;
                        GridView1.DataBind();
                        GridView1.Visible = true;
                        GridView1.DataBind();
                    }
                }
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
    }
}