﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404error.aspx.cs" Inherits="_404error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"> <a title="Go to Home Page" href="index.html">Home</a><span>&raquo;</span></li>
            <li><strong>404 Error </strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End -->

  <!--Container -->
  <div class="error-page">
    <div class="container">
      <div class="error_pagenotfound"> <strong>4<span id="animate-arrow">0</span>4 </strong> <br />
        <b>Oops... Page Not Found!</b> <em>Sorry the Page Could not be Found here.</em>
        <p>Try using the button below to go to main page of the site</p>
        <br />
        <a href="Default.aspx" class="button-back"><i class="fa fa-arrow-circle-left fa-lg"></i>&nbsp; Go to Back</a> </div>
      <!-- end error page notfound -->

    </div>
  </div>
  <!-- Container End -->
</asp:Content>

