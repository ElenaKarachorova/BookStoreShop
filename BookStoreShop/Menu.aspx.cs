using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreShop
{
    public partial class Menu : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Category = Request.QueryString["Category"];
            String Criterion = Request.QueryString["Criterion"];
            if (Category != null)
            {
                String SString;
                SString = "SELECT BookID,BookType, BookTitle,BookAuthor,BookPrice FROM Books WHERE BookType = '" + Category + "' ORDER BY BookId";
                SqlDataSource1.SelectCommand = SString;
            }
            else if (Criterion != null)
            {
                String SString;
                SString = "SELECT BookID, BookType, BookTitle, BookAuthor, BookPrice " +
                "FROM Books" +
               " WHERE (BookID LIKE '%" + Criterion + "%' ) OR" +
                " (BookType LIKE '%" + Criterion + "%') OR" +
                " (BookTitle LIKE '%" + Criterion + "%') OR" +
                " (BookAuthor LIKE '%" + Criterion + "%') OR" +
                " (BookPrice LIKE '%" + Criterion + "%')" +
                " ORDER BY BookID";
                SqlDataSource1.SelectCommand = SString;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //    Response.Redirect("Menu.aspx");
            LinkButton btn = (LinkButton)sender;
            Response.Redirect("Menu.aspx?Category=" + btn.Text);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("details.aspx?BookID=" + GridView2.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (BtnSearch.Text != "")
            {
                Response.Redirect("Menu.aspx?Criterion=" + TextBox1.Text);
            }
        }

        protected void BtnSearch_Load(object sender, EventArgs e)
        {
            
        }
    }
    }
