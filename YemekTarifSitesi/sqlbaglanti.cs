using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public class sqlbaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-PDAP0E3;Initial Catalog=YemekTarif;Integrated Security=True");
            baglan.Open();
            return baglan;
        }

    }
}