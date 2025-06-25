<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleDetail.aspx.cs" Inherits="ArticleDetail" %>

<%@ Register Src="~/ucControls/ucPopularPosts.ascx" TagPrefix="uc1" TagName="ucPopularPosts" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <main class="main">
        <nav class="breadcrumb-nav mb-6">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a runat="server" href="~/">Trang chủ</a></li>
                    <li>Chi tiết tin tức</li>
                </ul>
            </div>
        </nav>

        <div class="page-content">
            <div class="container">
                <div class="row gutter-lg mb-10">
                    <div class="main-content">
                         <asp:Repeater runat="server" ID="Repeater_ArticleDetail">
                                <ItemTemplate>
                                    <figure>
                                        <div class="post_header">
                                            <h3 class="post_title"><%# Eval("Title") %></h3>
                                            <div class="blog_meta">
                                                <p>Đăng bởi : <a href="#"><%# Eval("CreateBy") %></a> / Vào lúc : <a href="#"><%# Eval("CreateTime","{0,0:dd/MM/yyyy}") %></a> / In : <a href="#">Company, Image, Travel</a></p>
                                            </div>
                                        </div>
                                        <div class="blog_thumb text-center">
                                            <a href="#">
                                                <img runat="server" src='<%# Eval("Avatar") %>' alt=""></a>
                                        </div>
                                        <figcaption class="blog_content">
                                            <div class="post_content">
                                                <%# Eval("Description") %>
                                                <hr />
                                                <%# Eval("Content") %>
                                            </div>
                                            <div class="entry_content">
                                                <div class="post_meta">
                                                    <span>Tags: </span>
                                                    <span><a href="#">, fashion</a></span>
                                                    <span><a href="#">, t-shirt</a></span>
                                                    <span><a href="#">, white</a></span>
                                                </div>

                                                <div class="social_sharing">
                                                    <p>share this post:</p>
                                                    <ul>
                                                        <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                                        <li><a href="#" title="twitter"><i class="fa fa-twitter"></i></a></li>
                                                        <li><a href="#" title="pinterest"><i class="fa fa-pinterest"></i></a></li>
                                                        <li><a href="#" title="google+"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#" title="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
                    <aside class="sidebar right-sidebar blog-sidebar sidebar-fixed sticky-sidebar-wrapper">
                        <div class="sidebar-overlay">
                            <a href="#" class="sidebar-close">
                                <i class="close-icon"></i>
                            </a>
                        </div>
                        <a href="#" class="sidebar-toggle">
                            <i class="fas fa-chevron-left"></i>
                        </a>
                        <div class="sidebar-content">
                            <div class="sticky-sidebar">
                              
                                <!-- End of Widget search form -->
                                <div class="widget widget-categories">
                                    <h3 class="widget-title bb-no mb-0">Danh mục tin tức</h3>
                                    <ul class="widget-body filter-items search-ul">
                                       <asp:Repeater runat="server" ID="Repeater_Category">
                                    <ItemTemplate>
                                        <li>
                                            <a runat="server" href='<%# Eval("ID","~/ArticleList.aspx?mid={0}") %>'><%# Eval("Title") %>  <span>(<%# Eval("QuantityProduct") %>)</span></a>
                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                                    </ul>
                                </div>
                               
                                <div class="widget widget-tags">
                                    <h3 class="widget-title bb-no">Browse Tags</h3>
                                    <div class="widget-body tags">
                                        <asp:Repeater runat="server" ID="Repeater_Tag">
                                        <ItemTemplate>
                                            <a runat="server"  class="tag" href='<%# Eval("ID","~/ArticleList.aspx?mid={0}") %>'><%# Eval("Title") %> </a>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                    
                                    </div>
                                </div>
                                <div class="widget widget-calendar">
                                    <h3 class="widget-title bb-no">Calendar</h3>
                                    <div class="widget-body">
                                        <div class="calendar-container" data-calendar-options="{
                                                'dayExcerpt': 1
                                            }">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </main>

    <!--blog body area start-->
    
    <!--blog section area end-->

    <!-- Main Container -->

    <!-- Main Container End -->
</asp:Content>

