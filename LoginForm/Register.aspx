<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginForm.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 682px;
        }
        .auto-style2 {
            width: 189px;
        }
        .auto-style3 {
            width: 189px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">SignUp</td>
                </tr>
                <tr>
                    <td class="auto-style2">FIRST NAME</td>
                    <td>
                        <asp:TextBox ID="fnameTextBox1" runat="server" Width="196px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnameTextBox1" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">LAST NAME</td>
                    <td>
                        <asp:TextBox ID="lnameTextBox2" runat="server" Width="196px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnameTextBox2" ErrorMessage="Enter LastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">GENDER</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="205px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" InitialValue="Select" ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">USERNAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="unameTextBox3" runat="server" Width="196px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="unameTextBox3" ForeColor="Red">enter user name</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="passTextBox4" runat="server" Width="196px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passTextBox4" ErrorMessage="Enter Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="password length greater 6 " ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&amp;\*]).{6,}$" ControlToValidate="passTextBox4" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CONFORM PASSWORS</td>
                    <td>
                        <asp:TextBox ID="cpassTextBox5" runat="server" Width="196px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passTextBox4" ControlToValidate="cpassTextBox5" ErrorMessage="password not same " ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
