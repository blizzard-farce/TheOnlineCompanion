using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this places the cursor in the enter username box
        UsernameBox.Focus();
    }

    protected void AccountCreate_Click(object sender, EventArgs e)
    {
        //hides the login boxes, unhides the account creation boxes, and places the cursor in the create username box
        loginPanel.Visible = false;
        registerPanel.Visible = true;
        registerView.Rows[0].Cells[1].Focus();
    }

    protected void BackToLogin_Click(object sender, EventArgs e)
    {
        //hides the account creation boxes, unhides the login boxes, and places the cursor in the enter username box
        loginPanel.Visible = true;
        registerPanel.Visible = false;
        UsernameBox.Focus();
    }

    protected void LogIn_Click(object sender, EventArgs e)
    {
        /*
        *when the login button is clicked, the page generates a hidden details view
        *the details view uses the username entered by the user to select the information
        *the Login() method then checks to see if the username/password match the account
        *in the database
        */
        LoginTest();
    }

    public void LoginTest()
    {
        try
        {
            //these take the user entered text and read them into strings
            string userName = UsernameBox.Text;
            string password = PasswordBox.Text;

            //if the username field is left empty, this prompts to enter a username
            if (string.IsNullOrEmpty(userName))
            {
                throw new EmptyUsername();
            }

            //these take the username and password pulled from the database and read them into strings
            string testUsername = DetailsView1.Rows[1].Cells[1].Text.ToString();
            string testPassword = DetailsView1.Rows[3].Cells[1].Text.ToString();
            

            //this test checks to see if the entered username and password are correct
            if (userName == testUsername && password == testPassword)
            {
                //if yes, redirect to the character sheet
                Response.Redirect("/CharacterSheet/Home.aspx?user="+DetailsView1.Rows[0].Cells[1].Text);
            }
            else if (password != testPassword)
            {
                //if no, incorrect password
                Label6.Text = "Invalid Password Entered.";
            }
            else
            {
                //general error handling
                Label6.Text = "An error has occured, please try again.";
            }
        }
        catch (EmptyUsername)
        {
            //connected to test for blank username field
            Label6.Text = "Please enter a username.";
        }
        catch (ArgumentOutOfRangeException)
        {
            //Prompts user to create account, NEED TO CHANGE TEXT BEFORE DEPLOYMENT
            Label6.Text = "This username does not exist.";
        }
    }


    //storage for custom exceptions
    public class EmptyUsername : System.Exception
    {
        public EmptyUsername() { }
    }
}