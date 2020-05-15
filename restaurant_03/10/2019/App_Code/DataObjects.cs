using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Net.Mail;

/// <summary>
/// Developer Name:Rajan Misra
/// Organization Name Restaurant Management
/// Date:29,30,31-07-2019,01,02.03,05,06-08-2019
/// Company :Iphygenia Solution Pvt.Ltd.
/// </summary>
public class DataObjects
{
	public DataObjects()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    #region Check Admin Login
    public DataTable CheckAdminLogin(string Username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@Username", DbType.String, Username);
            objDatabase.AddInParameter(objDBCommand, "@Password", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Menu Item
    public int AddMenuItem(string ItemName,string ItemType,decimal Rate,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddItem";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ItemName", DbType.String, ItemName);
            objDatabase.AddInParameter(objDBCommand, "@ItemType", DbType.String, ItemType);
            objDatabase.AddInParameter(objDBCommand, "@Rate", DbType.Decimal, Rate);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Menu Item
    public int UpdateMenuItem(int ItemId,string ItemName,string ItemType,decimal Rate,string Createdby,string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateItem";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ItemId", DbType.Int32, ItemId);
            objDatabase.AddInParameter(objDBCommand, "@ItemName", DbType.String, ItemName);
            objDatabase.AddInParameter(objDBCommand, "@ItemType", DbType.String, ItemType);
            objDatabase.AddInParameter(objDBCommand, "@Rate", DbType.Decimal, Rate);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Menu Item
    public int DeleteMenuItem(int ItemId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteItem";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ItemId", DbType.Int32, ItemId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Menu Item
    public DataTable SelectMenuItem()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectItem";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Combo Menu Item
    public DataTable SelectMenuItemI()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select ItemId,ItemName as 'Menu' from tblItemMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Menu Item
    public DataTable SelectMenuItemC()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select ComboId,ComboName as 'Menu' from tblComboOffer";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Rate
    public DataTable SelectRate(string itemname)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Rate from tblItemMaster where ItemName='"+itemname+"'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Rate
    public DataTable SelectComboRate(string itemname)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select rate from tblComboOffer where ComboName='" + itemname + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Combo Offer
    public int AddComboOffer(string ComboName,string ComboImage,string ComboDescription,decimal Rate,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddCombo";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ComboName", DbType.String, ComboName);
            objDatabase.AddInParameter(objDBCommand, "@ComboImage", DbType.String, ComboImage);
            objDatabase.AddInParameter(objDBCommand, "@ComboDescription", DbType.String,ComboDescription);
            objDatabase.AddInParameter(objDBCommand, "@Rate", DbType.Decimal, Rate);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Combo Offer
    public int UpdateComboOffer(int ComboId,string ComboName, string ComboDescription, decimal Rate, string Createdby, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateCombo";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ComboId", DbType.Int32, ComboId);
            objDatabase.AddInParameter(objDBCommand, "@ComboName", DbType.String, ComboName);
            
            objDatabase.AddInParameter(objDBCommand, "@ComboDescription", DbType.String, ComboDescription);
            objDatabase.AddInParameter(objDBCommand, "@Rate", DbType.Decimal, Rate);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Combo Offer
    public int DeleteComboOffer(int ComboId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteCombo";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ComboId", DbType.Int32, ComboId);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Combo Offer
    public DataTable SelectComboOffer()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectCombo";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Table
    public int AddTable(string TableName,string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@TableName", DbType.String, TableName);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Table
    public int UpdateTable(int TableId,string TableName, string Createdby, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@TableId", DbType.Int32, TableId);
            objDatabase.AddInParameter(objDBCommand, "@TableName", DbType.String, TableName);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Table
    public int DeleteTable(int TableId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@TableId", DbType.Int32, TableId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Table
    public DataTable SelectTable()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Staff
    public int AddStaff(string Firstname,string Middlename,string Lastname,string Photo,string Address,string ContactNo,
        string MobileNo,string Qualification,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@Firstname", DbType.String, Firstname);
            objDatabase.AddInParameter(objDBCommand, "@Middlename", DbType.String, Middlename);
            objDatabase.AddInParameter(objDBCommand, "@Lastname", DbType.String, Lastname);
            objDatabase.AddInParameter(objDBCommand, "@Photo", DbType.String, Photo);
            objDatabase.AddInParameter(objDBCommand, "@Address", DbType.String, Address);
            objDatabase.AddInParameter(objDBCommand, "@ContactNo", DbType.String, ContactNo);
            objDatabase.AddInParameter(objDBCommand, "@MobileNo", DbType.String, MobileNo);
            objDatabase.AddInParameter(objDBCommand, "@Qualification", DbType.String, Qualification);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Staff
    public int UpdateStaff(int StaffId,string Firstname, string Middlename, string Lastname,  string Address, string ContactNo,
        string MobileNo, string Qualification, string Createdby, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@StaffId", DbType.Int32, StaffId);
            objDatabase.AddInParameter(objDBCommand, "@Firstname", DbType.String, Firstname);
            objDatabase.AddInParameter(objDBCommand, "@Middlename", DbType.String, Middlename);
            objDatabase.AddInParameter(objDBCommand, "@Lastname", DbType.String, Lastname);
            
            objDatabase.AddInParameter(objDBCommand, "@Address", DbType.String, Address);
            objDatabase.AddInParameter(objDBCommand, "@ContactNo", DbType.String, ContactNo);
            objDatabase.AddInParameter(objDBCommand, "@MobileNo", DbType.String, MobileNo);
            objDatabase.AddInParameter(objDBCommand, "@Qualification", DbType.String, Qualification);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Staff
    public int DeleteStaff(int StaffId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@StaffId", DbType.Int32, StaffId);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff
    public DataTable SelectStaff()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Login
    public DataTable SelectLogin()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Order No
    public DataTable GetOrderNo()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CountOrder";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Order No
    public int AddOrderNo(string OrderNo,string OrderDescription,int TableId,int StaffId,decimal TotalAmount,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddOrder";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@OrderNo", DbType.String, OrderNo);
            objDatabase.AddInParameter(objDBCommand, "@OrderDescription", DbType.String, OrderDescription);
            objDatabase.AddInParameter(objDBCommand, "@TableId", DbType.Int32, TableId);
            objDatabase.AddInParameter(objDBCommand, "@StaffId", DbType.Int32, StaffId);
            objDatabase.AddInParameter(objDBCommand, "@TotalAmount", DbType.Decimal, TotalAmount);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Order
    public DataTable SelectOrder()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectOrder";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Item Menu
    public DataTable SelectItemMenu()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select ItemId,ItemName,Rate from tblItemMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Table Name
    public DataTable SelectTableName()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select TableId,TableName from tblTableMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Staff
    public DataTable SelectStaffM()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select StaffId,Firstname+Middlename+Lastname as 'StaffName' from tblStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Bill No
    public DataTable GetBillNo()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetBill";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Bill
    public int AddBill(string BillNo,string OrderNo,string OrderDescription,decimal TotalAmount,string IncludedGST,decimal BillAmount,string IsBillPaid,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddBill";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@BillNo", DbType.String, BillNo);
            objDatabase.AddInParameter(objDBCommand, "@OrderNo", DbType.String, OrderNo);
            objDatabase.AddInParameter(objDBCommand, "@OrderDescription", DbType.String, OrderDescription);
            objDatabase.AddInParameter(objDBCommand, "@TotalAmount", DbType.Decimal, TotalAmount);
            objDatabase.AddInParameter(objDBCommand, "@IncludedGST", DbType.String, IncludedGST);
            objDatabase.AddInParameter(objDBCommand, "@BillAmount", DbType.Decimal, BillAmount);
            objDatabase.AddInParameter(objDBCommand, "@IsBillPaid", DbType.String, IsBillPaid);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Bill No
    public DataTable SelectBillNo()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select o.OrderId,o.OrderNo,o.OrderDescription,o.TotalAmount,t.TableName,s.Firstname+s.Middlename+s.Lastname as 'Staff Name',b.BillId,b.BillNo,b.IncludedGST,b.BillAmount from tblCustomerOrder o inner join tblBill b on b.OrderNo=o.OrderNo inner join tblTableMaster t on o.TableId=t.TableId inner join tblStaff s on o.StaffId=s.StaffId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion
}