using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class ServiceUtility : System.Web.Services.WebService
{

    [WebMethod]
    public List<ProductSearchData> SearchProduct(string keyword)
    {
        DBEntities db = new DBEntities();
        var query = from p in db.Products
                    where p.Status == true
                    && p.Title.Contains(keyword)
                    orderby p.CreateTime descending
                    select new ProductSearchData
                    {
                        ID = p.ProductID,
                        Title = p.Title,
                        Thumb = p.Thumb

                    };
        return query.Take(10).ToList();
    }

    [WebMethod]
    public List<ArticleSearchData> SearchArticle(string keyword)
    {
        DBEntities db = new DBEntities();
        var query = from a in db.Articles
                    where a.Status == true
                    && a.Title.Contains(keyword)
                    orderby a.CreateTime descending
                    select new ArticleSearchData
                    {
                        ID = a.ArticleID,
                        Title = a.Title,
                        Thumb = a.Thumb
                    };
        return query.Take(10).ToList();
    }

    [WebMethod]
    public void GetAllPropertyCategoryProduct()
    {
        DBEntities db = new DBEntities();
        var query = from a in db.PropertyCategories
                    where a.Status == true
                    orderby a.Position ascending
                    select new
                    {
                        ID = a.PropertyCategoryID,
                        Title = a.Title
                    };
        Context.Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());
        Context.Response.Write(new JavaScriptSerializer().Serialize(query.ToList()));
    }

    [WebMethod]
    public void GetAllPropertyByMainID(int id)
    {
        DBEntities db = new DBEntities();

        var data = db.Properties
            .Where(x => x.Status == true && x.PropertyCategoryID == id)
            .OrderBy(x => x.Position)
               .Select(x => new
               {
                   ID = x.PropertyID,
                   Title = x.Title
               })
            .ToList();

        Context.Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());
        Context.Response.Write(new JavaScriptSerializer().Serialize(data));
    }
}
