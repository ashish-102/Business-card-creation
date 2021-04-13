<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="online_business_card.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
    <div class="row">
        <div class="col col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="95px" src="images/sign-up.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                            <h3>
                                Sign UP
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-md-6">
                                    <label>Contact</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact" TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col col-md-6">
                                    <label>E-mail</label>
                                    <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <br />
                                    <span class="badge rounded-pill bg-primary m">Login  credential</span>
                                    </center>
                                    <label>User_id</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="user id"></asp:TextBox>
                                    </div>

                                    <label>Password</label>
                                    <div class="form-group mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="form-group ">
                                        <center>
                                            <asp:Button class="w-75 btn  btn-primary" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click"></asp:Button>
                                        </center>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
</div>
</asp:Content>
