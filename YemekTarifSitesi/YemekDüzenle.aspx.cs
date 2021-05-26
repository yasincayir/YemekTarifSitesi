using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler where ID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }


            if (Page.IsPostBack == false)
            {
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

            FileUpload1.SaveAs(MapPath("~/Image/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set AD=@p1,MALZEME=@p2,TARİF=@p3,KategoriID=@p4,RESİM=@p6 where ID=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/Image/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            Response.Write("Başarıyla Güncellendi");
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //DURUMLARI FALSE YAPMA
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set DURUM=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //GÜNÜN YEMEGİ DURUM TRUE YAPMA
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set DURUM=1 where ID=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            Response.Write("Günün Yemeği Seçildi");
            bgl.baglanti().Close();
        }
    }
}