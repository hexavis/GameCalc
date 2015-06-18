<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="game3.aspx.cs" MasterPageFile="~/MasterPages/Frontend.Master" Inherits="GameCalcu.game3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Splatoon Game 3</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <img src="Images/squid-girl2.png" id="bgG3" alt="">

    <div class="container">
        <div class="row">
            <div class="row-fluid">
                <div class="col-md-8" id="topheader">
                </div>
            </div>

            <div class="col-md-6">

                <!-- Did you win or lose? Radio Buttons -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label for="statusLabel">Did you win or lose: </label>
                    </div>
                    <div class="panel-body">
                        <asp:RadioButtonList ID="status" runat="server">
                            <asp:ListItem Text="Win" Value="win"></asp:ListItem>
                            <asp:ListItem Text="Lose" Value="lose"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <!-- The points the user got-->
                <div class="divider"></div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">
                        <label for="pScore">Your Score: </label>
                    </span>
                    <asp:TextBox CssClass="form-control" ID="TextBoxPScore" runat="server"></asp:TextBox>
                </div>

                <!-- The points the opponent got -->
                <div class="divider"></div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">
                        <label for="oScore">Opponents Score: </label>
                    </span>
                    <asp:TextBox CssClass="form-control" ID="TextBoxOScore" runat="server"></asp:TextBox>
                </div>

                <!-- All points allowed -->
                <div class="divider"></div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon3">
                        <label for="fullScore">Total Points Allowed: </label>
                    </span>
                    <asp:TextBox CssClass="form-control" ID="TextBoxFScore" runat="server"></asp:TextBox>
                </div>

                <!-- the amount of spectators -->
                <div class="divider"></div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon4">
                        <label for="spectators">Number of Spectators: </label>
                    </span>
                    <asp:TextBox CssClass="form-control" ID="TextBoxSpec" runat="server"></asp:TextBox>
                </div>

                <!-- the next and submit button -->
                <div class="divider"></div>
                <asp:Button ID="nextB" runat="server" Text="Next" OnClick="nextB_Click" />

            </div>
            <!-- end col-md-6 -->

        </div>
    </div>

</asp:Content>
