﻿using CodeUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucControls_Default_ucProductCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }

    }

    public void LoadData()
    {
        DBEntities db = new DBEntities();
        var query = from m in db.ProductMainCategories
                    where m.Status == true
                    orderby m.Position ascending
                    select new
                    {
                        ID = m.ProductMainCategoryID,
                        m.Title,
                        Product = (

                            from p in db.Products
                            from c in db.ProductCategories
                            where p.Status == true
                            && p.ProductCategoryID == c.ProductCategoryID
                            && c.ProductMainCategoryID == m.ProductMainCategoryID
                            orderby Guid.NewGuid()
                            select new
                            {
                                ID = p.ProductID,
                                p.Title,
                                p.Price,
                                p.OldPrice,
                                p.Avatar,
                            }

                        ).Take(10)
                    };
        Repeater_Category.DataSource = query.ToList();
        Repeater_Category.DataBind();
    }

    protected void Button_AddCart_Click(object sender, EventArgs e)
    {
        //Khai báo button hiện tại đã được nhấn
        LinkButton Button_AddCart = sender as LinkButton;

        //Lấy ID đang lưu trữ trong thuộc tính
        int id = Button_AddCart.CommandArgument.ToInt();

        //Vào Db lấy ra món hàng
        DBEntities db = new DBEntities();
        var item = db.Products.Where(q => q.ProductID == id).FirstOrDefault();

        if (item == null)
        {
            LoadData();
        }

        //Kiểm tra món hàng hiện tại đã có trong giỏ chưa
        CartItem cartItem;

        if (!SessionUtility.Cart.CartItems.ContainsKey(id))
        {

            cartItem = new CartItem();
            cartItem.Quantity = 1;

            //Gán thông tin khác
            cartItem.ID = id;
            cartItem.Title = item.Title;
            cartItem.Avatar = item.Avatar;
            cartItem.Description = item.Description;
            cartItem.Price = item.Price.ToInt();
            cartItem.OldPrice = item.OldPrice.ToInt();

            //Cho vào giỏ
            SessionUtility.Cart.CartItems.Add(id, cartItem);
        }
        //Nếu chưa có thì tạo mới;
        else
        {
            //Món hàng đã có sẵn
            cartItem = SessionUtility.Cart.CartItems[id];
            cartItem.Quantity += 1;

        }

    }
}