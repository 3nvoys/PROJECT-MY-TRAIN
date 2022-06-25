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
    public partial class Topic9 : System.Web.UI.Page
    {
        protected void btnInsertion_Click(object sender, EventArgs e)
        {
            if (SqlDBHelper.ExecuteNonQuery("Insert into account values(@id,@username,@password)", CommandType.Text, new NpgsqlParameter("@id", Convert.ToInt32(txtPlayerID.Text)), new NpgsqlParameter("@username", txtUsername.Text), new NpgsqlParameter("@password", txtPassword.Text)))
            {
                txtPlayerID.Text = ""; txtUsername.Text = ""; txtPassword.Text = "";
                GridView1.Visible = false;
                lblmessage2.Text = String.Empty;
                lblmessage.Text = String.Empty;
                lblmsg2.Text = String.Empty;
                lblmsg.Text = "Data Has been Saved";
            }

            else
            {
                txtPlayerID.Text = ""; txtUsername.Text = ""; txtPassword.Text = "";
                GridView1.Visible = false;
                lblmessage2.Text = String.Empty;
                lblmessage.Text = String.Empty;
                lblmsg.Text = String.Empty;
                lblmsg2.Text = "Failed, ID and Username Should Be Unique";
            }

        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            DataTable dt;
            if (SqlDBHelper.ExecuteDataSet(out dt, "select station_name, train_name, run_time, arrived, TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as jam_berangkat from station s join train_station ts on (s.id_station = ts.id_station) join runtime_train rt on (rt.id_runtime = ts.id_runtime) join train t on (t.id_train = ts.id_train) where city ilike 'Banyuwangi' and city_to ilike 'jember' and run_time = '04:00:00' and TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') = '01 - 07 - 2022'", CommandType.Text))            
            {
                //where city ilike 'Banyuwangi' and city_to ilike 'jember' and run_time = '04:00:00'"
                //and TO_CHAR(run_date :: DATE, 'dd - mm - yyyy') as run_date = '2022-07-01'
                //if (SqlDBHelper.ExecuteDataSet(out dt, "Select * from account order by id", CommandType.Text))
                txtUsername.Text = ""; txtPlayerID.Text = ""; txtPassword.Text = "";
                lblmsg.Text = String.Empty;
                lblmsg2.Text = String.Empty;
                lblmessage.Text = String.Empty;
                lblmessage2.Text = String.Empty;
                GridView1.DataSource = dt;
                GridView1.Visible = true;
                GridView1.DataBind();
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            txtUsername.Text = ""; txtPlayerID.Text = ""; txtPassword.Text = "";
            lblmsg.Text = String.Empty;
            lblmsg2.Text = String.Empty;
            lblmessage.Text = String.Empty;
            lblmessage2.Text = String.Empty;
            GridView1.Visible = false;
        }
        protected void btnUpdation_Click(object sender, EventArgs e)
        {
            if (SqlDBHelper.ExecuteNonQuery("update account set id=@id, username=@username, password=@password where id=@id", CommandType.Text, new NpgsqlParameter("@id", Convert.ToInt32(txtPlayerID.Text)), new NpgsqlParameter("@username", txtUsername.Text), new NpgsqlParameter("@password", txtPassword.Text)))
            {
                txtUsername.Text = ""; txtPlayerID.Text = ""; txtPassword.Text = "";
                GridView1.Visible = false;
                lblmessage.Text = String.Empty;
                lblmessage2.Text = String.Empty;
                lblmsg2.Text = String.Empty;
                lblmsg.Text = "Data Has been Updated";
            }
            else
            {
                txtPlayerID.Text = ""; txtUsername.Text = ""; txtPassword.Text = "";
                GridView1.Visible = false;
                lblmessage.Text = String.Empty;
                lblmessage2.Text = String.Empty;
                lblmsg.Text = String.Empty;
                lblmsg2.Text = "Failed, ID and Username Should Be Unique";
            }

        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string var;
            var = txtPlyrID.Text;
            if (var == "")
            {
                txtPlyrID.Text = "";
                GridView1.Visible = false;
                lblmsg.Text = String.Empty;
                lblmsg2.Text = String.Empty;
                lblmessage.Text = String.Empty;
                lblmessage2.Text = "Please Write the Correct ID";
            }
            else if (SqlDBHelper.ExecuteNonQuery("Delete from account where id=@id", CommandType.Text, new NpgsqlParameter("@id", Convert.ToInt32(txtPlyrID.Text))))
            {
                txtPlyrID.Text = "";
                GridView1.Visible = false;
                lblmsg.Text = String.Empty;
                lblmsg2.Text = String.Empty;
                lblmessage2.Text = String.Empty;
                lblmessage.Text = "Data Has been Deleted";
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

