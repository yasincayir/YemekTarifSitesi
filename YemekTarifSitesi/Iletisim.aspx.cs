using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Mesajlar (BASLIK,MAİL,ICERIK,GONDEREN) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBaslik.Text);
            komut.Parameters.AddWithValue("@p2", TextMail.Text);
            komut.Parameters.AddWithValue("@p3", TextIcerik.Text);
            komut.Parameters.AddWithValue("@p4", TextGonderen.Text);
            komut.ExecuteNonQuery();
            Response.Write("Mesaj başarıyla gönderildi");
            bgl.baglanti().Close();
        }
    }
}