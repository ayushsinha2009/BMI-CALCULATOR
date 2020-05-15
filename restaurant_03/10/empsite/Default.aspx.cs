using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    #region Class Declartion
    Datobjects onj = new Datobjects();
    int i,j;
    #endregion
#region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            i = onj.AddEmployee("Swati Singh", "Alambagh Lucknow", "Admin", DateTime.Now.ToString(), "null", "null");
            j = onj.AddStudent("Swati Singh", "Alambagh Lucknow", "Admin", DateTime.Now.ToString(), "null", "null");

        }
    }
#endregion
}