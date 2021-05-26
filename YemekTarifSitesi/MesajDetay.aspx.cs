using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlbaglanti bgl = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajID"];
            SqlCommand komut = new SqlCommand("SELECT *FROM Tbl_Mesajlar where ID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextGonderen.Text = dr[4].ToString();
                TextBaslik.Text = dr[1].ToString();
                TextMail.Text = dr[2].ToString();
                TextIcerik.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}