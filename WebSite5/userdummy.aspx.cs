using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class userdummy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["DASC"].ConnectionString;
        SqlConnection Con = new SqlConnection(cs);
        String Query = "insert into userdemo1(name,email) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        SqlCommand cmd = new SqlCommand(Query,Con);
        Con.Open();
        cmd.ExecuteNonQuery();
        Con.Close();
        Response.Write("Sucess");
    }
}