<%@ Page Title="Simplecard1" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bc1.aspx.cs" Inherits="online_business_card.bc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container-fluid">
        <div class="row mx-auto">
            <div class="col-md-10 mx-auto">
                <div class="card img-thumbnail border-dark">
                    <div class="card-body">

                        <div class="row mx-auto">
                            <div class="col-md-4">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                                <div class="col-md-4">
                                 <label>Job Title</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Job Title"></asp:TextBox>
                                </div>
                                </div>
                                <br />
                                <div class="col-md-4">
                                 <label>Contact no.</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox3" runat="server" placeholder="Contact"></asp:TextBox>
                                </div>
                                    </div>
                                <br />
                                <div class="col-md-4">
                                 <label>E-mail</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox4" runat="server" placeholder="E-mail"></asp:TextBox>
                                </div>
                                    </div>
                                <br />
                                <div class="col-md-4">
                                 <label>Address Line 1</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox5" runat="server" placeholder="Address"></asp:TextBox>
                                </div>
                                    </div>
                                <br />
                                <div class="col-md-4">
                                <label>Address Line 2</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox6" runat="server" placeholder="Address"></asp:TextBox>
                                </div>
                                    </div>

                                <br />
                                <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox  Cssclass="form-control" ID="TextBox7" runat="server" placeholder="Pincode"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <center>
        <img width="60%" src="card/bebc1.png" class="img-thumbnail border-dark" />
    </center>
    <br />
    <br />
   
    <div class="row">
        <div class="col-md-6">
            <center>
            <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Preview" />
            </center>
        </div>
        <div class="col-md-6">
            <center>
            <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Buy Now" OnClick="Button2_Click1" />
                </center>
        </div>
    </div>
    <br />
</asp:Content>
