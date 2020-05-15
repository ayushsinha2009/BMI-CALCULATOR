using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MenuIem : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i, u, d,index;
    DataTable dt;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindGrid();
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnadd.Visible = true;
        }
    }
    #endregion

    #region Bind Grid
    public void BindGrid()
    {
        dt = obj.SelectMenuItem();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #endregion
    
    #region Add Button
    protected void btnadd_Click(object sender, EventArgs e)
    {
        i = obj.AddMenuItem(txtname.Text, ddntype.SelectedItem.Text, Convert.ToDecimal(txtrate.Text), "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item Added Sucessfully";
        }

    }
    #endregion

    #region Clear Fields
    public void ClearFields()
    {
        txtname.Text = "";
        txtrate.Text = "";
        ddntype.SelectedIndex = 0;
    }
    #endregion
    
    #region Update Button
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateMenuItem(Convert.ToInt32(lblid.Text),txtname.Text, ddntype.SelectedItem.Text, Convert.ToDecimal(txtrate.Text), "Admin", DateTime.Now.ToString());
        if (u > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item Updated Sucessfully";
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnadd.Visible = true;

        }
    }
    #endregion

    #region Delete Button
    protected void btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteMenuItem(Convert.ToInt32(lblid.Text));
        if (d > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Item Deleted Sucessfully";
            btnupdate.Visible = false;
            btndel.Visible = false;
            btncancel.Visible = false;
            btnadd.Visible = true;
            
        }
    }
    #endregion

    #region Grid Paging
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindGrid();
    }
    #endregion

    #region Grid Selected Index Change
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblid.Text = gvdetails.DataKeys[index].Value.ToString();
        txtname.Text = gvdetails.SelectedRow.Cells[2].Text;
        ddntype.SelectedItem.Text = gvdetails.SelectedRow.Cells[3].Text;
        txtrate.Text = gvdetails.SelectedRow.Cells[4].Text;
        btnupdate.Visible = true;
        btndel.Visible = true;
        btncancel.Visible = true;
        btnadd.Visible = false;
    }
    #endregion

    #region Cancel
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnupdate.Visible = false;
        btndel.Visible = false;
        btncancel.Visible = false;
        btnadd.Visible = true;
        ClearFields();
        Response.Redirect("MenuIem.aspx");
    }
    #endregion
}