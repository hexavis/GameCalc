<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="game4.aspx.cs" MasterPageFile="~/MasterPages/Frontend.Master" Inherits="GameCalcu.game4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Splatoon Game 4</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <img src="Images/squid-boy2.png" id="bgG4" alt="">

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
                <asp:Button ID="submitB" runat="server" Text="Summary" OnClick="submitB_Click" />

            </div>
            <!-- end col-md-6 -->

             <div class="col-md-4">
                <div class="validation">
                    <!-- required fields-->
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="status" Display="Dynamic" SetFocusOnError="True" ErrorMessage="Please pick win/lose."></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="TextBoxPScore" Display="Dynamic" SetFocusOnError="True" ErrorMessage="Player Score Field Required."></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxOScore" Display="Dynamic" SetFocusOnError="True" ErrorMessage="Opponent Score Field Required."></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFScore" Display="Dynamic" SetFocusOnError="True" ErrorMessage="Points Allowed Field Required."></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSpec" Display="Dynamic" SetFocusOnError="True" ErrorMessage="Spectator Field Required."></asp:RequiredFieldValidator>
                    </div>

                    <!--Must be a number -->
                    <div>
                        <asp:CompareValidator ID="pScoreNum" runat="server" ControlToValidate="TextBoxPScore" Display="Dynamic" Type="Double" Operator="DataTypeCheck" ErrorMessage="Player Score must be an integer" />
                    </div>
                    <div>
                        <asp:CompareValidator ID="oScoreNum" runat="server" ControlToValidate="TextBoxOScore" Display="Dynamic" Type="Double" Operator="DataTypeCheck" ErrorMessage="Opponent Score must be an integer" />
                    </div>
                    <div>
                        <asp:CompareValidator ID="allowedNum" runat="server" ControlToValidate="TextBoxFScore" Display="Dynamic" Type="Integer" Operator="DataTypeCheck" ErrorMessage="Allowed points must be an integer" />
                    </div>
                    <div>
                        <asp:CompareValidator ID="specNum" runat="server" ControlToValidate="TextBoxFScore" Display="Dynamic" Type="Integer" Operator="DataTypeCheck" ErrorMessage="Spectator Field must be an integer" />
                    </div>


                    <!--No negatives allowed -->
                    <div>
                        <asp:RangeValidator ID="pScoreNoNeg" runat="server" ControlToValidate="TextBoxPScore" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Player Score must be a positive number." MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                    </div>
                    <div>
                        <asp:RangeValidator ID="oScoreNoNeg" runat="server" ControlToValidate="TextBoxOScore" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Opponent Score must be a positive number." MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                    </div>
                    <div>
                        <asp:RangeValidator ID="allowedPointsNoNeg" runat="server" ControlToValidate="TextBoxFScore" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Points allowed must be a positive number." MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                    </div>
                    <div>
                        <asp:RangeValidator ID="spectatorNoNeg" runat="server" ControlToValidate="TextBoxSpec" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Spectator field must be a positive number." MaximumValue="999999999" MinimumValue="0"></asp:RangeValidator>
                    </div>

                    <!-- pscore doesn't equal oscore. NO DRAWS ALLOWED-->
                    <div>
                        <asp:CompareValidator ID="compare" runat="server" ControlToValidate="TextBoxOScore" ControlToCompare="TextBoxPscore" Operator="NotEqual" Type="Double" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Player Score cannot equal Opponent Score. No draws Allowed!"></asp:CompareValidator>
                    </div>

                    <!-- pscore + oscore not > than points allowed-->
                    <div>
                        <asp:CustomValidator ID="NotOver" runat="server" ControlToValidate="TextBoxFScore" OnServerValidate="NotOver_ServerValidate" ValidateEmptyText="True" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Player Score plus Opponent Score cannot be greater than Points Allowed."></asp:CustomValidator>
                    </div>
                </div>
            </div><!-- end validation section-->

        </div>
    </div>

</asp:Content>
