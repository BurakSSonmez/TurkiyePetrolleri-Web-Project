using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurkıyePetrolleri
{
    public partial class oneriGonder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Ders"].ConnectionString);

            string sorgu = "Insert into OneriGonder (Konu,AdSoyad,EMail,Mesaj) Values (@konu,@adsoyad,@email,@mesaj)";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            try
            {
                cmd.Parameters.AddWithValue("@konu", TextBoxSubject.Text);
                cmd.Parameters.AddWithValue("@adsoyad", TextBoxNameSurName.Text);
                cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                cmd.Parameters.AddWithValue("@mesaj", TextBoxMessage.Text);

                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception)
            {

            }
        }
    }
}
    

