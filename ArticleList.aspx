<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleList.aspx.cs" Inherits="Article" %>

<%@ Register Src="~/ucControls/Common/ucPagging.ascx" TagPrefix="uc1" TagName="ucPagging" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <main class="main">
        <nav class="breadcrumb-nav mb-6">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a runat="server" href="~/">Trang chủ</a></li>
                    <li>Danh sách tin tức</li>
                </ul>
            </div>
        </nav>


        <div class="page-content">
            <div class="container">
                <ul class="nav-filters filter-underline blog-filters mb-4">

                    <li><a href="#" class="nav-filter active" data-filter="*">Tất cả tin tức</a></li>
                    <asp:Repeater runat="server" ID="Repeater_Category">
                        <ItemTemplate>
                            <li>

                                <a class="nav-filter" runat="server" href='<%# Eval("ID","~/ArticleList.aspx?mid={0}") %>'><%# Eval("Title") %>  <span>(<%# Eval("QuantityProduct") %>)</span></a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

                <div class="row grid cols-lg-3 cols-md-2 mb-2" data-grid-options="{
                        'layoutMode': 'masonry'
                    }">

                    <asp:Repeater runat="server" ID="Repeater_ArticleList">
                        <ItemTemplate>
                            <div class="grid-item fashion">
                                <article class="post post-mask overlay-zoom br-sm">
                                    <figure class="post-media">
                                        <a runat="server" href='<%# Eval("ID","~/ArticleDetail.aspx?id={0}") %>'>
                                            <img  runat="server" src='<%# Eval("Avatar") %>' width="900"
                                                height="530" alt="blog">
                                        </a>
                                    </figure>
                                    <div class="post-details">
                                        <div class="post-details-visible">
                                            
                                            <h4 class="post-title text-white">
                                                <a  runat="server" href='<%# Eval("ID","~/ArticleDetail.aspx?id={0}") %>'><%# Eval("Title") %></a>
                                            </h4>
                                        </div>
                                        <div class="post-meta">
                                            Bởi <a href="#" class="post-author">John<%# Eval("CreateBy") %></a>
                                            - <a href="#" class="post-date"><%# Eval("CreateTime","{0:dd/MM/yyy}") %></a>
                                            <a href="#" class="post-comment">0 Comments</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                            
                        </ItemTemplate>
                    </asp:Repeater>


                    <div class="grid-space col-1"></div>
                </div>
                 <uc1:ucPagging runat="server" ID="ucPagging" />
            </div>
        </div>
    </main>

    

</asp:Content>

