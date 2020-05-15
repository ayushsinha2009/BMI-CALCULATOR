<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DIABITIC ASSISTANT</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script>
        $(document).ready(function () {

            $("#btn1").click(function () {

                var a = 0;
                var sugar = 0;
                $("#foodtable tbody tr").each(function () {
                    if ($(this).children().eq(1).children().eq(0).prop("checked") == true) {

                        var b = parseInt($(this).children().eq(1).children().eq(1).val());
                        var c = parseInt($(this).children().eq(3).html());
                        var d = b * c;
                        a = a + d;
                        var e = parseInt($(this).children().eq(4).html());
                        var f = b * e;
                        sugar = sugar + f;
                    }
                });
                //  alert(a);
                var name = $("#t1").val();
                var ht = $("#t2").val();
                var wt = $("#t3").val();
                var gender = "";
                var age = $("#t6").val();
                var bmr = 0;
                if ($("#t4").prop("checked")) {
                    gender = "Male";
                }
                if ($("#t5").prop("checked")) {
                    gender = "Female";
                }
                if (gender == "Male") {
                    bmr = 66.5 + (13.75 * wt) + (5.403 * ht) - (6.755 * age);
                }
                if (gender == "Female") {
                    bmr = 655.1 + (9.563 * wt) + (4.750 * ht) - (4.676 * age);
                }
                bmr = Math.round(bmr);

                // alert(bmr);
                $("#sp1").html(a);
                $("#sp2").html(bmr);
                if (a < bmr) {
                    $("#sp3").html("++Need More Calories if you are type 1 diabatic have medicine and food ");
                    alertmsg1();

                }

                else {
                    $("#sp3").html("--Need Some Exercise or you will collaps if you are type 2 diabetic should not take more than 30 gm sugar -- ");
                    alertmsg2();
                }
                $("#sp4").html(sugar);

            });
        });
        function alertmsg1() {
            setTimeout("alertmsg1()", 1000 * 60 * 60 * 2);
            alert("Take Some Food Like Oats, Brown Rice or Egg Whites ");

            document.getElementById("myAudio1").play();
        }
        function alertmsg2() {


            setTimeout("alertmsg2()", 1000 * 60 * 60 * 12);

            alert("Do Some Excercise and check Your blood  Sugar levels ");
            document.getElementById("myAudio2").play();
        }

    </script>
    <style>
              table {
            border-color:white;
        }
        ::-webkit-scrollbar {
            height:15px;
            
          }
        ::-webkit-scrollbar-track {
        box-shadow:inset 0 0 10px black;
        border-radius:10px;

        }
        ::-webkit-scrollbar-thumb {
        
        border-radius:10px;
        background:white;
        box-shadow:inset 0 0 6px rgba(0,0,0,0.5);
        }
        input[type=number],
        input[type=text] {
        background:rgba(0,0,0,0.5);
        color:white;
        }
        label > input {
        visibility:hidden;
        position:absolute;
        }
            label > input + img {
            margin-left:50px;
            height:70px;
            width:70px;
            cursor:pointer;
            border:2px solid transparent;
            }
            label > input:checked + img {
            border-radius:50%;
            border:2px solid black;
            }
        hr {
        background-color:black;
        height:2px;
        }
        #btn1 {
        padding:0;
        height:35px;
        width:200px;
        background-color:tomato;
        color:white;
        margin-left:280px;
        }
        #btn1:hover {
            background:rgba(0,0,0,0.7);
            transition:0.3s ease-in-out;
            color:white;
            text-align:center;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
      <audio id="myAudio1">
          <source src="Type11.mp3" type="audio/mpeg"/>
      </audio>
        <audio id="myAudio2">
          <source src="Type_2.mp3" type="audio/mpeg"/>
      </audio>
        <div class="container-fluid">    
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <h2 style="font-family:Calibri;font-size:50px;text-align:center;color:#f82b2b;text-shadow:3px 3px black; background:rgba(0,0,0,0.2);border-radius:50px;">
                    <img src="d2.jpg" style="height:50px;width:50px;border-radius:50%;margin-top:-8px;" />DIABETIC ASSISTANT<img src="d1.jpg" style="height:50px;width:50px;border-radius:50%;margin-top:-8px;" /></h2>
                <h1 class="text-center" ><b style="color:white;">Select Food</b> </h1>
                <div class="table-responsive" style="height:500px; overflow:scroll;">
                <table class="table table-bordered table-hover" id="foodtable" style="color:black;text-shadow:0.7px 0.7px 0.7px ;background:rgba(0,0,0,0.2);">
                    <thead style="font-size:25px; color:white;">
                    <tr>
                        <th>#</th>
                        <th>Select</th>
                        <th>Food Name</th>
                        <th>Calorie</th>
                        <th>Sugar</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px; color:red;" value="1" />  </td>
                        <td>Apple</td>
                        <td>52</td>
                        <td>10</td>
                    </tr>
                    
                    <tr>
                        <td>2</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Apricots</td>
                        <td>31</td>
                        <td>9</td>
                    </tr>
                    
                    <tr>
                        <td>3</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Avocado</td>
                        <td>90</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>banana</td>
                        <td>90</td>
                        <td>12</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;   color:red;" value="1" />  </td>
                        <td>papaya</td>
                        <td>50</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Pineapple</td>
                        <td>50</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Pomegranate</td>
                        <td>52</td>
                        <td>14</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>watermelon</td>
                        <td>52</td>
                        <td>6</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>strawberries</td>
                        <td>45</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>oranges</td>
                        <td>100</td>
                        <td>10</td>
                    </tr>
                        
                    <tr style="font-size:25px; color:white;"><th>#</th>
                        <th>Select Beverages</th>
                        <th>Beverages Name</th>
                        <th>Calorie</th>
                        <th>Sugar</th>
                       </tr>
                        <tr>
                        <td>1</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>oranges juice</td>
                        <td>110</td>
                        <td>14</td>

                    </tr>
                        <tr>
                        <td>2</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>apple</td>
                        <td>80</td>
                        <td>10</td>
                    </tr>
                    
                    <tr>
                        <td>3</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>soda</td>
                        <td>60</td>
                        <td>8</td>
                    </tr>
                        <tr>
                        <td>4</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>suger free tea</td>
                        <td>5</td>
                        <td>0</td>
                    </tr>
                        <tr>
                        <td>5</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>milk</td>
                        <td>110</td>
                        <td>12</td>
                    </tr>
                        <tr>
                        <td>6</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>wine</td>
                        <td>50</td>
                        <td>2</td>
                    </tr>
                        <tr>
                        <td>7</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>beer</td>
                        <td>50</td>
                        <td>0</td>
                    </tr>
                        <tr>
                        <td>8</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>tomato juice</td>
                        <td>80</td>
                        <td>8</td>
                    </tr><tr>
                        <td>9</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>coffee</td>
                        <td>50</td>
                        <td>8</td>
                    </tr>
                     <tr style="font-size:25px; color:white;"><th>#</th>
                        <th>Select Cereals and indian food</th>
                        <th>Cereals Name</th>
                        <th>Calorie</th>
                        <th>Sugar</th>
                       </tr>
                        <tr>
                        <td>1</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Bowl of Rice</td>
                        <td>168</td>
                        <td>1</td>
                    </tr>
                        <tr>
                        <td>2</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>Bowl of dal</td>
                        <td>88</td>
                        <td>2</td>
                            </tr>
                            <tr>
                        <td>3</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>samosa</td>
                        <td>86</td>
                        <td>6</td>
                    </tr>
                            <tr>
                        <td>4</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>onion bhaji</td>
                        <td>120</td>
                        <td>4</td>
                    </tr>
                            <tr>
                        <td>5</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>cucumber raita</td>
                        <td>25</td>
                        <td>4</td>
                    </tr>
                            <tr>
                        <td>6</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>paneer burji</td>
                        <td>138</td>
                        <td>7</td>
                    </tr>
                            <tr>
                        <td>7</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>chappati</td>
                        <td>90</td>
                        <td>0</td>
                    </tr>
                            <tr>
                        <td>8</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>chole bhature</td>
                        <td>240</td>
                        <td>7</td>
                    </tr><tr>
                        <td>9</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>chicken curry</td>
                        <td>250</td>
                        <td>12</td>
                    </tr>
                        <tr style="font-size:25px; color:white;">
                        <th>#</th>
                        <th>Select salad</th>
                        <th>salad or vegetable Name</th>
                        <th>Calorie</th>
                        <th>Sugar</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>tomato</td>
                        <td>9</td>
                        <td>2</td>
                    </tr>
                        
                    <tr>
                        <td>2</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>onions</td>
                        <td>12</td>
                        <td>3</td>
                    </tr>
                        
                    <tr>
                        <td>3</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>cauliflower</td>
                        <td>8</td>
                        <td>1</td>
                    </tr>
                        
                    <tr>
                        <td>4</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>peas</td>
                        <td>20</td>
                        <td>7</td>
                    </tr>
                        
                    <tr>
                        <td>5</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td> 3 egg</td>
                        <td>18</td>
                        <td>0</td>
                    </tr>
                        
                    <tr>
                        <td>6</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>beans</td>
                        <td>7</td>
                        <td>0</td>
                    </tr>
                        
                    <tr>
                        <td>7</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>carrot</td>
                        <td>15</td>
                        <td>4</td>
                    </tr>
                        
                    <tr>
                        <td>8</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>raddish</td>
                        <td>18</td>
                        <td>2</td>
                    </tr>
                        
                    <tr>
                        <td>9</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>fruit salad</td>
                        <td>55</td>
                        <td>12</td>
                    </tr>

                    <tr>
                        <td>10</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>pepper</td>
                        <td>20</td>
                        <td>4</td>
                    </tr>
                        
                    <tr>
                        <td>11</td>
                        <td> <input type="checkbox" /> <input type="number" style="width:50px;  color:red;" value="1" />  </td>
                        <td>broccoli</td>
                        <td>15</td>
                        <td>1</td>
                    </tr>
                    </tbody>
                    
                </table>
                </div>
                <hr/>
                <div class="form-group">
                    <label style="font-size:20px;word-spacing:8px;">Enter Name--</label>
                    <input type="text" id="t1" class="form-control" />
                </div>
                <div class="form-group">
                    <label style="font-size:20px;word-spacing:8px;">Enter Height (in CM)--</label>
                    <input type="number" id="t2" class="form-control" />
                </div>
                <div class="form-group">
                    <label style="font-size:20px;word-spacing:8px;">Enter Weight (in KG)--</label>
                    <input type="number" id="t3" class="form-control" />
                </div>
                <div class="form-group">
                    <label style="font-size:20px;word-spacing:8px;">Select Gender:
                    <input type="radio" id="t4" value="Male" name="gender"/>
                        <img src="js/male.png" />
                        </label>
                    <label>
                    <input type="radio" id="t5" value="Female" name="gender" />
                        <img src="js/female.png" />
                        </label>
                </div>
                <div class="form-group">
                    <label style="font-size:20px;word-spacing:8px;">Enter Age (in Years)--</label>
                    <input type="number" id="t6" class="form-control" />
                </div>
                <hr />

                <button id="btn1" class="btn btn-primary" type="button" ><b style="font-size:25px;">Calculate</b></button>
                <hr />
                <div style="height:270px;width:100%;border:3px solid black;border-radius:0 30px 0 30px; background:rgba(0,0,0,0.4);color:white;margin-bottom:20px;">
                <h2>Calories Taken : <span id="sp1"></span></h2>
                <h2>Calories Recommended(BMR) : <span id="sp2"></span></h2>

                <h2> Suggestion : <span id="sp3"></span></h2>
                <h2> Sugar Taken : <span id="sp4"></span></h2>
                   
                    </div>
            </div>
            <div class="col-sm-2"></div>
        
        </div>
    </div>
        </div>
            
    </form>
</body>
</html>