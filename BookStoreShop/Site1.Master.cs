using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreShop
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);

        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }
    }
}