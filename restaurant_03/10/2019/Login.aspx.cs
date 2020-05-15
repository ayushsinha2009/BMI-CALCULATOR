using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    string value;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
        }

    }
    #endregion

    #region Check Login
    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        dt = obj.CheckAdminLogin(txtusername.Text, txtpwd.Text);
        if (dt.Rows.Count > 0)
        {
            value = dt.Rows[0]["Createdby"].ToString();
            if (value == "Administrator")
            {
                Response.Redirect("AdminDashboard.aspx");
                txtusername.Text = "";
                txtpwd.Text = "";
            }
            if (value == "User")
            {
                Response.Redirect("UserDashboard.aspx");
                txtusername.Text = "";
                txtpwd.Text = "";
            }
            if (value == "Cashier")
            {
                Response.Redirect("UserDashboard.aspx");
                txtusername.Text = "";
                txtpwd.Text = "";
            }
        }
        if (dt.Rows.Count <= 0)
        {
            lblmsg.Text = "InValid Credentials";
            txtusername.Text = "";
            txtpwd.Text = "";
        }
    }
    #endregion
}