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
                            <h4 class="title mb-3">People usually ask these</h4>
                            <div class="accordion accordion-bg accordion-gutter-md accordion-border">
                                <div class="card">
                                    <div class="card-header">
                                        <a href="#collapse1" class="collapse">How can I cancel my order?</a>
                                    </div>
                                    <div id="collapse1" class="card-body expanded">
                                        <p class="mb-0">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp orincid 
                                                idunt ut labore et dolore magna aliqua. Venenatis tellus in metus vulp utate eu sceler 
                                                isque felis. Vel pretium.
                                        </p>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a href="#collapse2" class="expand">Why is my registration delayed?</a>
                                    </div>
                                    <div id="collapse2" class="card-body collapsed">
                                        <p class="mb-0">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp orincid 
                                                idunt ut labore et dolore magna aliqua. Venenatis tellus in metus vulp utate eu sceler 
                                                isque felis. Vel pretium.
                                        </p>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a href="#collapse3" class="expand">What do I need to buy products?</a>
                                    </div>
                                    <div id="collapse3" class="card-body collapsed">
                                        <p class="mb-0">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp orincid 
                                                idunt ut labore et dolore magna aliqua. Venenatis tellus in metus vulp utate eu sceler 
                                                isque felis. Vel pretium.
                                        </p>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a href="#collapse4" class="expand">How can I track an order?</a>
                                    </div>
                                    <div id="collapse4" class="card-body collapsed">
                                        <p class="mb-0">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp orincid 
                                                idunt ut labore et dolore magna aliqua. Venenatis tellus in metus vulp utate eu sceler 
                                                isque felis. Vel pretium.
                                        </p>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a href="#collapse5" class="expand">How can I get money back?</a>
                                    </div>
                                    <div id="collapse5" class="card-body collapsed">
                                        <p class="mb-0">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                temp orincid idunt ut labore et dolore magna aliqua. Venenatis tellus in
                                                metus vulp utate eu sceler isque felis. Vel pretium.
                                        </p>
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
                <!-- End of Contact Section -->
            </div>

            <!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
            <div class="google-map contact-google-map" id="googlemaps"></div>
            <!-- End Map Section -->
        </div>
        <!-- End of PageContent -->
    </main>

    <div class="contact_area" style="margin-top: 50px">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact_message content">
                        <h3>Liên hệ với chúng tôi</h3>
                        <p>Chúng tôi chuyên cung cấp các sản phẩm thực phẩm sạch an toàn cho sức khỏe con người</p>
                        <ul>
                            <li><i class="fa fa-fax"></i>Địa chỉ : Ladeco Building, 266 Doi Can Street, Hà Nội, Vietnam</li>
                            <li><i class="fa fa-phone"></i><a href="#">nvquyen.cntt@gmail.com</a></li>
                            <li><i class="fa fa-envelope-o"></i><a href="tel:0972332803">0972332803</a>  </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact_message form">
                        <h3>Nhập thông tin liên hệ</h3>

                        <uc1:ucContactForm runat="server" ID="ucContactForm" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumbs End -->


</asp:Content>

