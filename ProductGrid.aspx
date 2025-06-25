<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductGrid.aspx.cs" Inherits="ProductGrid" %>

<%@ Register Src="~/ucControls/Common/ucPagging.ascx" TagPrefix="uc1" TagName="ucPagging" %>
<%@ Register Src="~/ucControls/ucSpecialProduct.ascx" TagPrefix="uc1" TagName="ucSpecialProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb bb-no">
                    <li><a runat="server" href="~/">Trang chủ</a></li>
                    <li runat="server" id="span_Categories">Danh sách sản phẩm</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->

        <div class="page-content mb-10">
            <div class="container">
                <!-- Start of Shop Banner -->
                <div class="shop-default-banner banner d-flex align-items-center mb-5 br-xs"
                    style="background-image: url(assets/images/shop/banner1.jpg); background-color: #FFC74E;">
                    <div class="banner-content">
                        <h4 class="banner-subtitle font-weight-bold">Phụ kiện thời trang</h4>
                        <h3 class="banner-title text-white text-uppercase font-weight-bolder ls-normal">Làm đôi giày nổi bật hơn
                        </h3>
                        <a href="javascript:void(0)" class="btn btn-dark btn-rounded btn-icon-right">Đặt hàng ngay<i class="w-icon-long-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <!-- End of Shop Banner -->

                <div class="shop-default-brands mb-5">
                    <div class="row brands-carousel owl-carousel owl-theme cols-xl-7 cols-lg-6 cols-md-4 cols-sm-3 cols-2"
                        data-owl-options="{
                                'items': 7,
                                'nav': false,
                                'dots': true,
                                'margin': 20,
                                'loop': true,
                                'autoPlay': 'true',
                                'responsive': {
                                    '0': {
                                        'items': 2
                                    },
                                    '576': {
                                        'items': 3
                                    },
                                    '768': {
                                        'items': 4
                                    },
                                    '992': {
                                        'items': 6
                                    },
                                    '1200': {
                                        'items': 7
                                    }
                                }
                            }
                        ">
                        <figure>
                            <img src="assets/images/brands/category/1.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/2.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/3.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/4.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/5.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/6.png" alt="Brand" width="160" height="90" />
                        </figure>
                        <figure>
                            <img src="assets/images/brands/category/7.png" alt="Brand" width="160" height="90" />
                        </figure>
                    </div>
                </div>

                <div class="shop-content">
                    <!-- Start of Shop Main Content -->
                    <div class="main-content">
                        <nav class="toolbox sticky-toolbox sticky-content fix-top">
                            <div class="toolbox-left">
                                <%--<a href="#" class="btn btn-primary btn-outline btn-rounded left-sidebar-toggle
                                        btn-icon-left"><i class="w-icon-category"></i><span>Lọc</span></a>--%>
                                <div class="toolbox-item toolbox-sort select-box text-dark">
                                    <label>Sắp xếp theo :</label>
                                    <asp:DropDownList runat="server"
                                        class="form-control"
                                        ID="DropDownList_Filter"
                                        AutoPostBack="true">
                                        <asp:ListItem Text="Giá tăng dần" Value="1" />
                                        <asp:ListItem Text="Giá giảm dần" Value="2" />
                                        <asp:ListItem Text="Giá dưới 1 triệu" Value="3" />
                                        <asp:ListItem Text="Giá từ 1 -> 3 triệu" Value="4" />
                                        <asp:ListItem Text="Giá từ 3 -> 7 triệu" Value="5" />
                                        <asp:ListItem Text="Giá > 7 triệu" Value="6" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </nav>
                        <div class="product-wrapper row cols-lg-5 cols-md-4 cols-sm-3 cols-2">
                            <asp:Repeater runat="server" ID="Repeater_Product">
                                <ItemTemplate>
                                    <div class="product-wrap">
                                        <div class="product text-center">
                                            <figure class="product-media product-media-cs">
                                                <a  runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                                    <img  runat="server" src='<%# Eval("Avatar") %>'  alt="Product" width="300"
                                                        height="338" />
                                                </a>
                                                <div class="product-action-horizontal">
                                                    <asp:LinkButton
                                                            runat="server"
                                                            class="btn-product-icon  w-icon-cart"
                                                            ID="Button_AddCart"
                                                            CommandArgument='<%# Eval("ID") %>'
                                                            ClientIDMode="AutoID"
                                                            OnClientClick="showCartModal(); return true;"
                                                            OnClick="Button_AddCart_Click">
                                                        </asp:LinkButton>
                                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="btn-product-icon btn-quickview w-icon-search"
                                                        title="Xem chi tiết"></a>
                                                </div>
                                            </figure>
                                            <div class="product-details">
                                               <%-- <div class="product-cat">
                                                    <a href="shop-banner-sidebar.html">Electronics</a>
                                                </div>--%>
                                                <h3 class="product-name">
                                                    <a  runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title") %></a>
                                                </h3>
                                                <div class="ratings-container">
                                                    <div class="ratings-full">
                                                        <span class="ratings" style="width: 100%;"></span>
                                                        <span class="tooltiptext tooltip-top"></span>
                                                    </div>
                                                    <a  runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="rating-reviews">(3 Đánh giá)</a>
                                                </div>
                                                <div class="product-pa-wrapper">
                                                    <div class="product-price">
                                                        <ins class="new-price ls-50"><%# Eval("Price","{0:0,00 ₫}") %>
                                                        </ins>
                                                        <ins class="old-price ls-40"><%# Eval("OldPrice","{0:0,00 ₫}") %>
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                  
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                         <uc1:ucPagging runat="server" ID="ucPagging" />
                    </div>
                    <!-- End of Shop Main Content -->
                    <!-- Start of Sidebar, Shop Sidebar -->
                    <aside class="sidebar shop-sidebar left-sidebar sticky-sidebar-wrapper">
                        <!-- Start of Sidebar Overlay -->
                        <div class="sidebar-overlay"></div>
                        <a class="sidebar-close" href="#"><i class="close-icon"></i></a>

                        <!-- Start of Sidebar Content -->
                        <div class="sidebar-content scrollable">
                            <div class="filter-actions">
                                <label>Filter :</label>
                                <a href="#" class="btn btn-dark btn-link filter-clean">Clean All</a>
                            </div>
                            <!-- Start of Collapsible widget -->
                            <div class="widget widget-collapsible">
                                <h3 class="widget-title"><span>All Categories</span></h3>
                                <ul class="widget-body filter-items search-ul">
                                    <li><a href="#">Accessories</a></li>
                                    <li><a href="#">Babies</a></li>
                                    <li><a href="#">Beauty</a></li>
                                    <li><a href="#">Decoration</a></li>
                                    <li><a href="#">Electronics</a></li>
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Food</a></li>
                                    <li><a href="#">Furniture</a></li>
                                    <li><a href="#">Kitchen</a></li>
                                    <li><a href="#">Medical</a></li>
                                    <li><a href="#">Sports</a></li>
                                    <li><a href="#">Watches</a></li>
                                </ul>
                            </div>
                            <!-- End of Collapsible Widget -->
                            <!-- Start of Collapsible Widget -->
                            <div class="widget widget-collapsible">
                                <h3 class="widget-title"><span>Price</span></h3>
                                <div class="widget-body">
                                    <ul class="filter-items search-ul">
                                        <li><a href="#">$0.00 - $100.00</a></li>
                                        <li><a href="#">$100.00 - $200.00</a></li>
                                        <li><a href="#">$200.00 - $300.00</a></li>
                                        <li><a href="#">$300.00 - $500.00</a></li>
                                        <li><a href="#">$500.00+</a></li>
                                    </ul>
                                    <form class="price-range">
                                        <input type="number" name="min_price" class="min_price text-center"
                                            placeholder="$min"><span class="delimiter">-</span><input type="number"
                                                name="max_price" class="max_price text-center" placeholder="$max"><a href="#" class="btn btn-primary btn-rounded">Go</a>
                                    </form>
                                </div>
                            </div>
                            <!-- End of Collapsible Widget -->
                            <!-- Start of Collapsible Widget -->
                            <div class="widget widget-collapsible">
                                <h3 class="widget-title"><span>Size</span></h3>
                                <ul class="widget-body filter-items item-check mt-1">
                                    <li><a href="#">Extra Large</a></li>
                                    <li><a href="#">Large</a></li>
                                    <li><a href="#">Medium</a></li>
                                    <li><a href="#">Small</a></li>
                                </ul>
                            </div>
                            <!-- End of Collapsible Widget -->
                            <!-- Start of Collapsible Widget -->
                            <div class="widget widget-collapsible">
                                <h3 class="widget-title"><span>Brand</span></h3>
                                <ul class="widget-body filter-items item-check mt-1">
                                    <li><a href="#">Elegant Auto Group</a></li>
                                    <li><a href="#">Green Grass</a></li>
                                    <li><a href="#">Node Js</a></li>
                                    <li><a href="#">NS8</a></li>
                                    <li><a href="#">Red</a></li>
                                    <li><a href="#">Skysuite Tech</a></li>
                                    <li><a href="#">Sterling</a></li>
                                </ul>
                            </div>
                            <!-- End of Collapsible Widget -->
                            <!-- Start of Collapsible Widget -->
                            <div class="widget widget-collapsible">
                                <h3 class="widget-title"><span>Color</span></h3>
                                <ul class="widget-body filter-items item-check">
                                    <li><a href="#">Black</a></li>
                                    <li><a href="#">Blue</a></li>
                                    <li><a href="#">Brown</a></li>
                                    <li><a href="#">Green</a></li>
                                    <li><a href="#">Grey</a></li>
                                    <li><a href="#">Orange</a></li>
                                    <li><a href="#">Yellow</a></li>
                                </ul>
                            </div>
                            <!-- End of Collapsible Widget -->
                        </div>
                        <!-- End of Sidebar Content -->
                    </aside>
                    <!-- End of Shop Sidebar -->
                </div>
            </div>
        </div>
    </main>
    <script>
        function showCartModal() {
            document.getElementById("cartModal").style.display = "block";
        }

        function closeCartModal() {
            document.getElementById("cartModal").style.display = "none";
        }
    </script>
</asp:Content>

