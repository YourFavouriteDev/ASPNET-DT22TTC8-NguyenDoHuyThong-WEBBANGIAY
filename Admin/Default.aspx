<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="content">
        <div class="breadLine">
            <ul class="breadcrumb">
                <!--Nút ẩn/hiện menu bên góc trái-->
                <li>
                    <a href="#" title="Ẩn thanh menu" class="sidebarControl menu-arrow">
                        <span class="icon-arrow-left"></span>
                    </a>
                </li>
                <!--Thanh breadcrumb-->
                <li>
                    <a href="#">Bàn Làm Việc</a>
                </li>
            </ul>
        </div>
        <div class="workplace">
            <div class="page-header" style="font-family: sans-serif !important">
                <div style="display: flex; justify-content: center; margin-bottom: 1rem;">
                    <img alt="logo" src="img/logo.png" style=""/>
                </div>
                <h1>
                    Website Quản lý Shop Bán Giày Wolmart
                    <br />
                    Chọn các trang chức năng trong Sidebar để làm việc
                </h1>
            </div>
        </div>
    </div>
</asp:Content>

