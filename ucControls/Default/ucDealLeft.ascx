<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDealLeft.ascx.cs" Inherits="ucControls_Default_ucDealLeaft" %>
<div class="col-lg-3 mb-4">
    <div class="widget widget-products widget-products-bordered h-100" style="border: none">
        <div class="widget-body br-sm h-100" style="border: none">
            <h4 class="title-sm title-underline font-weight-bolder ls-normal mb-2">Top sản phẩm giảm giá
            </h4>
            <div class="owl-carousel owl-theme owl-nav-top row cols-lg-1 cols-md-3"
                data-owl-options="{
                                    'nav': true,
                                    'dots': false,
                                    'margin': 20,
                                    'responsive': {
                                        '0': {
                                            'items': 1
                                        },
                                        '576': {
                                            'items': 2
                                        },
                                        '768': {
                                            'items': 3
                                        },
                                        '992': {
                                            'items': 1
                                        }
                                    }
                                }">
                <div class="product-widget-wrap">
                    <asp:Repeater runat="server" ID="Repeater_Deal">
                        <ItemTemplate>
                            <div class="product product-widget bb-no">
                                <figure class="product-media">
                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                        <img  runat="server" src='<%# Eval("Avatar") %>' alt="Product"
                                            width="105" height="118" />
                                    </a>
                                </figure>
                                <div class="product-details">
                                    <h4 class="product-name">
                                        <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title") %></a>
                                    </h4>
                                    <div class="ratings-container">
                                        <div class="ratings-full">
                                            <span class="ratings" style="width: 100%;"></span>
                                            <span class="tooltiptext tooltip-top"></span>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <ins class="new-price"><%# Eval("Price","{0:0,00 ₫}") %></ins>
                                          <ins class="old-price"><%# Eval("OldPrice","{0:0,00 ₫}") %></ins>
                                    </div>
                                </div>
                            </div>
                            <%# (Container.ItemIndex + 1)%3==0?"</div><div class='product-widget-wrap'>":"" %>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
               
            </div>
        </div>
    </div>
</div>
