<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucShoppingCart.ascx.cs" Inherits="ucShoppingCart" %>
<div class="page-content">
    <div class="container">
        <div class="row gutter-lg mb-10">
            <div class="col-lg-12 pr-lg-4 mb-6">
                <table class="shop-table cart-table">
                    <thead>
                        <tr>
                            <th class="product-name"><span>Sản phẩm</span></th>
                            <th></th>
                            <th class="product-price"><span>Giá </span></th>
                            <th class="product-quantity"><span>Số lượng</span></th>
                            <th class="product-subtotal"><span>Tổng cộng</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater runat="server" ID="Repeater_Main">
                            <ItemTemplate>
                                <tr>
                                    <td class="product-thumbnail">
                                        <div class="p-relative">
                                            <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                                <figure>
                                                    <img runat="server" src='<%# Eval("Avatar") %>' alt="product"
                                                        width="300" height="338">
                                                </figure>
                                            </a>
                                            <asp:LinkButton runat="server"
                                                ID="LinkButton_Remove"
                                                OnClick="LinkButton_Remove_Click"
                                                CommandArgument='<%# Eval("ID") %>'
                                                class="btn btn-close"
                                                OnClientClick="return confirm('Bạn có muốn gỡ loại sản phẩm này không')">
                                                       <i class="fas fa-times"></i>
                                            </asp:LinkButton>
                                        </div>
                                        <a></td>
                                    <td class="product_name"><a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title") %></a></td>
                                    <td class="product-price"><%# Eval("Price","{0:0,00 đ}") %></td>
                                    <td class="product-quantity">
                                        <div class="input-group">
                                            <input class=" form-control " type="number" min="1" max="100000" value='<%# Eval("Quantity") %>'>
                                        <asp:LinkButton
                                            runat="server"
                                            ID="LinkButton_Decrease"
                                            OnClick="LinkButton_Decrease_Click"
                                            CommandArgument='<%# Eval("ID") %>'
                                            ClientIDMode="AutoID"
                                            class="quantity-plus w-icon-minus button button-r30"></asp:LinkButton>
                                        <asp:LinkButton
                                            runat="server"
                                            ID="LinkButton_Increase"
                                            OnClick="LinkButton_Increase_Click"
                                            CommandArgument='<%# Eval("ID") %>'
                                            ClientIDMode="AutoID"
                                            class="quantity-minus w-icon-plus button"></asp:LinkButton>
                                        </div>
                                        </td>
                                    <td class="product_total"><%# Eval("TotalPrice","{0:0,00 đ}") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td class="product-thumbnail"></td>
                            <td class="product-quantity"><div class="input-group"></div></td>
                            <td class="product-subtotal"><span class="amount" runat="server" id="span_Amounts">0</span></td>
                        </tr>
                    </tbody>
                </table>
                <div class="cart-action mb-6">
                    <a runat="server" href="~/" class="btn btn-dark btn-rounded btn-icon-left btn-shopping mr-auto"><i class="w-icon-long-arrow-left"></i>Tiếp tục mua sắm</a>
                    <asp:LinkButton Text="Lập đơn hàng"
                                        runat="server"
                                        class="btn btn-rounded "
                                        ID="LinkButton_Checkout"
                                        OnClientClick="return checkoutButtonClick();"
                                        OnClick="LinkButton_Checkout_Click" />
                </div>
            </div>
        </div>
    </div>
</div>