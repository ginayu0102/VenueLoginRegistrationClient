using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    SelectServiceReference.SelectServiceClient vlsc = new SelectServiceReference.SelectServiceClient();

    VenueLoginServiceReference.VenueLoginServiceClient vlc = new VenueLoginServiceReference.VenueLoginServiceClient();

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["VenueKey"] != null)
        {
            if (!IsPostBack)
            {
                LoadDropDown();
                Panel1.Visible = false;
            }
        }
        else 
        {
            Response.Redirect("VenueLogin.aspx");
        }
    }

    
    protected void LoadDropDown()
    {
        string[] artists = vlsc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
        ArtistDropDownList.Items.Insert(0, "Select Artist");
        ArtistDropDownList.Items.Add("New Artist");

    }

    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ArtistDropDownList.SelectedItem.Text.Equals("New Artist"))
        {
            Panel1.Visible = true;
        }
    }

    protected void AddArtist()
    {
        VenueLoginServiceReference.ArtistLite al = new VenueLoginServiceReference.ArtistLite();

        al.ArtistName = ArtistNameTextBox.Text;
        al.ArtistEmail = ArtistEmailTextBox.Text;
        al.WebPage = ArtistWebsiteTextBox.Text;

        vlc.AddArtist(al); 
    
    }

    protected void SaveArtistButton_Click(object sender, EventArgs e)
    {

        AddArtist();
    }

    
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        VenueLoginServiceReference.ShowLite sl = new VenueLoginServiceReference.ShowLite();
        VenueLoginServiceReference.ShowDetailLite sdl = new VenueLoginServiceReference.ShowDetailLite();
       

        sl.VenueKey = (int)Session["VenueKey"];
        sl.ShowName = ShowNameTextBox.Text;
        sl.ShowDate = ShowDateTextBox.Text;
        sl.ShowTime = ShowTimeTextBox.Text;
        sl.ShowTicket = TicketInfoTextBox.Text;
        sdl.ArtistStartTime = ASTTextBox.Text;
        sdl.Note = AdditionalTextBox.Text;
        sdl.ShowName = ShowNameTextBox.Text;
        sdl.ArtistName = ArtistDropDownList.SelectedItem.ToString();
        
        if (ArtistNameTextBox.Text != "")
        {
            sdl.ArtistName = ArtistNameTextBox.Text;
        }


        
        vlc.AddShow(sl);
        vlc.AddShowDetail(sdl);
        


    }

   
}