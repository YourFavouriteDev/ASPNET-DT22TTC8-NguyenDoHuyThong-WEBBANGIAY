<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%--<%@ Register Src="~/ucControls/ucSpecialProduct.ascx" TagPrefix="uc1" TagName="ucSpecialProduct" %>--%>
<%@ Register Src="~/ucControls/Default/ucSlideHomeTop.ascx" TagPrefix="uc2" TagName="ucSlideHomeTop" %>
<%@ Register Src="~/ucControls/Default/ucDealOfDay.ascx" TagPrefix="uc1" TagName="ucDealOfDay" %>
<%@ Register Src="~/ucControls/Default/ucDealLeft.ascx" TagPrefix="uc1" TagName="ucDealLeft" %>
<%@ Register Src="~/ucControls/Default/ucHomeTab.ascx" TagPrefix="uc1" TagName="ucHomeTab" %>
<%@ Register Src="~/ucControls/Default/ucProductCategory.ascx" TagPrefix="uc1" TagName="ucProductCategory" %>
<%@ Register Src="~/ucControls/Default/ucHomeArticle.ascx" TagPrefix="uc1" TagName="ucHomeArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main">
        <!-- Start of .intro-section -->
        <uc2:ucSlideHomeTop runat="server" ID="ucSlideHomeTop" />
        <!-- End of .intro-section -->

        <!-- Start of Top Container -->
        <div class="container">
            <!-- Start of Icon Box Wrapper -->
            <div class="owl-carousel owl-theme row cols-md-4 cols-sm-3 cols-1icon-box-wrapper appear-animate br-sm mt-6 mb-6"
                data-owl-options="{
                    'nav': false,
                    'dots': false,
                    'loop': false,
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
                            'items': 3
                        },
                        '1200': {
                            'items': 4
                        }
                    }
                }">
                <div class="icon-box icon-box-side icon-box-primary">
                    <span class="icon-box-icon icon-shipping">
                        <i class="w-icon-truck"></i>
                    </span>
                    <div class="icon-box-content">
                        <h4 class="icon-box-title font-weight-bold mb-1">Miễn phí giao hàng & đổi trả</h4>
                        <p class="text-default">Cho tất cả đơn hàng trên 500.000 đ</p>
                    </div>
                </div>
                <div class="icon-box icon-box-side icon-box-primary">
                    <span class="icon-box-icon icon-payment">
                        <i class="w-icon-bag"></i>
                    </span>
                    <div class="icon-box-content">
                        <h4 class="icon-box-title font-weight-bold mb-1">Bảo mật thanh toán</h4>
                        <p class="text-default">Đảm bảo thanh toán an toàn</p>
                    </div>
                </div>
                <div class="icon-box icon-box-side icon-box-primary icon-box-money">
                    <span class="icon-box-icon icon-money">
                        <i class="w-icon-money"></i>
                    </span>
                    <div class="icon-box-content">
                        <h4 class="icon-box-title font-weight-bold mb-1">Chính sách hoàn tiền</h4>
                        <p class="text-default">Hoàn tiền trong vòng 30 ngày</p>
                    </div>
                </div>
                <div class="icon-box icon-box-side icon-box-primary icon-box-chat">
                    <span class="icon-box-icon icon-chat">
                        <i class="w-icon-chat"></i>
                    </span>
                    <div class="icon-box-content">
                        <h4 class="icon-box-title font-weight-bold mb-1">Hổ trợ khách hàng</h4>
                        <p class="text-default">Tổng đài liên hệ 24/7</p>
                    </div>
                </div>
            </div>
            <!-- End of Icon Box Wrapper -->

            <!-- Start of Banner Video Wrapper -->
            <div class="row category-banner-wrapper appear-animate pt-6 pb-8">
                <div class="col-md-6 mb-4">
                    <div class="banner banner-fixed br-xs">
                        <figure>
                            <video autoplay muted loop playsinline
                                   width="610" height="200"
                                   style="background-color: #ecedec; object-fit: cover;">
                                <source src="assets/video/video_shoe.mp4" type="video/mp4" />
                            </video>
                        </figure>
                        <div class="banner-content y-50 mt-0">
                            <h5 class="banner-subtitle font-weight-normal text-white">
                                Giảm giá tới <span class="text-secondary font-weight-bolder text-uppercase ls-25">20%</span>
                            </h5>
                            <h3 class="banner-title text-uppercase text-white">
                                <span class="font-weight-normal text-capitalize">Giày thể thao</span>
                            </h3>
                            <div class="banner-price-info text-white font-weight-normal text-capitalize">
                                Giá chỉ từ <span class="text-secondary font-weight-bolder">170.000 đ</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="banner banner-fixed br-xs">
                        <figure>
                            <video autoplay muted loop playsinline
                                   width="610" height="200"
                                   style="background-color: #636363; object-fit: cover;">
                                <source src="assets/video/video_shoe_2.mp4" type="video/mp4" />
                            </video>
                        </figure>
                        <div class="banner-content y-50 mt-0">
                            <h5 class="banner-subtitle font-weight-normal text-capitalize text-white">Điểm đến mới</h5>
                            <h3 class="banner-title text-white text-uppercase">
                                <span class="font-weight-normal text-capitalize">Thể thao thời trang</span>
                            </h3>
                            <div class="banner-price-info text-white font-weight-normal text-capitalize">
                                Chỉ từ <span class="text-secondary font-weight-bolder">900.000</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Banner Video Wrapper -->

            <!-- Start of Deals Wrapper -->
            <div class="row deals-wrapper appear-animate mb-8">
                <uc1:ucDealOfDay runat="server" ID="ucDealOfDay" />
                <uc1:ucDealLeft runat="server" ID="ucDealLeft" />
            </div>
            <!-- End of Deals Wrapper -->
        </div>
        <!-- End of .category-section top-category -->

        <!-- Start of Catainer -->
        <div class="container">
            <!-- Start of Tab Content -->
            <h2 class="title justify-content-center ls-normal mb-4 mt-10 pt-1 appear-animate">Sản phẩm mới nhất
            </h2>
            <uc1:ucHomeTab runat="server" ID="ucHomeTab" />
            <!-- End of Tab Content -->

            <uc1:ucProductCategory runat="server" ID="ucProductCategory" />
           
            <!-- Start of Brands Wrapper -->
            <h2 class="title title-underline mb-4 ls-normal appear-animate">Đối tác của chúng tôi</h2>
            <div class="owl-carousel owl-theme brands-wrapper mb-9 row gutter-no cols-xl-6 cols-lg-5 cols-md-4 cols-sm-3 cols-2 appear-animate"
                data-owl-options="{
                    'nav': false,
                    'dots': false,
                    'margin': 0,
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
                            'items': 5
                        },
                        '1200': {
                            'items': 6
                        }
                    }
                }">
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/1.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/2.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/3.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/4.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/5.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/6.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/7.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/8.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/9.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/10.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
                <div class="brand-col">
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/11.png" alt="Brand" width="410" height="186" />
                    </figure>
                    <figure class="brand-wrapper">
                        <img src="assets/images/demos/demo1/brands/12.png" alt="Brand" width="410" height="186" />
                    </figure>
                </div>
            </div>
            <!-- End of Brands Wrapper -->
            
            <!-- Post Wrapper -->
            <uc1:ucHomeArticle runat="server" ID="ucHomeArticle" />
        </div>
        <!--End of Catainer -->
    </main>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJS" runat="Server">
    <script>
        $(function () {
            $(".category-dropdown").addClass("show-cs");
        })
    </script>
    <script>
        $(document).ready(function () {
            $('.product-thumbs .product-thumb').on('click', function (e) {
                e.preventDefault();
                e.stopPropagation();
                return false;
            });
        });
    </script>
    <script>
        function showCartModal() {
            document.getElementById("cartModal").style.display = "block";
        }

        function closeCartModal() {
            document.getElementById("cartModal").style.display = "none";
        }
    </script>
</asp:Content>

