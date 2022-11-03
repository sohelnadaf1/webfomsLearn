<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidaitonForm.aspx.cs" Inherits="validationControls.ValidaitonForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 170px;
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
           
            <h2 style="text-align:center">validation form</h2>
            <p style="text-align:center">&nbsp;</p>
            <p style="text-align:center">&nbsp;</p>
        </div>
         <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#003300" Font-Size="Larger" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student name</td>
                    <td>
                        <asp:TextBox ID="sname" runat="server" Width="233px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sname" ErrorMessage="pls enter name " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Studet Email</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" Width="229px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="please enter email" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Re-Enter email</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="remail" runat="server" Width="227px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="remail" Display="Dynamic" ErrorMessage="please re-enter email" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="email" ControlToValidate="remail" Display="Dynamic" ErrorMessage="Email is not same" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="male" />
&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        <div>

    <asp:Table ID="Table1" runat="server">

    </asp:Table>
        </div>
        
    </form>
</body>
</html>
