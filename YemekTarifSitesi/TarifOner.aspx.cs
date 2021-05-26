using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Tarifler (AD,MALZEME,YAPILIS,RESİM,SAHİP,SAHİPMAİL) values (@p1,@p2,@p3,@p4,@p5,@p6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextTarifAd.Text);
            komut.Parameters.AddWithValue("@p2", TextMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TextTarif.Text);
            komut.Parameters.AddWithValue("@p4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", TextTarifOneren.Text);
            komut.Parameters.AddWithValue("@p6", TextMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}