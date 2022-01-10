using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_location
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6H8AVCC;Initial Catalog=db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtName.Text=="")
                {
                    Response.Write("<script>alert('Please Enter Name')</script>");
                }
                else if(txtName.Text.Length>30)
                {
                    Response.Write("<script>alert('Please Enter valid Name')</script>");

                }
                else if (txtName.Text.Length < 2)
                {
                    Response.Write("<script>alert('Please Enter valid Name')</script>");

                }
                else if (txtMob.Text=="")
                {
                    Response.Write("<script>alert('please enter valid mobile number')</script>");

                }
                else if (txtMob.Text.Length >10)
                {
                    Response.Write("<script>alert('please enter valid  mobile number')</script>");

                }
                else if(txtMob.Text.Length < 10)
                {
                    Response.Write("<script>alert('please enter valid mobile number')</script>");
                }
                else if (ddlGender.Text=="Select")
                {
                    Response.Write("<script>alert('please select your gender')</script>");
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_insertrecord_for_tbl_test1", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id","");
                    cmd.Parameters.AddWithValue("@name",txtName.Text);
                    cmd.Parameters.AddWithValue("@emailid",txtEmail.Text);
                    cmd.Parameters.AddWithValue("@mobileno",txtMob.Text);
                    cmd.Parameters.AddWithValue("@gender",ddlGender.Text);
                    cmd.Parameters.AddWithValue("@Message",txtmsg.Text);
                    cmd.Parameters.AddWithValue("@status","Active");
                    int i=cmd.ExecuteNonQuery();
                    con.Close();
                    if(i>0)
                    {
                        txtName.Text = "";
                        txtEmail.Text = "";
                        txtMob.Text = "";
                        ddlGender.Text = "Select";
                        txtmsg.Text = "";

                        Response.Write("<script>alert('Record Saved')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('OOps! Something went wrong')</script>");
                    }
                }
                
            }

            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}