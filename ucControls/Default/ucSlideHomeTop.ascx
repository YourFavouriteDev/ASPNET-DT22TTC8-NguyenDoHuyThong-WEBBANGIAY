﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSlideHomeTop.ascx.cs" Inherits="ucControls_ucSlideHomeTop" %>

<section class="intro-section">
    <div class="owl-carousel owl-theme owl-nav-inner owl-dot-inner owl-nav-lg animation-slider gutter-no row cols-1"
        data-owl-options="{
                    'nav': false,
                    'dots': true,
                    'items': 1,
                    'autoplay': true,
                    'autoplayTimeout': 5000,
                    'autoplayHoverPause': false,
                    'loop': true,
                    'responsive': {
                        '1600': {
                            'nav': true,
                            'dots': false
                        }
                    }
                }">
        <div class="banner banner-fixed intro-slide intro-slide1"
            style="background-image: url(assets/images/demos/demo1/sliders/slide-1.jpg); background-color: #ebeef2;">
            <div class="container">
                <figure class="slide-image skrollable slide-animate">
                    <img src="assets/images/demos/demo1/sliders/shoes.png" alt="Banner"
                        data-bottom-top="transform: translateY(10vh);"
                        data-top-bottom="transform: translateY(-10vh);" width="474" height="397">
                </figure>
                <div class="banner-content y-50 text-right">
                    <h5 class="banner-subtitle font-weight-normal text-default ls-50 lh-1 mb-2 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.2s'
                                }">Giày <span class="p-relative d-inline-block">Adidas</span>
                    </h5>
                    <h3 class="banner-title font-weight-bolder ls-25 lh-1 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.4s'
                                }">GIÀY CHẠY BỘ
                    </h3>
                    <p class="font-weight-normal text-default slide-animate" data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.6s'
                                }">
                        Khuyến mãi lên tới <span class="font-weight-bolder text-secondary">30% </span>
                    </p>

                    <a href="ProductGrid.aspx"
                        class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.8s'
                                }">Xem chi tiết<i class="w-icon-long-arrow-right"></i></a>

                </div>
                <!-- End of .banner-content -->
            </div>
            <!-- End of .container -->
        </div>
        <!-- End of .intro-slide1 -->

        <div class="banner banner-fixed intro-slide intro-slide2"
            style="background-image: url(assets/images/demos/demo1/sliders/slide-2.jpg); background-color: #ebeef2;">
            <div class="container">
                <figure class="slide-image skrollable slide-animate" data-animation-options="{
                                'name': 'fadeInUpShorter',
                                'duration': '1s'
                            }">
                    <img src="assets/images/demos/demo1/sliders/men.png" alt="Banner"
                        data-bottom-top="transform: translateX(10vh);"
                        data-top-bottom="transform: translateX(-10vh);" width="480" height="633">
                </figure>
                <div class="banner-content d-inline-block y-50">
                     <h5 class="banner-subtitle font-weight-normal text-default ls-50 lh-1 mb-2 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.2s'
                                }">Custom <span class="p-relative d-inline-block">Men’s</span>
                    </h5>
                    <h3 class="banner-title font-weight-bolder ls-25 lh-1 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.4s'
                                }">GIÀY CHẠY BỘ
                    </h3>
                    <p class="font-weight-normal text-default slide-animate" data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.6s'
                                }">
                        Khuyến mãi lên tới <span class="font-weight-bolder text-secondary">30% </span>
                    </p>

                    <a href="ProductGrid.aspx"
                        class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.8s'
                                }">Xem chi tiết<i class="w-icon-long-arrow-right"></i></a>

                </div>
                <!-- End of .banner-content -->
            </div>
            <!-- End of .container -->
        </div>
        <!-- End of .intro-slide2 -->

        <div class="banner banner-fixed intro-slide intro-slide3"
            style="background-image: url(assets/images/demos/demo1/sliders/slide-3.jpg); background-color: #f0f1f2;">
            <div class="container">
                <figure class="slide-image skrollable slide-animate" data-animation-options="{
                                'name': 'fadeInDownShorter',
                                'duration': '1s'
                            }">
                    <img src="assets/images/demos/demo1/sliders/skate.png" alt="Banner"
                        data-bottom-top="transform: translateY(10vh);"
                        data-top-bottom="transform: translateY(-10vh);" width="310" height="444">
                </figure>
                <div class="banner-content text-right y-50">
                    <p class="font-weight-normal text-default text-uppercase mb-0 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInLeftShorter',
                                    'duration': '1s',
                                    'delay': '.6s'
                                }">
                        Top weekly Seller
                    </p>
                    <h5 class="banner-subtitle font-weight-normal text-default ls-25 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInLeftShorter',
                                    'duration': '1s',
                                    'delay': '.4s'
                                }">Trending Collection
                    </h5>
                    <h3 class="banner-title p-relative font-weight-bolder ls-50 slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInLeftShorter',
                                    'duration': '1s',
                                    'delay': '.2s'
                                }">
                        <span class="text-white mr-4">Roller</span>-skate
                    </h3>
                    <p class="font-weight-normal text-default slide-animate" data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.6s'
                                }">
                         <span class="font-weight-bolder text-secondary">Đừng bỏ lỡ cơ hội</span>
                    </p>

                    <a href="ProductGrid.aspx"
                        class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"
                        data-animation-options="{
                                    'name': 'fadeInRightShorter',
                                    'duration': '1s',
                                    'delay': '.8s'
                                }">Xem chi tiết<i class="w-icon-long-arrow-right"></i></a>

                </div>
                <!-- End of .container -->
            </div>
        </div>
        <!-- End of .intro-slide3 -->
    </div>
    <!-- End of .owl-carousel -->
</section>
