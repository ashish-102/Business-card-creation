<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="online_business_card.allcardaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container mt-2">
    

    <div id="myshow" class="carousel slide carousel-fade" data-ride="carousel">

         <div class="carousel-indicators  p-2">
            <button class="m-1" type="button" data-target="#myshow" data-slide-to="0" class="active" ></button>
            <button class="m-1" type="button" data-target="#myshow" data-slide-to="1" ></button>
            <button class="m-1" type="button" data-target="#myshow" data-slide-to="2" ></button>
        </div>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img width="900px" height="438px"  src="images/cardsimage1.jpg"  class="d-block w-100 rounded"/>
                <div class="carousel-caption">
                    <h4 style="color:black">CUSTOMIZE</h4>
                    <p style="color:black">Make your own customize business card.</p>
                </div>
            </div>

            <div class="carousel-item">
                <img width="900px" height="438px" src="images/cardsimage2.jpg" class="d-block w-100 rounded" />
                <div class="carousel-caption">
                    <h4 style="color:black" >SIMPLE</h4>
                    <p style="color:black">Interface is simple for use and creation.</p>
                </div>
            </div>

            <div class="carousel-item">
                <img width="500px" height="438px" src="images/cardsimages3.jpg" class="d-block w-100 rounded" />
                <div class="carousel-caption">
                    <h4 style="color:black">Easy</h4>
                    <p style="color:black">Easy to use for your need & easiness.</p>
                </div>
            </div>

            

        </div>

        <a href="#myshow" class="carousel-control-prev" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
            <span class="sr-only">Previous</span>
        </a>

        <a href="#myshow" class="carousel-control-next" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
            <span class="sr-only">next</span>
        </a>

    </div>
</div>
    <br />
    <hr />
    <center><h2>All Design Here</h2></center>
    <hr />
    <br />
    <br />
    <section>
        <a href="bc1.aspx">
            <img width="31%" src="images/bc1.png" class="rounded m-3 img-thumbnail border-dark" name="simple1" >
        </a>
        <a href="bc2.aspx">
            <img width="31%" src="images/bc2.png" class="rounded m-3 img-thumbnail border-dark"  name="simple2"/>
        </a>
        <a href="bc3.aspx">
            <img width="31%" src="images/bc3.png" class="rounded m-3 img-thumbnail border-dark"  name="simple3"/>
        </a>
    </section>
    <br />
    <br />
    <section>
        <img width="31%" src="images/bc4.png" class="rounded m-3 img-thumbnail border-dark" name="simple4"/>
        <img width="31%" src="images/bc5.png" class="rounded m-3 img-thumbnail border-dark" name="simple5"/>
        <img width="31%" src="images/bc6.png" class="rounded m-3 img-thumbnail border-dark" name="simple6" />
    </section>
    <br />
<br />
    <section>
        <img width="31%" src="images/bc7.png" class="rounded m-3 img-thumbnail border-dark" name="simple7"/>
        <img width="31%" src="images/bc8.png" class="rounded m-3 img-thumbnail border-dark" name="simple8"/>
        <img width="31%" src="images/bc9.png" class="rounded m-3 img-thumbnail border-dark" name="simple9" />
    </section>
    <br />
    <hr />
</asp:Content>
