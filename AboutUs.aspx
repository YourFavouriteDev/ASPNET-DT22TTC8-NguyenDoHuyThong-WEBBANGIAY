<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb bb-no">
                    <li><a runat="server" href="~/">Trang chủ</a></li>
                    <li runat="server" id="span_Categories">Giới thiệu</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->

        <!-- Start of Page Content -->
        <div class="page-content">
            <div class="container">
                <section class="introduce mb-10 pb-10">
    <h2 class="title title-center">Chúng tôi cam kết mang đến sản phẩm chất lượng<br>
        Chuyên cung cấp giày dép thời trang & thể thao
                    </h2>
                        <p class=" mx-auto text-center">
        Chúng tôi luôn nỗ lực mang đến trải nghiệm mua sắm hoàn hảo cùng sản phẩm giày chính hãng,
        đa dạng mẫu mã và giá cả hợp lý.
                    </p>
                    <figure class="br-lg">
                        <img src="assets/images/pages/about_us/1.jpg" alt="Banner"
                            width="1240" height="540" style="background-color: #D0C1AE;" />
                    </figure>
                </section>

                <section class="customer-service mb-7">
                    <div class="row align-items-center">
                        <div class="col-md-6 pr-lg-8 mb-8">
                            <h2 class="title text-left">Dịch vụ tận tâm & hỗ trợ chuyên nghiệp cho khách hàng</h2>
                            <div class="accordion accordion-simple accordion-plus">
                                <div class="card border-no">
                                    <div class="card-header">
                        <a href="#collapse3-1" class="collapse">Hỗ trợ khách hàng</a>
                    </div>
                    <div class="card-body expanded" id="collapse3-1">
                        <p class="mb-0">
                            Đội ngũ chăm sóc khách hàng của chúng tôi luôn sẵn sàng tư vấn và giải đáp mọi thắc mắc
                            về sản phẩm, đơn hàng và chính sách đổi trả.
                        </p>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                         <a href="#collapse3-2" class="expand">Tư vấn mua hàng</a>
                    </div>
                    <div class="card-body collapsed" id="collapse3-2">
                        <p class="mb-0">
                            Nhận tư vấn online nhanh chóng, giúp bạn chọn đúng sản phẩm phù hợp với nhu cầu
                            về kích cỡ, phong cách và ngân sách.
                        </p>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                        <a href="#collapse3-3" class="expand">Quản lý đơn hàng</a>
                    </div>
                    <div class="card-body collapsed" id="collapse3-3">
                        <p class="mb-0">
                            Theo dõi tình trạng đơn hàng, lịch sử mua sắm và quản lý thông tin cá nhân một cách dễ dàng
                            và an toàn trên hệ thống của chúng tôi.
                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-8">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/2.jpg" alt="Banner"
                                    width="610" height="500" style="background-color: #CECECC;" />
                            </figure>
                        </div>
                    </div>
                </section>

                <section class="count-section mb-10 pb-5">
                    <div class="owl-carousel owl-theme row cols-lg-3 cols-md-2 cols-1" data-owl-options="{
                            'nav': false,
                            'dots': true,
                            'responsive': {
                                '0': {
                                    'items': 1
                                },
                                '768': {
                                    'items': 2
                                },
                                '992': {
                                    'items': 3
                                }
                            }
                        }">
                        <div class="counter-wrap">
                            <div class="counter text-center">
                                <span class="count-to" data-to="15">0</span>
                                <span>M+</span>
                <h4 class="title title-center">Sản phẩm đã bán</h4>
                <p>
                    Hàng triệu đôi giày đã đến tay khách hàng<br>
                    trên toàn quốc
                </p>
                            </div>
                        </div>
                        <div class="counter-wrap">
                            <div class="counter text-center">
                                <span>$</span>
                                <span class="count-to" data-to="25">0</span>
                                <span>B+</span>
                        <h4 class="title title-center">Doanh thu cộng đồng</h4>
                <p>
                    Hệ thống cộng tác viên và đại lý<br>
                    phát triển mạnh mẽ cùng thương hiệu
                </p>
                            </div>
                        </div>
                        <div class="counter-wrap">
                            <div class="counter text-center">
                                <span class="count-to" data-to="100">0</span>
                                <span>M+</span>
                <h4 class="title title-center">Khách hàng tin tưởng</h4>
                <p>
                    Chúng tôi tự hào phục vụ hàng triệu khách hàng<br>
                    mỗi năm với dịch vụ xuất sắc
                </p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <section class="boost-section pt-10 pb-10">
                <div class="container mt-10 mb-9">
                    <div class="row align-items-center mb-10">
                        <div class="col-md-6 mb-8">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/3.jpg" alt="Banner"
                                    width="610" height="450" style="background-color: #9E9DA2;" />
                            </figure>
                        </div>
                        <div class="col-md-6 pl-lg-8 mb-8">
                <h4 class="title text-left">Chúng tôi giúp bạn nâng tầm phong cách cùng đôi giày hoàn hảo</h4>
                <p class="mb-6">
                    Mỗi bước chân là một dấu ấn – chúng tôi mang đến sự tự tin, phong cách và trải nghiệm tuyệt vời
                    qua từng đôi giày. Khám phá ngay các bộ sưu tập mới và ưu đãi hấp dẫn tại cửa hàng.
                </p>
                            <a href="#" class="btn btn-dark btn-rounded">Visit Our Store</a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="member-section mt-10 pt-9 mb-10 pb-4">
                <div class="container">
        <h4 class="title title-center mb-3">Gặp Gỡ Đội Ngũ Lãnh Đạo</h4>
        <p class="text-center mb-8">
            Đội ngũ sáng lập và điều hành với niềm đam mê và tâm huyết<br>
            đưa thương hiệu giày Việt vươn xa
        </p>
                    <div class="owl-carousel owl-theme row cols-xl-4 cols-lg-3 cols-sm-2 cols-1" data-owl-options="{
                            'nav': false,
                            'dots': true,
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
                                    'items': 4
                                }
                            }
                        }">
                        <div class="member-wrap">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/4.jpg" alt="Member" width="295" height="332" />
                            </figure>
                            <div class="member-info text-center" style="margin-top: 1rem;">
                                <h4 class="member-name">John Doe</h4>
                                <p class="text-uppercase">Founder &amp; CEO</p>
                            </div>
                        </div>
                        <div class="member-wrap">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/5.jpg" alt="Member" width="295" height="332" />
                            </figure>
                            <div class="member-info text-center" style="margin-top: 1rem;">
                                <h4 class="member-name">Jessica Doe</h4>
                                <p class="text-uppercase">Marketing</p>
                            </div>
                        </div>
                        <div class="member-wrap">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/6.jpg" alt="Member" width="295" height="332" />
                            </figure>
                            <div class="member-info text-center" style="margin-top: 1rem;">
                                <h4 class="member-name">Rick Edward Doe</h4>
                                <p class="text-uppercase">Developer</p>
                            </div>
                        </div>
                        <div class="member-wrap">
                            <figure class="br-lg">
                                <img src="assets/images/pages/about_us/7.jpg" alt="Member" width="295" height="332" />
                            </figure>
                            <div class="member-info text-center" style="margin-top: 1rem;">
                                <h4 class="member-name">Melinda Wolosky</h4>
                                <p class="text-uppercase">Design</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
</asp:Content>