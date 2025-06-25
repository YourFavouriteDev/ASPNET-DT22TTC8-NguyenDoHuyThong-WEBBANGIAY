<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDealOfDay.ascx.cs" Inherits="ucControls_Default_ucDealOfDay" %>

<div class="col-lg-9 mb-4">
    <div class="single-product h-100 br-sm">
        <h4 class="title-sm title-underline font-weight-bolder ls-normal">Top 5 Ưu đãi hấp dẫn</h4>
        <div class="owl-carousel owl-theme owl-nav-top owl-nav-lg row cols-1 gutter-no"
            data-owl-options="{
                                'nav': true,
                                'dots': false,
                                'margin': 20,
                                'items': 1
                            }">

            <asp:Repeater runat="server" ID="Repeater_Deal">
                <ItemTemplate>
                    <div class="product product-single row">
                        <div class="col-md-6">
                            <div class="product-gallery product-gallery-vertical mb-0">
                                <div class="product-single-carousel owl-carousel owl-theme owl-nav-inner row cols-1 gutter-no">
                                    <asp:Repeater runat="server" DataSource='<%# Eval("ImageList").SplitToText(";") %>'>
                                        <ItemTemplate>
                                            <figure class="product-image">
                                                <img runat="server" src='<%# Eval("Text") %>'
                                                    data-zoom-image='<%# Eval("Text") %>'
                                                    alt="Product Image" width="800" height="900">
                                            </figure>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="product-thumbs-wrap">
                                    <div class="product-thumbs">
                                        <asp:Repeater runat="server" DataSource='<%# Eval("ImageList").SplitToText(";") %>'>
                                            <ItemTemplate>
                                                <div class="product-thumb">
                                                    <img runat="server" src='<%# Eval("Text") %>'
                                                        alt="Product thumb" width="60" height="68" />
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                                <div class="product-label-group">
                                    <%# Eval("OldPrice").ToDecimal() > 0
                                    ? String.Format("<label class='product-label label-discount'>{0}% Off</label>", 
                                        100 - (Eval("Price").ToDecimal() * 100 / Eval("OldPrice").ToDecimal()))
                                    : "" %>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product-details scrollable" style="padding:0">
                                <h2 class="product-title mb-1">
                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title") %>
                                    </a>
                                </h2>

                                <hr class="product-divider">

                                <div class="product-price">
                                    <ins class="new-price ls-50"><%# Eval("Price","{0:0,00 ₫}") %>
                                    </ins>
                                    <ins class="old-price ls-40"><%# Eval("OldPrice","{0:0,00 ₫}") %>
                                    </ins>
                                </div>

                                <div class="ratings-container">
                                    <div class="ratings-full">
                                        <span class="ratings" style="width: 100%;"></span>
                                    </div>
                                    <a href="#" class="rating-reviews">(5 đánh giá)</a>
                                </div>

                                <div class="product-form pt-4 mb-4">
                                    <asp:LinkButton 
                                            runat="server"
                                            ID="LinkButton_AddCart"
                                            OnClick="LinkButton_AddCart_Click"
                                            OnClientClick="showCartModal(); return true;"
                                            CommandArgument='<%# Eval("ID") %>'
                                            ClientIDMode="AutoID"
                                            Style="margin: 0"
                                            class="btn btn-primary">
                                        <i class="w-icon-cart"></i>
                                        Thêm vào giỏ hàng
                                    </asp:LinkButton>
                                </div>

                                <div class="social-links-wrapper mt-1">
                                    <div class="social-links">
                                        <div class="social-icons social-no-color border-thin">
                                            <a href="javascript:void(0)" 
                                                class="social-icon social-facebook w-icon-facebook"></a>
                                            <a href="javascript:void(0)" 
                                                class="social-icon social-twitter w-icon-twitter"></a>
                                            <a href="javascript:void(0)" 
                                                class="social-icon social-pinterest fab fa-pinterest-p"></a>
                                            <a href="javascript:void(0)" 
                                                class="social-icon social-whatsapp fab fa-whatsapp"></a>
                                            <a href="javascript:void(0)" 
                                                class="social-icon social-youtube fab fa-linkedin-in"></a>
                                        </div>
                                    </div>
                                    <span class="divider d-xs-show"></span>
                                    <div class="product-link-wrapper d-flex">
                                        <a href="javascript:void(0)" 
                                            class="btn-product-icon btn-wishlist w-icon-heart"></a>
                                        <a href="javascript:void(0)" 
                                            class="btn-product-icon btn-compare btn-icon-left w-icon-compare"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</div>
