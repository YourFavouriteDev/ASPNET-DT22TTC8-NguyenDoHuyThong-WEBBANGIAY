<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<%@ Register Src="~/ucControls/Common/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function checkoutButtonClick() {
            $(".checkout-button").click();
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main checkout">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb shop-breadcrumb bb-no">
                    <li class="passed"><a runat="server" href="~/">Trang chủ</a></li>
                    <li>Lập đơn hàng</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->
        <!-- Start of PageContent -->
        <div class="page-content">
            <div class="container">
                <div class="form checkout-form">
                    <div class="row mb-9">
                        <div class="col-lg-7 pr-lg-4 mb-4">
                            <h3 class="title billing-title text-uppercase ls-10 pt-1 pb-3 mb-0">Thông tin thanh toán
                            </h3>
                            <div class="row gutter-sm">
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label>Họ và tên <span>*</span></label>
                                        <input type="text" runat="server" class="form-control form-control-md" id="input_FullName">
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label>Email <span>*</span></label>
                                        <input type="text" runat="server" id="input_Email" class="form-control form-control-md">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại <span>*</span></label>
                                <input type="text" runat="server" id="input_Phone" class="form-control form-control-md">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ <span>*</span></label>
                                <input type="text" runat="server" id="textarea_Address" class="form-control form-control-md">
                            </div>
                        </div>
                        <div class="col-lg-5 mb-4 sticky-sidebar-wrapper" >
                            <div class="order-summary-wrapper sticky-sidebar">
                                <h3 class="title text-uppercase ls-10">Đơn hàng của bạn</h3>
                                <div class="order-summary">
                                    <table class="order-table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">
                                                    <b>Sản phẩm Order</b>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater runat="server" ID="Repeater_Product">
                                                <ItemTemplate>
                                                    <tr class="bb-no">
                                                        <td class="product-name"><%# Eval("Title") %> <strong>× <%# Eval("Quantity") %></strong></td>
                                                        <td class="product-total"><%# Eval("TotalPrice","{0:0,00 đ}") %></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <tr class="cart-subtotal bb-no">
                                                <td>
                                                    <b>Tổng cộng</b>
                                                </td>
                                                <td>
                                                    <b runat="server" id="span_Amount"></b>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="payment-methods" id="payment_method">
                                        <h4 class="title font-weight-bold ls-25 pb-0 mb-3">Hình thức thanh toán</h4>
                                        <div class="accordion payment-accordion">
                                            <div class="card">
                                                <div class="card-header">
                                                    <input type="radio" runat="server" id="Radio1" name="checkout-option" checked="true" />
                                                    Thanh toán tại nhà
                                                </div>
                                                <div id="payment" class="card-body collapsed">
                                                    <p class="mb-0">
                                                        Trả tiền sau khi nhận hàng
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" style="cursor: no-drop">
                                                    <input type="radio" runat="server" id="input_checkout_online" name="checkout-option" disabled 
                                                        title="Chức năng đang phát triển, vui lòng chọn phương thức khác." />
                                                    Thanh toán Online
                                                </div>
                                                <div id="delivery" class="card-body collapsed">
                                                    <p class="mb-0">
                                                        Thanh toán qua ví điện tử Ngân Lượng
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group place-order pt-6">
                                        <uc1:ucMessage runat="server" ID="ucMessage_Bottom" />
                                    </div>
                                    <div class="form-group place-order pt-6">
                                        <asp:LinkButton Text="Đặt hàng ngay"
                                            runat="server"
                                            class="btn btn-dark "
                                            ID="LinkButton_Checkout"
                                            OnClick="Button_Checkout_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End of PageContent -->
    </main>
</asp:Content>

