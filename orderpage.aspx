<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orderpage.aspx.cs" Inherits="online_business_card.orderpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-9 mx-auto">
                
                     <div class="row">
                         <div class="col">
                             <center>
                              <h2>Place Your Order</h2>
                             </center>
                         </div>
                     </div>

                <div class="row">
                    <div class="col-md-4 mx-auto">
                              <label>Name</label>
                              <div class="form-group">
                              <asp:TextBox  Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                             </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4 mx-auto">
                              <label>Contact</label>
                              <div class="form-group">
                              <asp:TextBox  Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Phone no."></asp:TextBox>
                             </div>
                     </div>                  
               </div><br />
                

                <div class="row">
                    <div class="col-md-4 mx-auto">
                              <label>Date</label>
                              <div class="form-group">
                              <asp:TextBox  Cssclass="form-control" ID="TextBox3" runat="server" placeholder="Full Name" TextMode="Date"></asp:TextBox>
                             </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4 mx-auto">
                              <label>E-mail</label>
                              <div class="form-group">
                              <asp:TextBox  Cssclass="form-control" ID="TextBox4" runat="server" placeholder="E-mail"></asp:TextBox>
                             </div>
                     </div>                  
               </div><br />

        <div class="col-md-9  mx-auto" >
            <center>
            <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click"  />
           
            <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Order" OnClick="Button2_Click"  />
            </center>   
        </div>
      
            </div>
        </div>
    </div>

</asp:Content>
