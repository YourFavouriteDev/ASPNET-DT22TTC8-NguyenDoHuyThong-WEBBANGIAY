﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleMainCategoryList.aspx.cs" Inherits="Admin_ArticleMainCategoryList" %>

<%@ Register Src="~/Admin/UserControl/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="content">
        <div class="workplace">
            <div class="page-header">
                <h1>Article Main Category
                </h1>
            </div>

            <div class="row-fluid">
                <div class="span3">
                    <div class="head clearfix">
                        <div class="isw-folder">
                        </div>
                        <h1>Article Main Category
                        </h1>
                    </div>
                    <div class="block-fluid">
                        <div class="row-form clearfix">
                            <asp:ListBox runat="server"
                                ID="ListBox_Category"
                                OnSelectedIndexChanged="ListBox_Category_SelectedIndexChanged"
                                AutoPostBack="true"
                                class="category" Style="height: 478px;" />
                        </div>
                    </div>
                </div>
                <div class="span9">
                    <div class="head clearfix">
                        <div class="isw-list">
                        </div>
                        <h1>Selecting Article Main Category Info
                        </h1>
                        <ul class="buttons">
                            <li>
                                <asp:LinkButton runat="server" ID="LinkButton_Add" OnClick="LinkButton_Add_Click" class="isw-plus tip" title="Thêm mới" />
                            </li>
                            <li>
                                <asp:LinkButton runat="server" ID="LinkButton_Delete" OnClick="LinkButton_Delete_Click" OnClientClick="return confirm('Bạn có chắc chắn xóa không?')" title="Xóa chọn" class="isw-delete tip" />
                            </li>
                        </ul>
                    </div>
                    <div class="block-fluid  customize">
                        <!--Mã số + vị trí-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Article Main Cat ID:
                            </div>
                            <div class="span2">
                                <input runat="server" id="input_ID" type="text" class="tipb" readonly="readonly" title="Mã số tự động (không cần nhập)" />
                            </div>
                            <div class="span1">
                                Vị trí:
                            </div>
                            <div class="span1" style="margin-left: 2px;">
                                <input runat="server" id="input_Position" type="text" class="tipb" title="Dùng để sắp xếp thứ tự" />
                            </div>
                            <div class="span1">
                                Code:
                            </div>
                            <div class="span2">
                                <input runat="server" id="input_Code" type="text" class="tipb" title="Dùng để tìm kiếm hoặc phân loại" />
                            </div>
                            <div class="span3">
                                <span>(Vị trí và Code: được phép để trống)</span>
                            </div>
                        </div>
                        <!--Tiêu đề-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Title:
                            </div>
                            <div class="span10">
                                <input runat="server" id="input_Title" type="text" />
                                <span>VD: Tin bất động sản trong nước </span>
                            </div>
                        </div>
                        <!--Mô tả-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Description:
                            </div>
                            <div class="span10">
                                <textarea runat="server" id="textarea_Description" style="min-height: 50px; width: 100%;"></textarea>
                                <span>Mô tả thêm. Phần mô tả sẽ hiển thị khi rê chuột vào tiêu đề Loại </span>
                            </div>
                        </div>
                        <!--Hình đại diện-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Avatar:
                            </div>
                            <div class="span10">
                                <a runat="server" id="a_Avatar" href="../css/img/no_image.jpg" class="fancybox lightbox-preview" rel="group">
                                    <img runat="server" id="img_Avatar" src="css/img/no_image.jpg" alt="avatar" class="default-image img-polaroid avatar-preview" style="width: 180px; height: 135px;" />
                                </a>
                                <br />
                                <asp:FileUpload runat="server" ID="FileUpload_Avatar" class="skip" preview="avatar-preview" />
                                <br />
                                <span>Hình đại diện cho bài báo. Bạn có thể upload hình mới nếu muốn.
                                            Các Loại file hỗ trợ: *.jpg, *.jpeg, *.gif, *.png
                                </span>
                            </div>
                        </div>
                        <!--Trạng thái-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Status:
                            </div>
                            <div class="span10">
                                <label class="checkbox inline">
                                    <input runat="server" id="radio_Active" type="radio" checked />
                                    Cho phép hiển thị
                                </label>
                                <label class="checkbox inline">
                                    <input runat="server" id="radio_Lock" type="radio" />
                                    Tạm ẩn
                                </label>
                            </div>
                        </div>
                        <!--Lưu + thông báo-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                <asp:LinkButton Style="background: #1267b3" runat="server" class="btn mybtn" ID="LinkButton_Save" OnClick="LinkButton_Save_Click">
                                    <i class="isw-save"></i>Save
                                </asp:LinkButton>
                            </div>
                            <div class="span10">

                                <!--Thông báo-->
                                <uc1:ucMessage runat="server" ID="ucMessage" />

                            </div>
                        </div>
                    </div>
                </div>
                <div class="tar">
                    <a href="PictureList.aspx" type="button" class="btn active">
                        <i class="icon-arrow-left"></i>Back Article List
                    </a>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" Runat="Server">
</asp:Content>

