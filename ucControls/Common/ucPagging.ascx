<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPagging.ascx.cs" Inherits="ucPagging" %>
<%--<p class="showing-info mb-2 mb-sm-0">
    Hiển thị<span><span>1</span>-<span runat="server" id="span_totalPage">15</span> của <span runat="server" id="span_totalProduct">60</span></span>Sản phẩm
</p>--%>
<ul class="pagination  justify-content-center ">
    <li><a runat="server" id="PageFirst" href="#"><i class="fa fa-step-backward" aria-hidden="true"></i></a></li>
    <li class="prev"><a runat="server" id="PageBack" href="#"><i class="fa fa-angle-left"></i></a></li>

    <asp:Repeater runat="server" ID="PageRepeater">
        <ItemTemplate>
            <li class="page-item <%# (Eval("Key").ToInt()==(Request.QueryString["page"].ToInt()==0?1:Request.QueryString["page"].ToInt()))?"active":"" %>">
                <a runat="server" id="PageNumber" class="page-link" href='<%# Eval("Value") %>'><%# Eval("Key") %></a>
            </li>
        </ItemTemplate>
    </asp:Repeater>

    <li class="next"><a runat="server" id="PageNext" href="#"><i class="fa fa-angle-right"></i></a></li>
    <li><a runat="server" id="PageLast" href="#"><i class="fa fa-step-forward" aria-hidden="true"></i></a></li>
</ul>


