using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class CustomerComboOfferOrder : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4, dt5;
    decimal amnt;
    int i, count;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid_Combo();
        }
    }
    #endregion

    #region BindGridCombo
    public void BindGrid_Combo()
    {
        dt = obj.SelectMenuItemC();
        chkitem.DataSource = dt;
        chkitem.DataBind();
        dt1 = obj.SelectTable();
        ddntable.DataSource = dt1;
        ddntable.DataTextField = "TableName";
        ddntable.DataValueField = "TableId";
        ddntable.DataBind();
        ddntable.Items.Insert(0, new ListItem("-Select-", "0"));
        dt2 = obj.SelectStaffM();
        ddnstaff.DataSource = dt2;
        ddnstaff.DataTextField = "StaffName";
        ddnstaff.DataValueField = "StaffId";
        ddnstaff.DataBind();
        ddnstaff.Items.Insert(0, new ListItem("-Select-", "0"));
        dt3 = obj.GetOrderNo();
        if (dt3.Rows.Count > 0)
        {
            if (Convert.ToInt32(dt3.Rows[0]["CustomerOrderNo"]) == 0)
            {
                txtname.Text = "Order No.001";

            }

            if (Convert.ToInt32(dt3.Rows[0]["CustomerOrderNo"]) > 0)
            {
                count = Convert.ToInt32(dt3.Rows[0]["CustomerOrderNo"]) + 1;
                txtname.Text = "Order No." + count.ToString();
            }
        }

        if (dt3.Rows.Count <= 0)
        {
            txtname.Text = "Order No.001";
        }
        dt5 = obj.SelectOrder();
        gvdetails.DataSource = dt5;
        gvdetails.DataBind();
    }
    #endregion

    #region Show
    protected void btnshow_Click(object sender, EventArgs e)
    {
        string k = "";
        decimal v;

        for (int i = 0; i < chkitem.Items.Count; i++)
        {
            if (chkitem.Items[i].Selected)
            {

                k = k + chkitem.Items[i].Text + ",";
            }
            txtorderdesc.Text = k.ToString();
        }
        for (int i = 0; i < chkitem.Items.Count; i++)
        {
            if (chkitem.Items[i].Selected)
            {

                dt4 = obj.SelectComboRate(chkitem.Items[i].Text);
                v = Convert.ToDecimal(dt4.Rows[0]["Rate"]);
                amnt = amnt + v;
            }
            txtamount.Text = amnt.ToString();
        }
    }
    #endregion

    #region Order
    protected void btnorder_Click(object sender, EventArgs e)
    {
        i = obj.AddOrderNo(txtname.Text, txtorderdesc.Text, Convert.ToInt32(ddntable.SelectedValue), Convert.ToInt32(ddnstaff.SelectedValue), Convert.ToDecimal(txtamount.Text), "User", DateTime.Now.ToString());
        if (i > 0)
        {
            dt5 = obj.SelectOrder();
            gvdetails.DataSource = dt5;
            gvdetails.DataBind();

            Session["OrderNo"] = txtname.Text;
            Session["OrderDesc"] = txtorderdesc.Text;
            Session["TableNo"] = ddntable.SelectedItem.Text;
            Session["Staff"] = ddnstaff.SelectedItem.Text;
            Session["Amount"] = txtamount.Text;

            Response.Redirect("PrintOrder.aspx");
        }
    }
    #endregion
}