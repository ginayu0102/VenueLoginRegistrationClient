using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanFollowList : System.Web.UI.Page
{
    SelectServiceReference.SelectServiceClient vlsc = new SelectServiceReference.SelectServiceClient();
    VenueLoginServiceReference.VenueLoginServiceClient vlc = new VenueLoginServiceReference.VenueLoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["FanKey"] != null)
        {
            if (!IsPostBack)
            {
                PopulateArtists();
            }
        }
        else
        {
            Response.Redirect("FanLogin.aspx");
        }
    }

    protected void PopulateArtists()
    {

        string[] artists = vlsc.GetArtists();
        CheckBoxList1.DataSource = artists;
        CheckBoxList1.DataBind();
    }

    protected void AddArtistButton_Click(object sender, EventArgs e)
    {
        AddArtists();
    }
    protected void AddArtists()
    {
        
        int key = (int)Session["FanKey"];


        foreach (ListItem i in CheckBoxList1.Items)
        {

            if (i.Selected)
            {
                int x = vlc.AddFanArtist(key, i.Text);
            }
        }

        Label1.Text = "Artist have been added!!";
        CheckBoxList1.Items.Clear();
    }

}