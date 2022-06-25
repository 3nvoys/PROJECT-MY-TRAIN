﻿using Npgsql;
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
    public partial class changeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (SqlDBHelper.ExecuteDataSet(out dt, "Select id_user from login", CommandType.Text))
            {
                if (!IsPostBack)
                {
                    city();
                    city_to();
                    runtime();
                    rundate();
                    seat();
                }
                int row = 0;
                int index = 0;
                if (dt.Rows.Count > 0)
                {
                    string value1 = dt.Rows[row][index].ToString();
                    if (SqlDBHelper.ExecuteDataSet(out dt, "select dt.id_detail_tiket as id_tiket, nama as nama, train_name as nama_kereta, seat_name as seat, run_time as berangkat_pukul, run_date as berangkat_tanggal, price as harga from users u join detail_tiket dt on (u.id_user = dt.id_user) join detail_seat ds on (ds.id_ds = dt.id_ds) join seat s on (s.id_seat = ds.id_seat) join train_station ts on (ts.id_ts = ds.id_ts) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train) join station son on (son.id_station = ts.id_station) join login l on (u.id_user = l.id_user) join price p on (p.id_price = ts.id_price) where l.id_user = " + Convert.ToInt32(value1), CommandType.Text))
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
        private void city()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = localhost; Port = 1305; Database = MyTrain; User Id = postgres; Password = yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select s.id_station, s.city, run_time, arrived, TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as jam_berangkat from station s join train_station ts on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train)";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "city";
            DropDownList1.DataValueField = "id_station";
            DropDownList1.DataBind();
        }
        private void city_to()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = localhost; Port = 1305; Database = MyTrain; User Id = postgres; Password = yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select rt.id_runtime, rt.city_to, run_time, arrived, TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as jam_berangkat from station s join train_station ts on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train)";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "city_to";
            DropDownList2.DataValueField = "id_runtime";
            DropDownList2.DataBind();
        }
        private void runtime()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = localhost; Port = 1305; Database = MyTrain; User Id = postgres; Password = yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select rt.id_runtime, run_time, run_time, arrived, TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as jam_berangkat from station s join train_station ts on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train)";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList3.DataSource = ds.Tables[0];
            DropDownList3.DataTextField = "run_time";
            DropDownList3.DataValueField = "id_runtime";
            DropDownList3.DataBind();
        }
        private void rundate()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = localhost; Port = 1305; Database = MyTrain; User Id = postgres; Password = yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as run_date from train_station group by run_date";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList4.DataSource = ds.Tables[0];
            DropDownList4.DataTextField = "run_date";
            DropDownList4.DataValueField = "run_date";
            DropDownList4.DataBind();
        }
        private void seat()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = localhost; Port = 1305; Database = MyTrain; User Id = postgres; Password = yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from seat";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList5.DataSource = ds.Tables[0];
            DropDownList5.DataTextField = "seat_name";
            DropDownList5.DataValueField = "id_seat";
            DropDownList5.DataBind();
        }
        public void gv()
        {
            DataTable dt;
            if (SqlDBHelper.ExecuteDataSet(out dt, "select ts.id_ts as id, station_name, train_name, run_time, arrived, TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as tanggal_berangkat, price from station s join train_station ts on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train) join price p on (p.id_price = ts.id_price) where city ilike '" + DropDownList1.SelectedItem.Text + "' and rt.city_to ilike '" + DropDownList2.SelectedItem.Text + "' and run_time = '" + DropDownList3.SelectedItem.Text + "' and TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') = '" + DropDownList4.SelectedItem.Text + "'", CommandType.Text))
            {
                GridView2.DataSource = dt;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            gv();
            GridView2.Visible = true;
            GridView2.DataBind();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (SqlDBHelper.ExecuteDataSet(out dt, "select id_user from login", CommandType.Text))
            {

                int row = 0;
                int index = 0;
                if (dt.Rows.Count > 0)
                {
                    string value1 = dt.Rows[row][index].ToString();
                    if (SqlDBHelper.ExecuteDataSet(out dt, "select ds.id_seat, id_ds from detail_seat ds join seat s on(s.id_seat = ds.id_seat) where seat_name = '" + DropDownList5.SelectedItem.Text + "' and id_ts = '" + Convert.ToInt32(TextBox2.Text) + "'", CommandType.Text))
                    {

                        int r = 0;
                        int i = 0;
                        int ro = 0;
                        int ind = 1;
                        if (dt.Rows.Count > 0)
                        {
                            string value2 = dt.Rows[r][i].ToString();
                            string value3 = dt.Rows[ro][ind].ToString();
                            if (SqlDBHelper.ExecuteNonQuery("UPDATE detail_tiket set id_ds = @ds where id_detail_tiket = @dt and id_user = @us", CommandType.Text, new NpgsqlParameter("@ds", Convert.ToInt32(value3)), new NpgsqlParameter("@us", Convert.ToInt32(value1)), new NpgsqlParameter("@dt", Convert.ToInt32(TextBox1.Text))))
                            {
                                //GridView1.Visible = false;
                                Label1.Text = "Pemesanan Telah Suses Diubah, SIlahkan Datang Ke Stasiun Sesuai Jadwal yang Telah Dipesan";
                                Label1.ForeColor = System.Drawing.Color.White;
                            }
                            else
                            {
                                Label1.Text = "GAGAL MEMESAN";
                                Label1.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
            }
        }
    }
}