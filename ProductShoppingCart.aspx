<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductShoppingCart.aspx.cs" Inherits="ProductShoppingCart" %>

<%@ Register Src="~/ucControls/Master/ucShoppingCart.ascx" TagPrefix="uc1" TagName="ucShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main cart">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb shop-breadcrumb bb-no">
                    <li class="active"><a runat="server" href="~/">Trang chủ</a></li>
                    <li>Giỏ hàng của tôi</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->
        <!-- Start of PageContent -->
        <uc1:ucShoppingCart runat="server" ID="ucShoppingCart" />
        <!-- End of PageContent -->
    </main>
</asp:Content>

