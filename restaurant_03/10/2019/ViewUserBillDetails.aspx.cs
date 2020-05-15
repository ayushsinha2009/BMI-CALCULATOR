using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ViewUserBillDetails : System.Web.UI.Page
{
    #region Data Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dt = obj.SelectBillNo();
            gvdetails.DataSource = dt;
            gvdetails.DataBind();
        }

    }
    #endregion
}