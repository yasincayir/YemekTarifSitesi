using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Tarifler where ID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextTarifAd.Text = dr[1].ToString();
                    TextMalzemeler.Text = dr[2].ToString();
                    TextYapilis.Text = dr[3].ToString();
                    TextOneren.Text = dr[5].ToString();
                    TextMail.Text = dr[6].ToString();

                }
                bgl.baglanti().Close();

                //KATEGORİ LİSTESİ

                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "AD";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //DURUM GÜNCELLEME
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set DURUM=1 where ID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("INSERT INTO Tbl_Yemekler(AD,MALZEME,TARİF,KategoriID) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", TextMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TextYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            Response.Write("Tarif Başarıyla Onaylandı");
            bgl.baglanti().Close();

        }
    }
}