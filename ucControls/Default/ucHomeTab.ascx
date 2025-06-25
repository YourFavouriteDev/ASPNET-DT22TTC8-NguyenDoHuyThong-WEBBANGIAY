<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHomeTab.ascx.cs" Inherits="ucHomeTab" %>

<div class="tab tab-nav-boxed tab-nav-outline appear-animate">
    <ul class="nav nav-tabs justify-content-center" role="tablist">
        <asp:Repeater runat="server" ID="Repeater_Main">
            <ItemTemplate>
                <li class="nav-item mr-2 mb-2">
                    <a class="nav-link  br-sm font-size-md ls-normal <%# Container.ItemIndex ==0 ?"active":"" %>" href='#tab<%# Eval("ID") %>'><%# Eval("Title") %></a>
                </li>
                <li><a href='#tab<%# Eval("ID") %>' data-toggle="tab" aria-expanded="false" class=" "></a></li>
            </ItemTemplate>
        </asp:Repeater>


    </ul>
</div>
<!-- End of Tab Panel -->
<div class="tab-content product-wrapper appear-animate">
    <asp:Repeater runat="server" ID="Repeater_TabContent">
        <ItemTemplate>
            <div class="tab-pane <%# Container.ItemIndex ==0 ?"active":"" %> pt-4" id='tab<%# Eval("ID") %>'>
                <div class="row cols-xl-5 cols-md-4 cols-sm-3 cols-2">
                    <asp:Repeater runat="server" ID="Repeater_ProductTab" DataSource='<%# Eval("ProductTab") %>'>
                        <ItemTemplate>
                            <div class="product-wrap">
                                <div class="product text-center">
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
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<!-- End of Tab Content -->