<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register Src="~/ucControls/Common/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>
<%@ Register Src="~/ucControls/ucContactForm.ascx" TagPrefix="uc1" TagName="ucContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb bb-no">
                    <li><a runat="server" href="~/">Trang chủ</a></li>
                    <li runat="server" id="span_Categories">Liên hệ với chúng tôi</li>
                </ul>
            </div>
        </nav>

        <!-- Start of PageContent -->
        <div class="page-content contact-us">
            <div class="container">
                <section class="content-title-section mb-10">
                    <h3 class="title title-center mb-3">Thông tin liên hệ
                    </h3>
                    <p class="text-center">
                        Số 5, đường Hùng Vương, Thành Phố Thủ Dầu Một, Tỉnh Bình Dương
                    </p>
                </section>
                <!-- End of Contact Title Section -->

                <section class="contact-information-section mb-10">
                    <div class="row owl-carousel owl-theme cols-xl-4 cols-md-3 cols-sm-2 cols-1" data-owl-options="{
                        'items': 4,
                        'nav': false,
                        'dots': false,
                        'loop': false,
                        'margin': 20,
                        'responsive': {
                            '0': {
                                'items': 1
                            },
                            '480': {
                                'items': 2
                            },
                            '768': {
                                'items': 3
                            },
                            '992': {
                                'items': 4
                            }
                        }
                    }">
                        <div class="icon-box text-center icon-box-primary">
                            <span class="icon-box-icon icon-email">
                                <i class="w-icon-envelop-closed"></i>
                            </span>
                            <div class="icon-box-content">
                                <h4 class="icon-box-title">Địa chỉ E-mail</h4>
                                <p>thong.nguyen@gmail.com</p>
                            </div>
                        </div>
                        <div class="icon-box text-center icon-box-primary">
                            <span class="icon-box-icon icon-headphone">
                                <i class="w-icon-headphone"></i>
                            </span>
                            <div class="icon-box-content">
                                <h4 class="icon-box-title">Số điện thoại</h4>
                                <p>(+84) 726 131 986</p>
                            </div>
                        </div>
                        <div class="icon-box text-center icon-box-primary">
                            <span class="icon-box-icon icon-map-marker">
                                <i class="w-icon-map-marker"></i>
                            </span>
                            <div class="icon-box-content">
                                <h4 class="icon-box-title">Địa chỉ</h4>
                                <p>Thủ Dầu Một - Bình Dương</p>
                            </div>
                        </div>
                        <div class="icon-box text-center icon-box-primary">
                            <span class="icon-box-icon icon-fax">
                                <i class="w-icon-fax"></i>
                            </span>
                            <div class="icon-box-content">
                                <h4 class="icon-box-title">Fax</h4>
                                <p>1-800-570-7777</p>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End of Contact Information section -->

                <hr class="divider mb-10 pb-1">

                <section class="contact-section">
                    <div class="row gutter-lg pb-3">
                        <div class="col-lg-6 mb-8">
                            <h4 class="title mb-3">Câu hỏi thường gặp</h4>
                            <div class="accordion accordion-bg accordion-gutter-md accordion-border">
                                <div class="accordion-custom">
                                    <div class="accordion-item">
                                        <div class="accordion-header">Làm thế nào để huỷ đơn hàng?</div>
                                        <div class="accordion-content">
                                            Bạn có thể huỷ đơn hàng trước khi chúng tôi xác nhận và giao hàng. Vui lòng liên hệ hotline hoặc mục “Theo dõi đơn hàng”.
                                        </div>
                                    </div>
                                
                                    <div class="accordion-item">
                                        <div class="accordion-header">Tôi không nhận được email xác nhận?</div>
                                        <div class="accordion-content">
                                            Vui lòng kiểm tra hộp thư rác. Nếu vẫn chưa nhận được, hãy xác minh địa chỉ email hoặc liên hệ bộ phận hỗ trợ.
                                        </div>
                                    </div>
                                
                                    <div class="accordion-item">
                                        <div class="accordion-header">Tôi cần gì để mua hàng?</div>
                                        <div class="accordion-content">
                                            Bạn chỉ cần có tài khoản hoặc nhập thông tin đầy đủ trong phần thanh toán. Không bắt buộc phải đăng nhập.
                                        </div>
                                    </div>
                                
                                    <div class="accordion-item">
                                        <div class="accordion-header">Làm sao để theo dõi đơn hàng?</div>
                                        <div class="accordion-content">
                                            Truy cập mục “Theo dõi đơn hàng” và nhập mã đơn hoặc đăng nhập tài khoản đã mua hàng.
                                        </div>
                                    </div>
                                
                                    <div class="accordion-item">
                                        <div class="accordion-header">Tôi sẽ được hoàn tiền khi nào?</div>
                                        <div class="accordion-content">
                                            Sau khi chúng tôi xác nhận yêu cầu hoàn tiền, thời gian xử lý từ 3 đến 5 ngày làm việc.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-8">
                            <h4 class="title mb-3">Gửi liên hệ</h4>
                            <uc1:ucContactForm runat="server" ID="ucContactForm1" />
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>
    <style>
        .accordion-custom .accordion-header {
            background: #f5f5f5;
            padding: 12px 16px;
            cursor: pointer;
            font-weight: bold;
            border-bottom: 1px solid #ddd;
        }
        
        .accordion-custom .accordion-content {
            display: none;
            padding: 12px 16px;
            border-bottom: 1px solid #ddd;
            background: #fff;
        }
        .accordion-custom .accordion-item.active .accordion-content {
            display: block;
        }
    </style>
</asp:Content>

