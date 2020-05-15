using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Net.Mail;

/// <summary>
/// Developer Name:Swati Singh
/// Organization Name Employee Management
/// Date:03.10-2019
/// Company :Alllmaa IT Solution Pvt.Ltd.
/// </summary>
public class Datobjects
{
	public Datobjects()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    #region Add Employee
    public int AddEmployee(string empname,string empAddress,string Createdby,string Createdon,string updatedby,string updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Addemployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@empname", DbType.String, empname);
            objDatabase.AddInParameter(objDBCommand, "@empAddress", DbType.String, empAddress);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            objDatabase.AddInParameter(objDBCommand, "@updatedby", DbType.String, updatedby);
            objDatabase.AddInParameter(objDBCommand, "@updatedon", DbType.String, updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {

        }
        return result;
    }
    #endregion


    #region Add Student
    public int AddStudent(string stdname, string stdAddress, string Createdby, string Createdon, string updatedby, string updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Addstudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@stdname", DbType.String, stdname);
            objDatabase.AddInParameter(objDBCommand, "@stdAddress", DbType.String, stdAddress);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            objDatabase.AddInParameter(objDBCommand, "@updatedby", DbType.String, updatedby);
            objDatabase.AddInParameter(objDBCommand, "@updatedon", DbType.String, updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {

        }
        return result;
    }
    #endregion
}



