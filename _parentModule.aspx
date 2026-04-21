<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="_parentModule.aspx.cs" Inherits="educationalProject._parentModule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <!-- Start contact Area -->  
    <div id="about" class="about-area area-padding">
   <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="section-headline text-center">
            <h2>Notifications for Parents (EMAIL MODULE)</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- single-well start-->
       
        <!-- single-well end-->
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="well-middle">
            <div class="single-well">
                 <div class="form-group">
                  <p>Enter Title</p>
                  <asp:TextBox ID="txtTitle" runat="server" Width="800px" Height="30px"></asp:TextBox>
                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtTitle" ErrorMessage="Enter Title" 
                        ValidationGroup="a" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                  <p>Enter Description</p>
                  <asp:TextBox ID="txtDesc" runat="server" Width="800px" Height="160px" 
                         TextMode="MultiLine"></asp:TextBox>
                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtDesc" ErrorMessage="Enter Desc" 
                        ValidationGroup="a" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                  <p>Enter EmailId</p>
                  <asp:TextBox ID="txtEmailId" runat="server" Width="400px" Height="30px"></asp:TextBox>
                <br />
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="Enter Email Id" 
                        ValidationGroup="a" CssClass="error"></asp:RequiredFieldValidator>
                </div>
     <div>           
    <asp:Button ID="btnSubmit" runat="server" Text="Send Notifications" 
             ValidationGroup="a" onclick="btnSubmit_Click" Height="50px" Width="200px" 
              />
               </div>
            </div>
          </div>
        </div>
        <!-- End col-->
      </div>
    </div>
    </div>
  <!-- End Contact Area -->


    </asp:Panel>




</asp:Content>
