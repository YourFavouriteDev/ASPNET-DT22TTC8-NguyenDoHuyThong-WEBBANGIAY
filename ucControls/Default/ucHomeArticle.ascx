<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHomeArticle.ascx.cs" Inherits="ucHomeArticle" %>

<div class="post-wrapper appear-animate mb-4">
    <div class="title-link-wrapper pb-1 mb-4">
        <h2 class="title ls-normal mb-0">From Our Blog</h2>
        <a runat="server" href="~/ArticleDetail.aspx" class="font-weight-bold font-size-normal">Xem tất cả tin mới</a>
    </div>
    <div class="owl-carousel owl-theme row cols-lg-4 cols-md-3 cols-sm-2 cols-1" data-owl-options="{
            'items': 4,
            'nav': false,
            'dots': true,
            'loop': false,
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
                    'items': 4,
                    'dots': false
                }
            }
    }">
        <asp:Repeater runat="server" ID="Repeater_HomeArticle">
            <ItemTemplate>
                <div class="post text-center overlay-zoom">
                    <figure class="post-media post-media-cs br-sm">
                        <a runat="server" href='<%# Eval("ID","~/ArticleDetail.aspx?id={0}") %>'>
                            <img  runat="server" src='<%# Eval("Avatar") %>' alt="Post" width="280" height="180"
                                style="background-color: #4b6e91;" />
                        </a>
                    </figure>
                    <div class="post-details">
                        <div class="post-meta">
                            Đăng bởi <a href="javascript:void(0)" class="post-author"><%# Eval("CreateBy") %></a>
                            - <a href="javascript:void(0)" class="post-date mr-0"><%# Eval("CreateTime","{0:dd/MM/yyyy}") %> </a>
                        </div>
                        <h4 class="post-title">
                            <a runat="server" href='<%# Eval("ID","~/ArticleDetail.aspx?id={0}") %>'><%# Eval("Title") %></a>
                        </h4>
                        <a runat="server" href='<%# Eval("ID","~/ArticleDetail.aspx?id={0}") %>' class="btn btn-link btn-dark btn-underline">Đọc tiếp<i class="w-icon-long-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>


