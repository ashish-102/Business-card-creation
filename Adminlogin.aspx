<%@ Page Title="Adminlogin" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="online_business_card.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      <div class="row mb-5">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="105px"src="images/admin.png" />
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">

                        <label>Admin ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="admin id"></asp:TextBox>
                        </div>

                        <label>Password</label>
                        <div class="form-group mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                         
                        <div class="form-group mb-3">
                            <center>
                           <asp:Button class="w-75 btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                           </center>                            
                        </div>
                     </div>
                  </div>
               </div>
            </div>
             <br />
            <a href="home.aspx"><< Back to Home</a><br><br>
             <br />
             <br />
         </div>
      </div>
   </div>
</asp:Content>
