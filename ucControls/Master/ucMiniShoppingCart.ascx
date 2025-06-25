<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMiniShoppingCart.ascx.cs" Inherits="ucMiniShoppingCart" %>

<asp:UpdatePanel runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="dropdown cart-dropdown cart-offcanvas mr-0 mr-lg-2">
            <div class="cart-overlay"></div>
            <a href="ProductShoppingCart.aspx" class="cart-toggle label-down link">
                <i class="w-icon-cart">
                    <span class="cart-count" runat="server" id="b_Count">0</span>
                </i>
                <span class="cart-label">Giỏ hàng</span>
            </a>
            <div class="dropdown-box">
                <div class="cart-header">
                    <span>Giỏ hàng</span>
                    <a href="#" class="btn-close">Close<i class="w-icon-long-arrow-right"></i></a>
                </div>
                <div class="products">
                    <asp:Repeater runat="server" ID="Repeater_Cart">
                        <ItemTemplate>
                            <div class="product product-cart">
                                <div class="product-detail">
                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="product-name"><%# Eval("Title") %>
                                    </a>
                                    <div class="price-box">
                                        <span class="product-quantity"><%# Eval("Quantity") %></span>
                                        <span class="product-price"><%# Eval("Price","{0:0,00 đ}") %></span>
                                    </div>
                                </div>
                                <figure class="product-media">
                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                        <img runat="server" src='<%# Eval("Avatar") %>' alt="product" height="84"
                                            width="94" />
                                    </a>
                                </figure>
                                <asp:LinkButton
                                    Text="text"
                                    class="btn btn-link btn-close"
                                    runat="server"
                                    ID="LinkButton_Remove"
                                    OnClientClick="return confirm('Bạn muốn xóa sản phẩm này không ?')"
                                    OnClick="LinkButton_Remove_Click"
                                    CommandArgument='<%# Eval("ID") %>'>
                                    <i class="fas fa-times"></i>
                                </asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="cart-total">
                    <label>Tổng cộng:</label>
                    <span class="price" runat="server" id="b_Amount"></span>
                </div>
                <div class="cart-action">
                    <a runat="server" href="~/ProductShoppingCart.aspx" class="btn btn-dark btn-outline btn-rounded">Xem giỏ hàng</a>
                    <a  runat="server" href="~/Checkout.aspx" class="btn btn-primary  btn-rounded">Thanh toán</a>
                </div>
            </div>
            <!-- End of Dropdown Box -->
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
