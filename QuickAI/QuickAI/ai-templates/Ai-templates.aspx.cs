using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI.ai_templates
{
    public partial class Ai_templates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
        }
        //other start
        protected void toneChanger(object sender, EventArgs e)
        {
            Response.Redirect("Tone Changer.aspx");
        }
        protected void songLyrics(object sender, EventArgs e)
        {
            Response.Redirect("songLyrics.aspx");
        }
        protected void translate(object sender, EventArgs e)
        {
            Response.Redirect("translate.aspx");
        }
        protected void faqMet(object sender, EventArgs e)
        {
            Response.Redirect("faq.aspx");
        }
        protected void faqAnswer(object sender, EventArgs e)
        {
            Response.Redirect("faqAnswer.aspx");
        }
        protected void testimonialReview(object sender, EventArgs e)
        {
            Response.Redirect("testimonial-reviews.aspx");
        }
        //other end
        //website start
        protected void smtBlog(object sender, EventArgs e)
        {
            Response.Redirect("Seo Meta Tags(Blog Post).aspx");
        }
        protected void smtHome(object sender, EventArgs e)
        {
            Response.Redirect("SEO Meta Tags (HomePage).aspx");            
        }
        protected void smtProduct(object sender, EventArgs e)
        {
            Response.Redirect("SEO Meta Tags (Product Page).aspx");
        }
        //website end
        //Social Media Post start
        protected void socialMediaPostPersonal(object sender, EventArgs e)
        {
            Response.Redirect("SocialMediaPost(Personal).aspx");
        }
        protected void socialMediaPostBusiness(object sender, EventArgs e)
        {
            Response.Redirect("SocialMediaPostBusiness.aspx");
        }
        protected void instagramCaptions(object sender, EventArgs e)
        {
            Response.Redirect("Instagram Captions.aspx");
        }
        protected void instagramHashtags(object sender, EventArgs e)
        {
            Response.Redirect("Instagram Hashtags.aspx");
        }
        protected void twitter(object sender, EventArgs e)
        {
            Response.Redirect("Twitter Tweets.aspx");
        }
        protected void youtubeTitles(object sender, EventArgs e)
        {
            Response.Redirect("YoutubeTitles.aspx");
        }
        protected void youtubeDesc(object sender, EventArgs e)
        {
            Response.Redirect("Youtube Desc.aspx");
        }
        protected void youtubeOutline(object sender, EventArgs e)
        {
            Response.Redirect("Youtube Online.aspx");
        }
        protected void linkedInPost(object sender, EventArgs e)
        {
            Response.Redirect("Linkedin Posts.aspx");
        }
        protected void TiktokVideoScript(object sender, EventArgs e)
        {
            Response.Redirect("Tiktok video.aspx");
        }
      
        //Social Media Post End
        //Ecommerce Starts
        protected void productNameGenerator(object sender, EventArgs e)
        {
            Response.Redirect("Product Name Generator.aspx");
        }
        protected void productDescription(object sender, EventArgs e)
        {
            Response.Redirect("Product Description.aspx");
        }
        protected void amazonProductTitles(object sender, EventArgs e)
        {
            Response.Redirect("AmazonProductTitle.aspx");
        }
        protected void amazonProductDesc(object sender, EventArgs e)
        {
            Response.Redirect("amazonProductDescriptions.aspx");
        }
        protected void amazonProductFeatures(object sender, EventArgs e)
        {
            Response.Redirect("Amazon Product Features.aspx");
        }

        //Ecommerce End
        //General Writing Starts
        protected void TextExtender(object sender, EventArgs e)
        {
            Response.Redirect("TextExtender.aspx");
        }
        protected void contentShorten(object sender, EventArgs e)
        {
            Response.Redirect("ContentShorten.aspx");
        }
        protected void quoraAnswer(object sender, EventArgs e)
        {
            Response.Redirect("QuoraAnswer.aspx");
        }
        protected void summarizeFor2nd(object sender, EventArgs e)
        {
            Response.Redirect("summarizeGrade.aspx");
        }
        protected void stories(object sender, EventArgs e)
        {
            Response.Redirect("stories.aspx");
        }
        protected void bulletPointAnswers(object sender, EventArgs e)
        {
            Response.Redirect("bulletPointAnswers.aspx");
        }
        protected void definition(object sender, EventArgs e)
        {
            Response.Redirect("definition.aspx");
        }
        protected void answers(object sender, EventArgs e)
        {
            Response.Redirect("Answers.aspx");
        }
        protected void questions(object sender, EventArgs e)
        {
            Response.Redirect("questions.aspx");
        }
        protected void passiveToActive(object sender, EventArgs e)
        {
            Response.Redirect("passiveToActiveVoice.aspx");
        }
        protected void prosAndCons(object sender, EventArgs e)
        {
            Response.Redirect("prosAndCons.aspx");
        }
        protected void rewriteWithKeywords(object sender, EventArgs e)
        {
            Response.Redirect("RewriteWithKeywords.aspx");
        }
        protected void emails(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }
        protected void emailsv2(object sender, EventArgs e)
        {
            Response.Redirect("emailsv2.aspx");
        }
        protected void emailsSubjectLine(object sender, EventArgs e)
        {
            Response.Redirect("EmailsSubjectLines.aspx");
        }
        protected void startupNameGenerator(object sender, EventArgs e)
        {
            Response.Redirect("startupNameGenerator.aspx");
        }
        protected void companyBios(object sender, EventArgs e)
        {
            Response.Redirect("companyBios.aspx");
        }
        protected void companyMission(object sender, EventArgs e)
        {
            Response.Redirect("Company Mission.aspx");
        }
        protected void companyVision(object sender, EventArgs e)
        {
            Response.Redirect("CompanyVision.aspx");
        }
        
        //General writing Ends
        //Facebook Adds starts
        protected void facebookAds(object sender, EventArgs e)
        {
            Response.Redirect("facebookAds.aspx");
        }
        protected void facebookAdsHeadLines(object sender, EventArgs e) {
            Response.Redirect("facebookAdsHeadline.aspx");
        }

        protected void GoogleAdTitle(object sender, EventArgs e)
        {
            Response.Redirect("GoogleAdsTitle.aspx");
        }
        protected void GoogleAdDesc(object sender, EventArgs e)
        {
            Response.Redirect("GoogleAdsDesc.aspx");
        }
        protected void LinkedAdDesc(object sender, EventArgs e)
        {
            Response.Redirect("LinkedAdsDesc.aspx");
        }
        protected void appsAndSms(object sender, EventArgs e)
        {
            Response.Redirect("AppsAndSms.aspx");
        }
        protected void LinkedInAdHeadLines(object sender, EventArgs e)
        {
            Response.Redirect("LinkedAdsHeadLine.aspx");
        }
        

        //Facebook adds End
        //All Blogs Code starts
        protected void blogIdeas(object sender, EventArgs e)
        {
            var paragraphElement = FindControl("conText") as System.Web.UI.HtmlControls.HtmlGenericControl;
            var headingElement = FindControl("conId") as System.Web.UI.HtmlControls.HtmlGenericControl;
            if (paragraphElement != null && headingElement != null)
            {
                string pText = paragraphElement.InnerText;
                // Use the paragraphText as needed            
                string pHead = headingElement.InnerText;
                // Use the headingText as needed
                Response.Redirect("blogIdea.aspx?pText=" + pText + "&pHead=" + pHead + "");
            }

        }
        protected void contentRephrase(object sender, EventArgs e) {
            Response.Redirect("contentRephrase.aspx");
        }
        protected void paragraphWriter(object sender, EventArgs e) {
            Response.Redirect("paragraphWriter.aspx");
        }
        protected void talkingPoint(object sender, EventArgs e) {
            Response.Redirect("talkingPoints.aspx");
        }
        protected void articleOutlines(object sender, EventArgs e) {

            Response.Redirect("articleOutline.aspx");
        }
        protected void articleRewriter(object sender, EventArgs e) {
            Response.Redirect("articleRewriter.aspx");
        }
        protected void articleWriter(object sender, EventArgs e) {
            Response.Redirect("articleWriter.aspx");
        }
        protected void blogConclusion(object sender, EventArgs e) {
            Response.Redirect("blogConclusion.aspx");
        }
        protected void blogSection(object sender, EventArgs e) {
            Response.Redirect("blogSection.aspx");
        }
        protected void blogTitle(object sender, EventArgs e) {
            Response.Redirect("blogsTitles.aspx");
        }
        protected void blogIntro(object sender, EventArgs e) {
            Response.Redirect("blogsIntro.aspx");
        }
        //blogs code end
        protected void logout(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}