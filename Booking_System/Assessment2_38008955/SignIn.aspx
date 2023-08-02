<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Assessment2_38008955.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #93DCFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 326px;
        }
        .auto-style2 {
            width: 100%;
            height: 316px;
        }
        .auto-style5 {
            height: 68px;
        }
        .auto-style8 {
            width: 100%;
            height: 130px;
        }
        .auto-style11 {
            height: 186px;
        }
        .auto-style12 {
            width: 175px;
        }
        .auto-style13 {
            width: 206px;
        }
        .auto-style14 {
            height: 68px;
            width: 494px;
        }
        .auto-style15 {
            width: 494px;
            height: 186px;
        }
        .auto-style17 {
            height: 68px;
            width: 540px;
        }
        .auto-style18 {
            width: 540px;
            height: 186px;
        }
        .auto-style19 {
            width: 540px;
        }
        .auto-style20 {
            width: 495px;
        }
        .auto-style21 {
            width: 544px;
        }
        .auto-style22 {
            width: 495px;
            height: 60px;
        }
        .auto-style23 {
            width: 544px;
            height: 60px;
        }
        .auto-style24 {
            height: 60px;
        }
        .auto-style25 {
            width: 100%;
            height: 183px;
        }
        .auto-style26 {
            width: 495px;
            height: 172px;
        }
        .auto-style27 {
            width: 544px;
            height: 172px;
        }
        .auto-style28 {
            height: 172px;
        }
        .auto-style29 {
            width: 171px;
        }
        .auto-style30 {
            width: 100%;
            height: 129px;
        }
        .auto-style31 {
            width: 168px;
        }
        .auto-style32 {
            width: 214px;
        }
        .auto-style33 {
            width: 210px;
        }
        .auto-style34 {
            width: 494px;
        }
    </style>
</head>
<body style="height: 707px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14" style="background-color: #66CCFF"></td>
                    <td class="auto-style17" style="background-color: #66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblTitleSignIn" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="False" Text="Sign In"></asp:Label>
                    </td>
                    <td class="auto-style5" style="background-color: #66CCFF"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style18">
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="tbxPassword" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblError" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnEditAcc" runat="server" Text="Edit Account" OnClick="btnEditAcc_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblQuestSignup" runat="server" Text="Don't have a account? No problem, you can sign up just below."></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSignUp" runat="server" Font-Overline="True" Font-Size="XX-Large" Text="Sign Up"></asp:Label>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                        <table class="auto-style25">
                            <tr>
                                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="tbxSetName" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSurname" runat="server" Text="Surname: "></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="tbxSetSurname" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="Email: "></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="tbxSetEmail" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style21">
                        <table class="auto-style30">
                            <tr>
                                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSetPass" runat="server" Text="Password: "></asp:Label>
                                </td>
                                <td class="auto-style32">
                                    <asp:TextBox ID="tbxSetPassword" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnSignUP" runat="server" Text="Sign Up" OnClick="btnSignUP_Click" />
                                </td>
                                <td>
                                    <asp:Label ID="lblSignupError" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
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
