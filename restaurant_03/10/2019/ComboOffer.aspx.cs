using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class ComboOffer : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i, u, d, index;
    DataTable dt;
    string strphoto;
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
        dt = obj.SelectComboOffer();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #endregion
    #endregion

    #region Add Button
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (photo.HasFile)
        {
            //create the path to save the file 
            string fileName = Path.Combine(Server.MapPath("~/Offer"), photo.FileName);
            //save the file to our local path
            photo.SaveAs(fileName);
            //AlumniImage.ImageUrl = "~/AlumniPhoto/" + PhotoUpload.FileName;
            strphoto = photo.FileName;
        }
        i = obj.AddComboOffer(txtname.Text, "~/Offer/" + strphoto, txtdesc.Text, Convert.ToDecimal(txtrate.Text), "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Offer Added Sucessfully";
        }

    }
    #region Clear Fields
    public void ClearFields()
    {
        txtname.Text = "";
        txtrate.Text = "";
        txtdesc.Text="";
    }
    #endregion
    #endregion

    #region Update Button
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateComboOffer(Convert.ToInt32(lblid.Text),txtname.Text,txtdesc.Text,Convert.ToDecimal(txtrate.Text),"Admin",DateTime.Now.ToString());
        if (u > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Offer Updated Sucessfully";
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
        d = obj.DeleteComboOffer(Convert.ToInt32(lblid.Text));
        if (d > 0)
        {
            BindGrid();
            ClearFields();
            lblmsg.Text = "Offer Deleted Sucessfully";
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
        txtdesc.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtrate.Text = gvdetails.SelectedRow.Cells[5].Text;
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
        Response.Redirect("ComboOffer.aspx");
    }
    #endregion
}