<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="TurkıyePetrolleri.Kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaydol</title>

    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="wrapper">

        <div class="sol-taraf">

            <asp:Panel ID="pnlKayit" runat="server">

                <div class="kullanici-girisi">
                    <div class="ust">
                        Kayıt Ol

                    </div>

                    <div class="alt">
                      
                        <div class="Kullanici">
                        <span>Kullanıcı Adı</span>
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server" />
                        </div>

                        <div class="sifre">
                        <span>Şifre</span>
                        <asp:TextBox ID="txtSifre" CssClass="textbox"  runat="server" TextMode="Password"/>
                        </div>

                        <asp:Button ID="btnGiris" CssClass="btnGiris" Text="Kaydol" runat="server" OnClick="btnGiris_Click" />
                        <br />
                        <br />
                        <br />                     
                        
                        <a href="/" class="btnGiris">Ana Sayfa</a>
                        
                        <asp:Label ID="lblSonuc" Text="" runat="server" />
                    </div>
                    
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlDurum" runat="server" style="background-color:#fff; padding:10px;">
                <asp:Label ID="lblDurum" Text="" runat="server" />
                <br />
                <a href="/">Ana Sayfaya Git</a>

            </asp:Panel>
        
            </div>
            </div>
    </form>
</body>
</html>
