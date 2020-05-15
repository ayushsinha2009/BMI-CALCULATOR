using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PrintOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["OrderNo"] != null && Session["OrderDesc"] != null && Session["TableNo"] != null && Session["Staff"] != null && Session["Amount"] != null)
            {
                lbl1.Text = Session["OrderNo"].ToString();
                lbl2.Text = Session["OrderDesc"].ToString();
                lbl3.Text = Session["TableNo"].ToString();
                lbl4.Text = Session["Staff"].ToString();
                lbl5.Text = Session["Amount"].ToString();
                lbl6.Text = DateTime.Today.ToString("dd-MM-yyyy");
            }
        }
    }
}