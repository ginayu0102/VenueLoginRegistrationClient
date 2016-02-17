using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenueRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitVenue();
    }

    protected void SubmitVenue()
    {
        VenueLoginServiceReference.VenueLoginServiceClient vrs = new VenueLoginServiceReference.VenueLoginServiceClient();

        VenueLoginServiceReference.VenueLite vLite = new VenueLoginServiceReference.VenueLite();

        vLite.VenueName = VenueNameTextBox.Text;
        vLite.VenueAddress = AddressTextBox.Text;
        vLite.VenueCity = CityTextBox.Text;
        vLite.VenueState = StateTextBox.Text;
        vLite.VenueZipCode = ZipTextBox.Text;
        vLite.VenuePhone = PhoneTextBox.Text;
        vLite.Email = EmailTextBox.Text;
        vLite.VenueWebpage = WebpageTextBox.Text;
        vLite.UserName = UserNameTextBox.Text;
        vLite.Password = PasswordTextBox.Text;
        

        int result = vrs.VenueRegistration(vLite);
        if (result != -1)
        {
            ResultLabel.Text = "Registration Success!";
        }
        else
        {
            ResultLabel.Text = "Registration Failed";
        }

    }

}