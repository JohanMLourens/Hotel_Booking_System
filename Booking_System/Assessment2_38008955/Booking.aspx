<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Assessment2_38008955.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('sunset+on+pool+deck+2.jpg')">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 258px;
        }
        .auto-style2 {
            width: 100%;
            height: 542px;
        }
        .auto-style8 {
            width: 158px;
        }
        .auto-style9 {
            width: 224px;
            height: 37px;
        }
        .auto-style10 {
            width: 158px;
            height: 37px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style13 {
            width: 100%;
            height: 236px;
        }
        .auto-style16 {
            height: 49px;
        }
        .auto-style17 {
            height: 49px;
            width: 270px;
        }
        .auto-style18 {
            width: 270px;
        }
        .auto-style19 {
            width: 100%;
            height: 163px;
        }
        .auto-style20 {
            width: 140px;
        }
        .auto-style21 {
            height: 49px;
            width: 213px;
        }
        .auto-style23 {
            width: 617px;
        }
        .auto-style24 {
            width: 501px;
        }
        .auto-style25 {
            width: 213px;
        }
        .auto-style26 {
            width: 224px;
        }
    </style>
</head>
<body style="height: 870px; margin-bottom: 172px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style24" style="background-color: #66CCFF">&nbsp;</td>
                    <td class="auto-style23" style="background-color: #66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblBookingTitle" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="XX-Large" Text="Book a Hotel Room"></asp:Label>
                    </td>
                    <td style="background-color: #66CCFF">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style9"></td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label1" runat="server" Text="Choose room type"></asp:Label>
                                </td>
                                <td class="auto-style11"></td>
                            </tr>
                            <tr>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:RadioButtonList ID="rbtnRooms" runat="server">
                                        <asp:ListItem Value="1">Room for 1</asp:ListItem>
                                        <asp:ListItem Value="2">Room for 2</asp:ListItem>
                                        <asp:ListItem Value="3">Room for 3</asp:ListItem>
                                        <asp:ListItem Value="4">Room for 4</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:Label ID="lblRoomPrice" runat="server" Text="R150 per person per night"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">
                        <table class="auto-style13">
                            <tr>
                                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblArrivalDate" runat="server" Text="Select arrival date"></asp:Label>
                                </td>
                                <td class="auto-style17">&nbsp;</td>
                                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblLeavingDate" runat="server" Text="Select leaving date"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">
                                    <asp:Calendar ID="calArrival" runat="server" CssClass="auto-style12"></asp:Calendar>
                                </td>
                                <td class="auto-style18">
                                    &nbsp;</td>
                                <td>
                                    <asp:Calendar ID="calDeparture" runat="server"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style18">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style19">
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style18">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblDisplayPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBook" runat="server" Text="Make Booking" OnClick="btnBook_Click" />
                                </td>
                                <td>
                                    <asp:Label ID="lblBookingError" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
