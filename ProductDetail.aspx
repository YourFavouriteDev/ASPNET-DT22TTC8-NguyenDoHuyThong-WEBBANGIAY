<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<%@ Register Src="~/ucControls/ucSpecialProduct.ascx" TagPrefix="uc1" TagName="ucSpecialProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main class="main mb-10 pb-1">
        <nav class="breadcrumb-nav container">
            <ul class="breadcrumb bb-no">
                <li><a runat="server" href="~/">Trang chủ</a></li>
                <li>Chi tiết sản phẩm</li>
            </ul>
        </nav>
        <div class="page-content">
            <div class="container">
                <div class="row gutter-lg">
                    <div class="main-content">
                        <asp:Repeater runat="server" ID="Repeater_Product">
                            <ItemTemplate>
                                <div class="product product-single row">
                                    <div class="col-md-6 mb-6">
                                        <div class="product-gallery product-gallery-sticky">
                                            <div
                                                class="product-single-carousel owl-carousel owl-theme owl-nav-inner row cols-1 gutter-no">
                                                <asp:Repeater runat="server" ID="Repeater_ImageList" DataSource='<%# Eval("ImageList").SplitToText(";") %>'>
                                                    <ItemTemplate>
                                                        <figure class="product-image">
                                                            <img runat="server" src='<%# Eval("Text") %>'
                                                                data-zoom-image='<%# Eval("Text") %>'
                                                                alt="Electronics Black Wrist Watch" width="800" height="900">
                                                        </figure>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <div class="product-thumbs-wrap">
                                                <div class="product-thumbs row cols-4 gutter-sm">
                                                    <asp:Repeater runat="server" ID="Repeater1" DataSource='<%# Eval("ImageList").SplitToText(";") %>'>
                                                        <ItemTemplate>

                                                            <div class="product-thumb <%# Container.ItemIndex==0?"active":"" %>">
                                                                <img runat="server" src='<%# Eval("Text") %>'
                                                                    alt="Product Thumb" width="800" height="900">
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                                <button class="thumb-up disabled"><i class="w-icon-angle-left"></i></button>
                                                <button class="thumb-down disabled">
                                                    <i
                                                        class="w-icon-angle-right"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4 mb-md-6">
                                        <div class="product-details" data-sticky-options="{'minWidth': 767}">
                                            <h2 class="product-title"><%# Eval("Title") %></h2>
                                            <div class="product-bm-wrapper">
                                                <figure class="brand">
                                                    <img src="assets/images/products/brand/brand-1.jpg" alt="Brand"
                                                        width="102" height="48" />
                                                </figure>
                                                <div class="product-meta">
                                                    <div class="product-categories">
                                                        Danh mục:
                                                    <span class="product-category"><a href="ProductGrid.aspx">Sản phẩm</a></span>
                                                    </div>
                                                    <div class="product-sku">
                                                        ID: <span><%# Eval("ID") %></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="product-divider">
                                            <div class="product-price">
                                                <ins class="new-price"><%# Eval("Price","{0:0,00 ₫}") %></ins>
                                                <ins class="old-price"><%# Eval("OldPrice","{0:0,00 ₫}") %></ins>
                                            </div>
                                            <div class="ratings-container">
                                                <div class="ratings-full">
                                                    <span class="ratings" style="width: 100%;"></span>
                                                </div>
                                                <a href="#product-tab-reviews" class="rating-reviews scroll-to">(10
                                                Đánh giá)</a>
                                            </div>
                                            <div class="product-short-desc">
                                                <ul class="list-type-check list-style-none">
                                                    <li>Mua online thêm quà: Tặng Phiếu mua hàng Gia dụng trị giá 300,000đ cho Khách hàng tại các tỉnh thành áp dụng chỉ thị 16</li>
                                                    <li>Tặng Phiếu mua hàng 100,000đ áp dụng mua thẻ cào, thẻ game</li>
                                                    <li>Giảm giá 600,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay).</li>
                                                </ul>
                                            </div>
                                            <hr class="product-divider">
                                            <div class="d-flex">
                                                <label style="font-size: 14px; margin-right: 10px; min-width: 50px">Mô tả</label>
                                                <div class="d-flex align-items-center product-variations" style="font-size: 12px;">
                                                    <%# Eval("Description") %>
                                                </div>
                                            </div>
                                            <div class="fix-bottom product-sticky-content sticky-content mt-4">
                                                <div class="product-form container">
                                                    <asp:LinkButton Text=""
                                                        runat="server"
                                                        ID="LinkButton_AddCart"
                                                        OnClientClick="showCartModal(); return true;"
                                                        OnClick="LinkButton_AddCart_Click"
                                                        CommandArgument='<%# Eval("ID") %>'
                                                        ClientIDMode="AutoID"
                                                        Style="margin: 0"
                                                        class="btn btn-primary"
                                                        >
                                                        <i class="w-icon-cart"></i>
                                                        Thêm vào giỏ hàng
                                                    </asp:LinkButton>
                                                </div>
                                            </div>
                                            <div class="social-links-wrapper">
                                                <div class="social-links">
                                                    <div class="social-icons social-no-color border-thin">
                                                        <a href="javascript:void(0)" class="social-icon social-facebook w-icon-facebook"></a>
                                                        <a href="javascript:void(0)" class="social-icon social-twitter w-icon-twitter"></a>
                                                        <a href="javascript:void(0)"
                                                            class="social-icon social-pinterest fab fa-pinterest-p"></a>
                                                        <a href="javascript:void(0)" class="social-icon social-whatsapp fab fa-whatsapp"></a>
                                                        <a href="javascript:void(0)"
                                                            class="social-icon social-youtube fab fa-linkedin-in"></a>
                                                    </div>
                                                </div>
                                                <span class="divider d-xs-show"></span>
                                                <div class="product-link-wrapper d-flex">
                                                    <a href="javascript:void(0)"
                                                        class="btn-product-icon btn-wishlist w-icon-heart"><span></span></a>
                                                    <a href="javascript:void(0)"
                                                        class="btn-product-icon btn-compare btn-icon-left w-icon-compare"><span></span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab tab-nav-boxed tab-nav-underline product-tabs">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item">
                                            <a href="#product-tab-description" class="nav-link active">Mô tả sản phẩm</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#product-tab-specification" class="nav-link">Cấu hình sản phẩm</a>
                                        </li>
                                        <%--<li class="nav-item">
                                            <a href="#product-tab-reviews" class="nav-link">Đánh giá sản phẩm</a>
                                        </li>--%>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="product-tab-description">
                                            <div class="row mb-4">
                                                <div class="col-md-12 mb-5">
                                                    <p class="mb-4">
                                                        <%# Eval("Content") %>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="product-tab-specification">
                                            <ul class="list-none">
                                                <asp:Repeater runat="server" ID="Repeater2" DataSource='<%# Eval("Description").SplitToTextValue(":", ";") %>'>
                                                    <ItemTemplate>
                                                        <li>
                                                            <label><%# Eval("Text") %></label>
                                                            <p><%# Eval("Value") %></p>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                        <%--<div class="tab-pane" id="product-tab-reviews">
                                            <div class="row mb-4">
                                                <div class="col-xl-4 col-lg-5 mb-4">
                                                    <div class="ratings-wrapper">
                                                        <div class="avg-rating-container">
                                                            <h4 class="avg-mark font-weight-bolder ls-50">3.3</h4>
                                                            <div class="avg-rating">
                                                                <p class="text-dark mb-1">Average Rating</p>
                                                                <div class="ratings-container">
                                                                    <div class="ratings-full">
                                                                        <span class="ratings" style="width: 60%;"></span>
                                                                    </div>
                                                                    <a href="javascript:void(0)" class="rating-reviews">(3 Reviews)</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="ratings-value d-flex align-items-center text-dark ls-25">
                                                            <span
                                                                class="text-dark font-weight-bold">66.7%</span>Recommended<span
                                                                    class="count">(2 of 3)</span>
                                                        </div>
                                                        <div class="ratings-list">
                                                            <div class="ratings-container">
                                                                <div class="ratings-full">
                                                                    <span class="ratings" style="width: 100%;"></span>
                                                                    
                                                                </div>
                                                                <div class="progress-bar progress-bar-sm ">
                                                                    <span></span>
                                                                </div>
                                                                <div class="progress-value">
                                                                    <mark>70%</mark>
                                                                </div>
                                                            </div>
                                                            <div class="ratings-container">
                                                                <div class="ratings-full">
                                                                    <span class="ratings" style="width: 80%;"></span>
                                                                    
                                                                </div>
                                                                <div class="progress-bar progress-bar-sm ">
                                                                    <span></span>
                                                                </div>
                                                                <div class="progress-value">
                                                                    <mark>30%</mark>
                                                                </div>
                                                            </div>
                                                            <div class="ratings-container">
                                                                <div class="ratings-full">
                                                                    <span class="ratings" style="width: 60%;"></span>
                                                                    
                                                                </div>
                                                                <div class="progress-bar progress-bar-sm ">
                                                                    <span></span>
                                                                </div>
                                                                <div class="progress-value">
                                                                    <mark>40%</mark>
                                                                </div>
                                                            </div>
                                                            <div class="ratings-container">
                                                                <div class="ratings-full">
                                                                    <span class="ratings" style="width: 40%;"></span>
                                                                    
                                                                </div>
                                                                <div class="progress-bar progress-bar-sm ">
                                                                    <span></span>
                                                                </div>
                                                                <div class="progress-value">
                                                                    <mark>0%</mark>
                                                                </div>
                                                            </div>
                                                            <div class="ratings-container">
                                                                <div class="ratings-full">
                                                                    <span class="ratings" style="width: 20%;"></span>
                                                                    
                                                                </div>
                                                                <div class="progress-bar progress-bar-sm ">
                                                                    <span></span>
                                                                </div>
                                                                <div class="progress-value">
                                                                    <mark>0%</mark>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-8 col-lg-7 mb-4">
                                                    <div class="review-form-wrapper">
                                                        <h3 class="title tab-pane-title font-weight-bold mb-1">Submit Your
                                                        Review</h3>
                                                        <p class="mb-3">
                                                            Your email address will not be published. Required
                                                        fields are marked *
                                                        </p>
                                                        <form action="#" method="POST" class="review-form">
                                                            <div class="rating-form">
                                                                <label for="rating">Your Rating Of This Product :</label>
                                                                <span class="rating-stars">
                                                                    <a class="star-1" href="javascript:void(0)">1</a>
                                                                    <a class="star-2" href="javascript:void(0)">2</a>
                                                                    <a class="star-3" href="javascript:void(0)">3</a>
                                                                    <a class="star-4" href="javascript:void(0)">4</a>
                                                                    <a class="star-5" href="javascript:void(0)">5</a>
                                                                </span>
                                                                <select name="rating" id="rating" required=""
                                                                    style="display: none;">
                                                                    <option value="">Rate…</option>
                                                                    <option value="5">Perfect</option>
                                                                    <option value="4">Good</option>
                                                                    <option value="3">Average</option>
                                                                    <option value="2">Not that bad</option>
                                                                    <option value="1">Very poor</option>
                                                                </select>
                                                            </div>
                                                            <textarea cols="30" rows="6"
                                                                placeholder="Write Your Review Here..." class="form-control"
                                                                id="review"></textarea>
                                                            <div class="row gutter-md">
                                                                <div class="col-md-6">
                                                                    <input type="text" class="form-control"
                                                                        placeholder="Your Name" id="author">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <input type="text" class="form-control"
                                                                        placeholder="Your Email" id="email_1">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="checkbox" class="custom-checkbox"
                                                                    id="save-checkbox">
                                                                <label for="save-checkbox">
                                                                    Save my name, email, and website
                                                                in this browser for the next time I comment.</label>
                                                            </div>
                                                            <button type="submit" class="btn btn-dark">
                                                                Submit
                                                            Review</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab tab-nav-boxed tab-nav-outline tab-nav-center">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li class="nav-item">
                                                        <a href="#show-all" class="nav-link active">Show All</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#helpful-positive" class="nav-link">Most Helpful
                                                        Positive</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#helpful-negative" class="nav-link">Most Helpful
                                                        Negative</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#highest-rating" class="nav-link">Highest Rating</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#lowest-rating" class="nav-link">Lowest Rating</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="show-all">
                                                        <ul class="comments list-style-none">
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/1-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:54 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 60%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            pellentesque habitant morbi tristique senectus
                                                                        et. In dictum non consectetur a erat.
                                                                        Nunc ultrices eros in cursus turpis massa
                                                                        tincidunt ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-1.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-1-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/2-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:52 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 80%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            Nullam a magna porttitor, dictum risus nec,
                                                                        faucibus sapien.
                                                                        Ultrices eros in cursus turpis massa tincidunt
                                                                        ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-2.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-2.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-3.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-3.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/3-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:21 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 60%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            In fermentum et sollicitudin ac orci phasellus. A
                                                                        condimentum vitae
                                                                        sapien pellentesque habitant morbi tristique
                                                                        senectus et. In dictum
                                                                        non consectetur a erat. Nunc scelerisque viverra
                                                                        mauris in aliquam sem fringilla.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (0)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (1)
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="tab-pane" id="helpful-positive">
                                                        <ul class="comments list-style-none">
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/1-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:54 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 60%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            pellentesque habitant morbi tristique senectus
                                                                        et. In dictum non consectetur a erat.
                                                                        Nunc ultrices eros in cursus turpis massa
                                                                        tincidunt ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-1.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-1.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/2-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:52 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 80%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            Nullam a magna porttitor, dictum risus nec,
                                                                        faucibus sapien.
                                                                        Ultrices eros in cursus turpis massa tincidunt
                                                                        ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-2.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-2-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-3.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-3-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="tab-pane" id="helpful-negative">
                                                        <ul class="comments list-style-none">
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/3-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:21 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 60%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            In fermentum et sollicitudin ac orci phasellus. A
                                                                        condimentum vitae
                                                                        sapien pellentesque habitant morbi tristique
                                                                        senectus et. In dictum
                                                                        non consectetur a erat. Nunc scelerisque viverra
                                                                        mauris in aliquam sem fringilla.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (0)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (1)
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="tab-pane" id="highest-rating">
                                                        <ul class="comments list-style-none">
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/2-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:52 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 80%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            Nullam a magna porttitor, dictum risus nec,
                                                                        faucibus sapien.
                                                                        Ultrices eros in cursus turpis massa tincidunt
                                                                        ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-2.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-2-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-3.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-3-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="tab-pane" id="lowest-rating">
                                                        <ul class="comments list-style-none">
                                                            <li class="comment">
                                                                <div class="comment-body">
                                                                    <figure class="comment-avatar">
                                                                        <img src="assets/images/agents/1-100x100.png"
                                                                            alt="Commenter Avatar" width="90" height="90">
                                                                    </figure>
                                                                    <div class="comment-content">
                                                                        <h4 class="comment-author">
                                                                            <a href="javascript:void(0)">John Doe</a>
                                                                            <span class="comment-date">March 22, 2021 at
                                                                            1:54 pm</span>
                                                                        </h4>
                                                                        <div class="ratings-container comment-rating">
                                                                            <div class="ratings-full">
                                                                                <span class="ratings"
                                                                                    style="width: 60%;"></span>
                                                                                <span
                                                                                    class="tooltiptext tooltip-top"></span>
                                                                            </div>
                                                                        </div>
                                                                        <p>
                                                                            pellentesque habitant morbi tristique senectus
                                                                        et. In dictum non consectetur a erat.
                                                                        Nunc ultrices eros in cursus turpis massa
                                                                        tincidunt ante in nibh mauris cursus mattis.
                                                                        Cras ornare arcu dui vivamus arcu felis bibendum
                                                                        ut tristique.
                                                                        </p>
                                                                        <div class="comment-action">
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-secondary btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-up"></i>Helpful (1)
                                                                            </a>
                                                                            <a href="javascript:void(0)"
                                                                                class="btn btn-dark btn-link btn-underline sm btn-icon-left font-weight-normal text-capitalize">
                                                                                <i class="far fa-thumbs-down"></i>Unhelpful
                                                                            (0)
                                                                            </a>
                                                                            <div class="review-image">
                                                                                <a href="javascript:void(0)">
                                                                                    <figure>
                                                                                        <img src="assets/images/products/default/review-img-3.jpg"
                                                                                            width="60" height="60"
                                                                                            alt="Attachment image of John Doe's review on Electronics Black Wrist Watch"
                                                                                            data-zoom-image="assets/images/products/default/review-img-3-800x900.jpg" />
                                                                                    </figure>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <section class="vendor-product-section">
                            <div class="title-link-wrapper mb-4">
                                <h4 class="title text-left">Sản phẩm liên quan</h4>
                                <a href='ProductGrid.aspx' class="btn btn-dark btn-link btn-slide-right btn-icon-right">Xem sản phẩm<i class="w-icon-long-arrow-right"></i></a>
                            </div>
                            <div class="owl-carousel owl-theme row cols-lg-3 cols-md-4 cols-sm-3 cols-2"
                                data-owl-options="{
                                    'nav': false,
                                    'dots': false,
                                    'margin': 20,
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
                                            'items':4
                                        }
                                    }
                                }">
                                <asp:Repeater runat="server" ID="Repeater_ProductRelated">
                                    <ItemTemplate>
                                        <div class="product">
                                            <figure class="product-media">
                                                <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'>
                                                    <img runat="server" src='<%# Eval("Avatar") %>' alt="Product"
                                                        width="300" height="338" />
                                                </a>
                                                <div class="product-action-vertical">
                                                    <asp:LinkButton
                                                        runat="server"
                                                        class="btn-product-icon btn-cart w-icon-cart"
                                                        ID="Button_AddCart"
                                                        CommandArgument='<%# Eval("ID") %>'
                                                        ClientIDMode="AutoID"
                                                        OnClientClick="showCartModal(); return true;"
                                                        OnClick="Button_AddCart_Click">
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="product-action">
                                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="btn-product btn-quickview" title="Quick View">Xem chi tiết</a>
                                                </div>
                                            </figure>
                                            <div class="product-details">
                                                <h4 class="product-name"><a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>'><%# Eval("Title").Left(50,true,true) %></a>
                                                </h4>
                                                <div class="ratings-container">
                                                    <div class="ratings-full">
                                                        <span class="ratings" style="width: 100%;"></span>
                                                    </div>
                                                    <a runat="server" href='<%# Eval("ID","~/ProductDetail.aspx?id={0}") %>' class="rating-reviews">(3 reviews)</a>
                                                </div>
                                                <div class="product-pa-wrapper">
                                                    <div class="product-price"><%# Eval("Price").ToString("0,00 VNĐ") %></div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </section>
                    </div>
                    <!-- End of Main Content -->
                    <aside class="sidebar product-sidebar sidebar-fixed right-sidebar sticky-sidebar-wrapper">
                        <div class="sidebar-overlay"></div>
                        <a class="sidebar-close" href="javascript:void(0)"><i class="close-icon"></i></a>
                        <a href="javascript:void(0)" class="sidebar-toggle d-flex d-lg-none"><i class="fas fa-chevron-left"></i></a>
                        <div class="sidebar-content scrollable">
                            <div class="sticky-sidebar">
                                <div class="widget widget-icon-box mb-6">
                                    <div class="icon-box icon-box-side">
                                        <span class="icon-box-icon text-dark">
                                            <i class="w-icon-truck"></i>
                                        </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Miễn phí vận chuyển</h4>
                                            <p>Cho đơn hàng trên 500.000 đ</p>
                                        </div>
                                    </div>
                                    <div class="icon-box icon-box-side">
                                        <span class="icon-box-icon text-dark">
                                            <i class="w-icon-bag"></i>
                                        </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Thanh toán an toàn</h4>
                                            <p>Thanh toán được bảo mật tuyệt đối</p>
                                        </div>
                                    </div>
                                    <div class="icon-box icon-box-side">
                                        <span class="icon-box-icon text-dark">
                                            <i class="w-icon-money"></i>
                                        </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Chính sách hoàn tiền</h4>
                                            <p>Hoàn tiền trong vòng 30 ngày</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                    <!-- End of Sidebar -->
                </div>
            </div>
        </div>
    </main>
    <script>
        function showCartModal() {
            document.getElementById("cartModal").style.display = "block";
        }

        function closeCartModal() {
            document.getElementById("cartModal").style.display = "none";
        }
    </script>
</asp:Content>

