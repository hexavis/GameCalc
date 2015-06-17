<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/MasterPages/Frontend.Master" Inherits="week5.Default" %>


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
                <h1>Make a welcome Page</h1>

                <asp:Button ID="beginB" runat="server" Text="Begin" OnClick="beginB_Click" />
            </div>
        </div>
    </div>

</asp:Content>
