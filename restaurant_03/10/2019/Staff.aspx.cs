using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Staff : System.Web.UI.Page
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
        dt = obj.SelectStaff();
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
            string fileName = Path.Combine(Server.MapPath("~/StaffPhoto"), photo.FileName);
            //save the file to our local path
            photo.SaveAs(fileName);
            //AlumniImage.ImageUrl = "~/AlumniPhoto/" + PhotoUpload.FileName;
            strphoto = photo.FileName;
        }
        i = obj.AddStaff(txtname.Text,txtmname.Text,txtlname.Text,"~/StaffPhoto/"+strphoto,txtAddress.Text,txtcontact.Text,txtmobile.Text,txtquali.Text, "Admin", DateTime.Now.ToString());
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
      txtname.Text="";
      txtmname.Text="";
      txtlname.Text = "";
      txtAddress.Text="";
      txtcontact.Text="";
      txtmobile.Text="";
      txtquali.Text="";
    }
    #endregion
    #endregion

    #region Update Button
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateStaff(Convert.ToInt32(lblid.Text),txtname.Text,txtmname.Text,txtlname.Text,txtAddress.Text,txtcontact.Text,txtmobile.Text,txtquali.Text, "Admin", DateTime.Now.ToString());
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
        d = obj.DeleteStaff(Convert.ToInt32(lblid.Text));
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
        txtmname.Text = gvdetails.SelectedRow.Cells[3].Text;
        txtlname.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtAddress.Text = gvdetails.SelectedRow.Cells[6].Text;
        txtcontact.Text = gvdetails.SelectedRow.Cells[7].Text;
        txtmobile.Text = gvdetails.SelectedRow.Cells[8].Text;
        txtquali.Text = gvdetails.SelectedRow.Cells[9].Text;
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
        Response.Redirect("Staff.aspx");
    }
    #endregion
}