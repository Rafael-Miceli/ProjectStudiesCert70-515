using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Text;

namespace WebApplication
{
    /// <summary>
    /// Summary description for Authors
    /// </summary>
    [WebService(Namespace = "http://mydomain.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Authors
    {
        private string _cnString = ConfigurationManager.ConnectionStrings["Pubscn"].ToString();

        public Authors()
        {
        }

        [WebMethod(CacheDuration = 300)]
        public DataTable GetAuthorTitles(string authorId)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("SELECT titles.title, titles.type, titles.price, ");
            sql.Append("titles.pubdate FROM titleauthor INNER JOIN titles ON ");
            sql.Append("titleauthor.title_id = titles.title_id ");
            if (authorId != "0")
                sql.Append("WHERE (titleauthor.au_id = @AuthorId) ");
            SqlConnection cnn = new SqlConnection(_cnString);
            SqlCommand cmd = new SqlCommand(sql.ToString(), cnn);
            cmd.Parameters.Add("AuthorId", SqlDbType.VarChar, 11).Value = authorId;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds.Tables[0];
        }
    }
}
