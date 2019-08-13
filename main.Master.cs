using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurkıyePetrolleri
{
    public partial class main1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["kullaniciadi"];
            if(kullanici!=null)
            {
                pnlGiris.Visible = false;
                pnlKullanici.Visible = true;
                lblKullaniciAdi.Text = kullanici.ToString();
            }
            else
            {
                pnlKullanici.Visible = false;
                pnlGiris.Visible = true;
            }

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Ders"].ConnectionString);
            string sorgu = "Select * from Kullanicilar Where KullaniciAdi=@kullaniciadi AND Sifre=@sifre";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["KullaniciAdi"].ToString());
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                lblSonuc.Text = "Kullanıcı girişi sağlanamadı";
            }

            cnn.Close();
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}