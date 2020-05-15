using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class GenerateBill : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    double a, b, c;
    int i, count;
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    
    {
        if (!Page.IsPostBack)
        {
            if (Session["OrderNo"] != null && Session["OrderDesc"] != null && Session["Amount"] != null)
            {
                dt = obj.GetBillNo();
                if (dt.Rows.Count > 0)
                {
                    if (Convert.ToInt32(dt.Rows[0]["BillNo"]) == 0)
                    {
                        lbl1.Text = "Bill No.001";

                    }

                    if (Convert.ToInt32(dt.Rows[0]["BillNo"]) > 0)
                    {
                        count = Convert.ToInt32(dt.Rows[0]["BillNo"]) + 1;
                        lbl1.Text = "Bill No." + count.ToString();
                    }
                }

                if (dt.Rows.Count <= 0)
                {
                    lbl1.Text = "Bill No.001";
                }
                lbl2.Text = Session["OrderNo"].ToString();
                lbl3.Text = Session["OrderDesc"].ToString();
                lbl4.Text = Session["Amount"].ToString();
                a = Convert.ToDouble(Session["Amount"].ToString());
                b = Convert.ToDouble(0.06)*a;
                c = a + b;
                lbl6.Text = c.ToString();
                lbl7.Text = DateTime.Today.ToString("dd-MM-yyyy");
                i = obj.AddBill(lbl1.Text, lbl2.Text, lbl3.Text, Convert.ToDecimal(lbl4.Text), "6%", Convert.ToDecimal(lbl6.Text), "Yes", "User", DateTime.Now.ToString());
                if (i > 0)
                {

                }
            }
        }
    }
}