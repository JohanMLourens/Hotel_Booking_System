<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Delete.aspx.cs" Inherits="Assessment2_38008955.Edit_Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #9FE0FF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 354px;
        }
        .auto-style3 {
            width: 532px;
        }
        .auto-style4 {
            width: 560px;
        }
        .auto-style5 {
            width: 532px;
            height: 53px;
        }
        .auto-style6 {
            width: 560px;
            height: 53px;
        }
        .auto-style7 {
            height: 53px;
        }
        .auto-style8 {
            width: 100%;
            height: 207px;
        }
        .auto-style9 {
            width: 532px;
            height: 112px;
        }
        .auto-style10 {
            width: 560px;
            height: 112px;
        }
        .auto-style11 {
            height: 112px;
        }
        .auto-style12 {
            width: 100%;
            height: 183px;
        }
        .auto-style13 {
            width: 185px;
        }
        .auto-style15 {
            width: 189px;
        }
        .auto-style17 {
            width: 100%;
            height: 158px;
        }
        .auto-style20 {
            width: 533px;
            height: 52px;
        }
        .auto-style22 {
            height: 52px;
        }
        .auto-style23 {
            width: 533px;
        }
        .auto-style24 {
            width: 149px;
        }
        .auto-style25 {
            width: 193px;
        }
        .auto-style26 {
            width: 195px;
        }
        .auto-style27 {
            width: 183px;
        }
    </style>
</head>
<body style="height: 638px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" style="background-color: #66CCFF"></td>
                    <td class="auto-style6" style="background-color: #66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblEditTitle" runat="server" Font-Overline="True" Font-Size="XX-Large" Text="Edit your information"></asp:Label>
                    </td>
                    <td class="auto-style7" style="background-color: #66CCFF"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblUName" runat="server" Text="Name: "></asp:Label>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="tbxUName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblUSurname" runat="server" Text="Surname: "></asp:Label>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="tbxUSurname" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblUEmail" runat="server" Text="Email: "></asp:Label>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="tbxUEmail" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:Label ID="lblLoadError" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblUPassword" runat="server" Text="Password: "></asp:Label>
                                </td>
                                <td class="auto-style15">
                                    <asp:TextBox ID="tbxUPassword" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Button ID="btnDisplayData" runat="server" OnClick="btnDisplayData_Click" Text="Display info" />
                                </td>
                                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" style="height: 26px" />
                                </td>
                                <td>
                                    <asp:Label ID="lblUpdated" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style15">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDelete" runat="server" Text="Do you want to delete your account?"></asp:Label>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style23">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblSure" runat="server" Text="Are you sure?"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnYes" runat="server" Text="Yes" OnClick="btnYes_Click" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnNo" runat="server" Text="No" OnClick="btnNo_Click" Visible="False" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
