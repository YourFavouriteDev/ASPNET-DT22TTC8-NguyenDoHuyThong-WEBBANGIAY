<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenuArea.ascx.cs" Inherits="ucMenuArea" %>

<%@ Register Src="~/ucControls/ucLoginMenu.ascx" TagPrefix="uc1" TagName="ucLoginMenu" %>
<%@ Register Src="~/ucControls/Master/ucMiniShoppingCart.ascx" TagPrefix="uc2" TagName="ucMiniShoppingCart" %>

<script>
    function activeProductMainMenu(mid) {
        $("li[data-mid=" + mid + "]").attr("class", "active");
    }
</script>

<!-- Start Menu Area -->
<header class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-left">
                <p class="welcome-msg" runat="server" id="a_wellcome" style="color: #004a80; font-weight: 600;">
                    Xin chào! <span runat="server" id="span_FullName" style="margin-right: 8px"> </span>
                </p>
                <p class="welcome-msg">CHÀO MỪNG BẠN ĐẾN VỚI WOLMART STORE!</p>
            </div>
            <div class="header-right">
                <div class="dropdown">
                    <a href="#currency">USD</a>
                    <div class="dropdown-box">
                        <a href="#USD">USD</a>
                        <a href="#EUR">EUR</a>
                    </div>
                </div>
                <!-- End of Dropdown Menu 1 -->
                <div class="dropdown">
                    <a href="#language">
                        <img src="assets/images/flags/eng.png" alt="ENG Flag" width="14"
                            height="8" class="dropdown-image" />
                        ENG
                    </a>
                    <div class="dropdown-box">
                        <a href="#ENG">
                            <img src="assets/images/flags/eng.png" alt="ENG Flag" width="14" height="8"
                                class="dropdown-image" />
                            ENG
                        </a>
                        <a href="#FRA">
                            <img src="assets/images/flags/fra.png" alt="FRA Flag" width="14" height="8"
                                class="dropdown-image" />
                            FRA
                        </a>
                    </div>
                </div>
                <!-- End of Dropdown Menu 2 -->
                <span class="divider d-lg-show"></span>
                <%--<a runat="server" href="~/ArticleList.aspx" class="d-lg-show">Bài viết</a>--%>
                <a runat="server" href="~/AboutUs.aspx" class="d-lg-show">Giới thiệu</a>
                <a runat="server" href="~/Contact.aspx" class="d-lg-show">Liên hệ với chúng tôi</a>
                <!-- End of Dropdown Menu -->
            </div>
        </div>
    </div>

    <!-- End of Header Top -->
    <div class="header-middle">
        <div class="container">
            <div class="header-left mr-md-4">
                <a href="#" class="mobile-menu-toggle  w-icon-hamburger"></a>
                <a runat="server" href="~/" class="logo ml-lg-0">
                    <img src="assets/images/logo.png" alt="logo" width="144" height="45" />
                </a>
                <div class="header-search hs-expanded hs-round d-none d-md-flex input-wrapper">
                    <div class="select-box">
                        <asp:DropDownList runat="server" ID="DropDownList_Search" class="cate-dropdown hidden-xs hidden-sm select_option">
                            <asp:ListItem Value="search-product" Text="Sản phẩm" />
                        </asp:DropDownList>
                    </div>
                    <input type="text" runat="server" id="input_Search" class="form-control search-query" placeholder="Nhập từ khóa tìm kiếm..." name="search">
                    <asp:LinkButton runat="server" class="btn btn-search" ID="LinkButton_Search" OnClick="LinkButton_Search_Click">
                                    <i class="w-icon-search"></i>
                    </asp:LinkButton>
                </div>
            </div>
            <div class="header-right ml-4">
                <div class="header-call d-xs-show d-lg-flex align-items-center">
                    <a href="tel:#" class="w-icon-call"></a>
                    <div class="call-info d-lg-show">
                        <h4 class="chat font-weight-normal font-size-md text-normal ls-normal text-light mb-0">
                            <a href="mailto:#" class="text-capitalize">Hotline</a>:
                        </h4>
                        <a href="#tel" class="phone-number font-weight-bolder ls-50">(+84) 726 131 986</a>
                    </div>
                </div>
                <%-- Shopping cart --%>
                <uc2:ucMiniShoppingCart runat="server" ID="ucMiniShoppingCart" />
            </div>
        </div>
    </div>
    <!-- End of Header Middle -->

    <div class="header-bottom sticky-content fix-top sticky-header has-dropdown">
        <div class="container">
            <div class="inner-wrap">
                <div class="header-left">
                    <div class="dropdown category-dropdown has-border show" data-visible="true">
                        <a href="#" class="category-toggle text-dark" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="true" data-display="static"
                            title="Browse Categories">
                            <i class="w-icon-category"></i>
                            <span>Tất cả danh mục</span>
                        </a>
                        <div class="dropdown-box">
                            <ul class="menu vertical-menu category-menu">
                                <asp:Repeater runat="server" ID="Repeater_MenuArea">
                                    <ItemTemplate>
                                        <li>
                                            <a href='<%# Eval("ID","ProductGrid.aspx?mid={0}") %>'>
                                                <i class="<%# Eval("Code") %>"></i><%# Eval("Title") %>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <nav class="main-nav">
                        <ul class="menu active-underline">
                            <li id="liTrangChu" runat="server">
                                <a runat="server" href="~/">Trang chủ</a>
                            </li>
                            <li id="liSanPham" runat="server">
                                <a runat="server" href="~/ProductGrid.aspx">Sản phẩm</a>
                                <!-- Start of Megamenu -->
                                <ul class="megamenu">
                                    <asp:Repeater runat="server" ID="Repeater_Main">
                                        <ItemTemplate>
                                            <li>
                                                <a class="menu-title" runat="server" href='<%# Eval("ID","~/ProductGrid.aspx?mid={0}") %>'><%# Eval("Title") %></a>
                                                <ul>
                                                    <asp:Repeater runat="server" DataSource='<%# Eval("SubMenu") %>'>
                                                        <ItemTemplate>
                                                            <li><a runat="server" href='<%# Eval("ID","~/ProductGrid.aspx?cid={0}") %>'><%# Eval("Title") %></a></li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <!-- End of Megamenu -->
                            </li>
                            <%--<li id="liTinTuc" runat="server">
                                <a runat="server" href="~/ArticleList.aspx">Bài viết</a>
                                <ul class="sub_menu pages">
                                    <asp:Repeater runat="server" ID="Repeater_MenuArticle">
                                        <ItemTemplate>
                                            <li><a runat="server" href='<%# Eval("ID","~/ArticleList.aspx?mid={0}") %>'><%# Eval("Title") %></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </li>--%>
                            <li id="liGioiThieu" runat="server">
                                <a runat="server" href="~/AboutUs.aspx">Giới thiệu</a>
                            </li>
                            <li id="liLienHe" runat="server"><a runat="server" href="~/Contact.aspx">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <%--<div class="header-right">
                    <a runat="server" href="~/ProductShoppingCart.aspx" class="d-xl-show"><i class="w-icon-map-marker mr-1"></i>Đơn hàng của tôi</a>
                    <a href="#"><i class="w-icon-sale"></i>Săn Sale</a>
                </div>--%>
            </div>
        </div>
    </div>
</header>


