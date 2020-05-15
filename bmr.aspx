<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bmr.aspx.cs" Inherits="bmr" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <title>
            </title>
<script>
    function food() {
        var bmr;
        var age = document.getElementById("age").value;
        var gender = document.getElementById("gender").value;
        var height = document.getElementById("height").value;
        var weigth = document.getElementById("weigth").value;

        if (gender == "masc") {
            bmr = 66.5 + (13.75 * weigth) + (5.403 * height) - (6.755 * age);
            alert(bmr);
        }
        else {
            bmr = 655.1 + (9.563 * weigth) + (4.750 * height) - (4.676 * age);

            alert(bmr);
        }

    }
</script>

</head>

<body style="background:url(2.jpg); background-size:100%100%;background-size:cover;" />
    
<form action="post">
  <input type="radio" name="gender" id="gender" value="masc" /> Male<br/>
  <input type="radio" name="gender" id="value="gender"fem"/> Female<br/>
  Age:<br/>
  <input type="number" id="age" value="20"/><br/>
  Height:<br/>
  <input type="number" id="height" value="180"/><br/>
  Weight:<br/>
  <input type="number" id="weigth" value="80"/><br/>
</form>



<input type="button"onClick="food()"value="result" />

<p id="lblResult">BMR</p>

</body>

</html>



















