<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="oneriGonder.aspx.cs" Inherits="TurkıyePetrolleri.oneriGonder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="icerik">
                

       
        <table class="ContactMainTable">
            <tr>
                <td colspan="3">
                    <asp:Label ID="LabelContactHeader" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelSubject" runat="server" Text="Konu : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSubject" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxSubject" ErrorMessage="Konu Boş Bırakılamaz" ValidationGroup="must" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="LabelNameSurName" runat="server" Text="Ad Soyad : "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxNameSurName" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNameSurName" ErrorMessage="Ad Soyad Boş Bırakılamaz" ValidationGroup="must" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelEmail" runat="server" Text="Email : "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="textbox" BorderStyle="Solid"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email Boş Bırakılamaz" ValidationGroup="must" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Geçerli Bir Email Giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="must" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelMessage" runat="server" Text="Mesaj : "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxMessage" runat="server" Height="56px" Width="182px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMessage" ErrorMessage="Mesaj Boş Bırakılamaz" ValidationGroup="must" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnGiris" CssClass="btnGiris" runat="server" Text="GÖNDER" ValidationGroup="must" OnClick="btnGiris_Click"/>
                    <asp:Label ID="LabelResult" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="must" ForeColor="Red" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
       
                

        </div>


</asp:Content>
