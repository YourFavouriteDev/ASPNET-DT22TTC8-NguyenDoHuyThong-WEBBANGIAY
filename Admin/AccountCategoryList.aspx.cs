using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Pages_AccountCategoryList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategoryList();

            // Lấy ID loại tài khoản được chọn qua QueryString
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                LoadCategoryDetail(id);
            }
        }
    }

    protected void LoadCategoryList()
    {
        DBEntities db = new DBEntities();
        var list = db.AccountCategories.OrderBy(x => x.Position).ToList();

        DropDown_CategoryList.DataSource = list;
        DropDown_CategoryList.DataTextField = "Title";
        DropDown_CategoryList.DataValueField = "AccountCategoryID";
        DropDown_CategoryList.DataBind();

        DropDown_CategoryList.Items.Insert(0, new ListItem("Chọn loại tài khoản:", ""));
    }
    protected void DropDown_CategoryList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = DropDown_CategoryList.SelectedValue;
        if (!string.IsNullOrEmpty(id))
        {
            LoadCategoryDetail(id);
        }
        else
        {
            // Reset các input bên phải về rỗng hoặc mặc định
            input_ID.Value = "";
            input_Position.Value = "";
            input_Title.Value = "";
            textarea_Description.InnerText = "";
            /*img_Avatar.Src = "../css/img/no_image.jpg";*/

            // Nếu có radio button thì reset (tùy bạn đã bỏ chưa)
            // radio_On.Checked = false;
            // radio_Off.Checked = false;
        }
    }


    private void LoadCategoryDetail(string id)
    {
        DBEntities db = new DBEntities();
        var item = db.AccountCategories.FirstOrDefault(x => x.AccountCategoryID == id);
        if (item == null) return;

        input_ID.Value = item.AccountCategoryID;
        input_Position.Value = item.Position.HasValue ? item.Position.Value.ToString() : "";
        input_Title.Value = item.Title;
        textarea_Description.InnerText = item.Description;
        /*img_Avatar.Src = string.IsNullOrEmpty(item.Avatar) ? "../css/img/no_image.jpg" : item.Avatar;*/
/*
        if (item.Status == true)
        {
            radio_On.Checked = true;
        }
        else
        {
            radio_Off.Checked = true;
        }*/
    }
}