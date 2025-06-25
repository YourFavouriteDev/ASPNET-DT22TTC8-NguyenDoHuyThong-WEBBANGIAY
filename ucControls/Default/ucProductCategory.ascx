<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProductCategory.ascx.cs" Inherits="ucControls_Default_ucProductCategory" %>

<asp:Repeater runat="server" ID="Repeater_Category">
    <ItemTemplate>
        <div class="product-wrapper-1 appear-animate mb-5">
            <div class="title-link-wrapper pb-1 mb-4">
                <h2 class="title ls-normal mb-0"><%# Eval("Title") %></h2>
                <a runat="server" href="~/ProductGrid.aspx" class="font-size-normal font-weight-bold ls-25 mb-0">Xem tất cả<i class="w-icon-long-arrow-right"></i>
                </a>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-4 mb-4">
                    <div class="banner h-100 br-sm" style="background-image: url(assets/images/demos/demo1/banners/2.jpg); background-color: #ebeced;">
                        <div class="banner-content content-top">
                            <h5 class="banner-subtitle font-weight-normal mb-2">Weekend Sale</h5>
                            <hr class="banner-divider bg-dark mb-2">
                            <h3 class="banner-title font-weight-bolder ls-25 text-uppercase">New Arrivals<br>
                                <span class="font-weight-normal text-capitalize">Collection</span>
                            </h3>
                            <a href="ProductGrid.aspx"
                                class="btn btn-dark btn-outline btn-rounded btn-sm">Mua Ngay</a>
                        </div>
                    </div>
                </div>
                <!-- End of Banner -->
                <div class="col-lg-9 col-sm-8">
                    <div class="owl-carousel owl-theme row cols-xl-4 cols-lg-3 cols-2" data-owl-options="{
                                'nav': false,
                                'dots': true,
                                'margin': 20,
                                'responsive': {
                                    '0': {
                                        'items': 2
                                    },
                                    '576': {
                                        'items': 2
                                    },
                                    '992': {
                                        'items': 3
                                    },
                                    '1200': {
                                        'items': 4
                                    }
                                }
                            }">
                        <div class="product-col">
                            <asp:Repeater runat="server" ID="Repeater_ProductTab" DataSource='<%# Eval("Product") %>'>
                                <ItemTemplate>
                                    <div class="product-wrap product text-center">
                                       <figure class="product-media product-media-cs">
                                        <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                            <img runat="server" src='<%# Eval("Avatar") %>' alt="Product"
                                                width="300" height="338" />
                                        </a>
                                        <div class="product-action-vertical">
                                            <asp:LinkButton
                                                Text="Mua ngay"
                                                runat="server"
                                                class="btn-product-icon w-icon-cart"
                                                title="Thêm vào giỏ hàng"
                                                ID="Button_AddCart"
                                                CommandArgument='<%# Eval("ID") %>'
                                                ClientIDMode="AutoID"
                                                OnClientClick="showCartModal(); return true;"
                                                OnClick="Button_AddCart_Click">
                                                <span class="lnr lnr-cart"></span>
                                            </asp:LinkButton>
                                            <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="btn-product-icon btn-quickview w-icon-search"
                                                title="Xem chi tiết"></a>
                                        </div>
                                    </figure>
                                    <div class="product-details">
                                        <h4 class="product-name">
                                            <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title") %></a></h4>
                                        <div class="ratings-container">
                                            <div class="ratings-full">
                                                <span class="ratings" style="width: 100%;"></span>
                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>
                                            <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="rating-reviews">(1 Reviews)</a>
                                        </div>
                                        <div class="product-price">
                                            <ins class="new-price"><%# Eval("Price").ToString("0,00 VNĐ") %></ins>
                                            <ins class="old-price"><%# Eval("OldPrice").ToString("0,00 VNĐ") %></ins>
                                        </div>
                                    </div>
                                    </div>
                                <%# (Container.ItemIndex+1)%2==0?"</div><div class='product-wrap product text-center'>":"" %>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>


