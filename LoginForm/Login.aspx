<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 130px;
            height: 32px;
        }
        .auto-style5 {
            width: 294px;
            height: 32px;
        }
        .auto-style6 {
            width: 130px;
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
            width: 294px;
        }
        .auto-style8 {
            width: 130px;
            height: 20px;
        }
        .auto-style9 {
            width: 294px;
            height: 20px;
        }
        table{
            margin:auto;
            width:300px;
            border:5px black ridge
        }
        .auto-style10 {
            height: 32px;
            color:red;
            font-family:Algerian;
            font-weight:100;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style10" colspan="2" >Login Form</td>
                </tr>
                <tr>
                    <td class="auto-style2">USER-ID</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="idTextBox" runat="server" Height="31px" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idTextBox" Display="Dynamic" ErrorMessage="User Name Required" ForeColor="Red" OnDataBinding="Page_Load"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">PASSWORD</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="passTextBox2" runat="server" Height="33px" Width="213px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passTextBox2" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="LoginButton1" runat="server" Height="37px" Text="Login" Width="80px" OnClick="LoginButton1_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
