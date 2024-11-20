using System;
using System.Web.UI;

namespace form_collections.forms
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure no duplicate form submissions on refresh
            if (IsPostBack) return;
        }

        protected void SubmitContact_Click(object sender, EventArgs e)
        {
            string fullName = FullName.Text.Trim();
            string email = Email.Text.Trim();

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email))
            {
                DisplayAlert("Please fill out both Name and Email.");
                return;
            }

            // Process Contact Form Data
            DisplayAlert("Contact form submitted successfully!");
        }

        protected void SubmitNewsletter_Click(object sender, EventArgs e)
        {
            string email = NewsletterEmail.Text.Trim();

            if (string.IsNullOrEmpty(email) || !email.Contains("@"))
            {
                DisplayAlert("Please provide a valid email address.");
                return;
            }

            // Process Newsletter Signup
            DisplayAlert("Thank you for signing up for our newsletter!");
        }

        protected void SubmitFeedback_Click(object sender, EventArgs e)
        {
            string name = FeedbackName.Text.Trim();
            string message = FeedbackMessage.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(message))
            {
                DisplayAlert("Please fill out both Name and Feedback.");
                return;
            }

            // Process Feedback
            DisplayAlert("Thank you for your feedback!");
        }

        protected void SubmitRegistration_Click(object sender, EventArgs e)
        {
            string fullName = RegFullName.Text.Trim();
            string email = RegEmail.Text.Trim();
            string password = RegPassword.Text.Trim();
            string country = RegCountry.SelectedValue;

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(country))
            {
                DisplayAlert("Please fill out all fields in the registration form.");
                return;
            }

            // Process Registration
            DisplayAlert($"Welcome, {fullName} from {country}! Your registration is complete.");
        }

        private void DisplayAlert(string message)
        {
            Response.Write($"<script>alert('{message}');</script>");
        }
    }
}
