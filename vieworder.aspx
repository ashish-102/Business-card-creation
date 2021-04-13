<%@ Page Title="view" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vieworder.aspx.cs" Inherits="online_business_card.vieworder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">                             
                                <img width="70rem" src="images/packing-list.png" />
                                <span style="font-size:2em; padding-top:1.5em"  >All Customer Orders</span>
                            </div>
                         </div>
                           
                        <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-3">
                               <label>Order Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-5">
                                <label>Order Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-4 pt-4">
                                 <center>
                                <asp:Button ID="Button2" class="btn w-75 btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                                  </center>                                    
                              </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               <center>
                                   <h5>
                                       Order list
                                   </h5>
                               </center>
                            </div>
                        </div>
                      
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_business_cardDBConnectionString %>" SelectCommand="SELECT * FROM [Allorder_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <center><a href="home.aspx"><< Back to Home</a><br><br></center>
    </div>
</asp:Content>
