using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Table : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i, u, d, index;
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
    #region Bind Grid
    public void BindGrid()
    {
        dt = obj.SelectTable();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #endregion
    #endregion

    #region Add Button
    protected void btnadd_Click(object sender, EventArgs e)
    {
        i = obj.AddTable(txtname.Text, "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Data Added Sucessfully";
        }

    }
    #region Clear Fields
    public void ClearFields()
    {
        txtname.Text = "";

    }
    #endregion
    #endregion

    #region Update Button
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateTable(Convert.ToInt32(lblid.Text), txtname.Text,  "Admin", DateTime.Now.ToString());
        if (u > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Data Updated Sucessfully";
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
        d = obj.DeleteTable(Convert.ToInt32(lblid.Text));
        if (d > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Data Deleted Sucessfully";
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
        Response.Redirect("Table.aspx");
    }
    #endregion
}