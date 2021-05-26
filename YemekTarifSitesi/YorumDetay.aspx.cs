using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("SELECT ADSOYAD,MAİL,ICERIK,AD FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON " +
                "Tbl_Yorumlar.YemekID=Tbl_Yemekler.ID where Tbl_Yorumlar.ID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextAdsoyad.Text = dr[0].ToString();
                    TextMail.Text = dr[1].ToString();
                    TextIcerik.Text = dr[2].ToString();
                    TextYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
            
        }

        protected void ButtonOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set ICERIK=@p1,ONAY=@p2 where ID=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextIcerik.Text);
            komut.Parameters.AddWithValue("@p2","True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            Response.Write("Yorum Onaylandı");
            bgl.baglanti().Close();
        }
    }
}