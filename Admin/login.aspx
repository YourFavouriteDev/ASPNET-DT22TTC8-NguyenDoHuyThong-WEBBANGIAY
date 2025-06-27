<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<%@ Register Src="~/Admin/UserControl/ucCSS.ascx" TagPrefix="uc1" TagName="ucCSS" %>
<%@ Register Src="~/Admin/UserControl/ucJS.ascx" TagPrefix="uc1" TagName="ucJS" %>
<%@ Register Src="~/Admin/UserControl/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập vào hệ thống</title>
    <uc1:ucCSS runat="server" ID="ucCSS" />
    <uc1:ucJS runat="server" ID="ucJS" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="loginBlock" style="display: block;">
            <h1 style="text-align: center;">ĐĂNG NHẬP</h1>
            <div class="loginForm">
                <!--Username-->
                <div class="control-group">
                    <div class="input-prepend">
                        <span class="add-on"><span class="icon-user"></span></span>
                        <input runat="server" id="input_Username" type="text" placeholder="Username" />
                    </div>
                </div>
                <!--Password-->
                <div class="control-group">
                    <div class="input-prepend">
                        <span class="add-on"><span class="icon-lock"></span></span>
                        <input runat="server" id="input_Password" type="password" placeholder="Password" />
                    </div>
                </div>
                <!--Remember + Login button-->
                <div class="row-fluid">
                    <!--Nút đăng nhập-->
                    <div class="span12">
                        <asp:Button Text="Đăng nhập" class="btn btn-block" runat="server" ID="Button_Login" OnClick="Button_Login_Click" />
                    </div>
                </div>
                <!--Thông báo-->
                <uc1:ucMessage runat="server" ID="ucMessage" />
            </div>
        </div>
    </form>
</body>
</html>
