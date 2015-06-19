<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/MasterPages/Frontend.Master" Inherits="GameCalcu.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Splatoon Game Calculator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="row-fluid">
                <div class="col-md-8" id="topheader">
                </div>
            </div>

            <div class="col-md-6">
                <h1>Splatoon Game Calculator</h1>
                <p>This game calculator is based on the Wii U game called Splatoon. In the basic multiplayer game each team is tasked
                    with covering the map in paint. This means that the total amount of points possible is 100 for covering 100% of the arena's 
                    floor. The teams points are given at the end of the match as a number with one decimal point(ex. 45.6). Sometimes the
                    arena is not fully covered in paint thus the two scores won't always equal 100.
                </p>
                <p>
                    <img src="Images/results.jpg" />
                </p>
                <p>
                    These two teams did a terrible job of covering the arean. tsk tsk. Oh well. Have fun with the Calculator~! <3
                </p>
                
         
    </div>
            <div class="col-md-4">
                <div class="divider"></div>
                <asp:Button CssClass="button" ID="beginB" runat="server" Text="Begin" OnClick="beginB_Click"  />
            </div>
    </div>

</asp:Content>
