<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucContactForm.ascx.cs" Inherits="ucContactForm" %>
<%@ Register Src="~/ucControls/Common/ucMessage.ascx" TagPrefix="uc2" TagName="ucMessage" %>



<asp:UpdatePanel runat="server">
    <ContentTemplate>
        <div class="form contact-us-form">
            <div class="form-group">
                <label for="username">Họ và tên (Bắt buộc)</label>
                <input type="text" runat="server" id="input_Name" name="username"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="email_1">Email (Bắt buộc)</label>
                <input type="text"  runat="server" id="input_Email"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="username">Số điện thoại (Bắt buộc)</label>
                <input type="text" runat="server" id="input_Phone"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="username">Danh mục liên hệ (Bắt buộc)</label>
                 <asp:DropDownList runat="server" class="form-control input-sm" ID="DropDownList_Categories" />
            </div>
            <div class="form-group">
                <label for="message">Nội dung</label>
                <textarea  runat="server" id="textarea_Message" name="message" cols="30" rows="5"
                    class="form-control"></textarea>
            </div>
            <p>
                <uc2:ucMessage runat="server" ID="ucMessage" />
            </p>
            <asp:LinkButton class="btn btn-dark btn-rounded"
                    runat="server"
                    ID="LinkButton_SendMessage"
                    OnClick="LinkButton_SendMessage_Click">
                        Gửi thư liên hệ
                </asp:LinkButton>
        </div>


    </ContentTemplate>
</asp:UpdatePanel>
