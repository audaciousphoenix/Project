<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login!</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script></script>
</head>
<body style="background-image: url(https://images.ctfassets.net/usf1vwtuqyxm/2phT56DSucuUqU6Icm6mCe/79c7ad7bca59b0626fe4e2e80d188ca5/HogwartsCastle_WB_F4_HogwartsThroughTheTrees_Illust_100615_Land.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
    <nav class="navbar navbar-expand-lg " style="background-color: white;">
        <div class="container-fluid">
            <div class="navbar-brand" href="#">
            <div>
            	<img alt="" src="https://th.bing.com/th/id/OIP.sdGSwgsS7Q8VYFL1zg7OfQHaHa?pid=ImgDet&rs=1" style="height: 10%;width: 10%">
            	 <span style="font-weight: bold;color:black;">HogWarts University</span>
            </div>
            </div>
            <br><br>
        </div>
    </nav>
    <div class="justify-content">
        <div class="container-fluid" style="padding-top: 150px;">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="card justify-content">
                        <div class="card-header" style="font-weight: bold;"">
                            Login Here!
                        </div>
                        <form action="adminhome" method="post" name="frm1">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="d-flex align-items-center h-100 row"
                                            style="height: 650px;width:380px">
                                            <img src="https://img.freepik.com/free-vector/account-log-page_41910-263.jpg?size=626&ext=jpg"
                                                class="img-fluid">
                                        </div>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="col-md-5">
                                        <label for="forUser" class="form-lable" >UserName</label>
                                        <input type="text" name="username" id= "username" class="form-control">
                                    <div>
                                        <label for="forPassword" class="form-lable">Password</label>
                                        <input type="password" name="password" id="password" class="form-control">
                                        <br>
                                    </div>
                                        <label for="forType" class="form-lable">Select User Type</label>
                                        <select class="form-select mt-3" name="type" id="type">
                                            <option selected>Login as..</option>
                                            <option value="1">Admin </option>
                                            <option value="2">Faculty</option>
                                            <option value="3">Student</option>
                                        </select>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-12" style="text-align: center;">
                                            <input type="submit" value="Login" name="login"
                                                class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="reset" value="Reset" class="btn btn-danger">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <span class="justify-content text-align-center"
                                    style="color: red;text-align: center;font-weight: bold;font-family: sans-serif;">${msg}</span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>