<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <div class="panel panel-default">
                    <div class="panel-heading">
                        <br /><br />
                        <h3 class="panel-title"><strong> ADMIN LOGIN </strong></h3>
                    </div>
                    <div class="panel-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username or Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-success btn-lg">Sign in</button>
                            <br /><br />
                    </div>
                </div>

            </div>
            <div class="col-sm-3"></div>


        </div>

    </div>
    </div>
    </form>
</body>
</html>
