<%@ Page Title="User profile" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="online_business_card.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="95px" src="images/user.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                            <h3>
                                Your Profile 
                            </h3>
                            </center>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Full Name</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Contact</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact" TextMode="Phone" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col">
                                    <label>E-mail</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="E-mail" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                         <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                          <div class="row">
                            <div class="col">
                               <center>
                                <asp:Button ID="Button2" class="btn w-75 btn-danger" runat="server" Text="Delete Your Account" />
                                  </center>
                            </div>
                        </div>

                            </div
                            </div>
                        </div>
                    </div>
                </div>


        </div>
    </div>   

       <div class="col-md-7">
           <div class="card">
               <div class="card-body">

                   <div class="row">
                       <div class="col">
                           <center>
                           <img width="100px" src="images/received.png" />
                           </center>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col">
                           <center>
                            <h4>Your Orders</h4>
                           </center>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col">
                           <hr />
                       </div>
                   </div>

                   <div class="row">
                       <div class="col">
                           
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                       </div>
                   </div>

               </div>
           </div>
           <a href="home.aspx"><< Back to Home</a><br><br>
       </div>

   </div>
    <br />
</asp:Content>
