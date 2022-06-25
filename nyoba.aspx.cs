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
    public partial class nyoba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server=localhost; Port=1305; Database=MyTrain; User Id=postgres; Password=yanu2003");
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from station";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "station_name";
            DropDownList2.DataValueField = "id_station";
            DropDownList2.DataBind();
        }
        //DataTable dt;
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //if (SqlDBHelper.ExecuteDataSet(out dt, "Select station_name from station", CommandType.Text))
            //{


            //    int row = 0;
            //    int index = 0;
            //    if (dt.Rows.Count > 0)
            //    {
            //        string value1 = dt.Rows[row][index].ToString();
            //        Response.Redirect("/default.aspx");
            //        //lblmsg2.Text = Convert.ToString(value1);
            //    }
            //    else
            //    {
            //        TextBox1.Text = ""; TextBox3.Text = "";
            //        lblmsg2.Text = "Email atau Password yang Anda masukkan Salah, Mohon Diperiksa Kembali";
            //    }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
 }

 
