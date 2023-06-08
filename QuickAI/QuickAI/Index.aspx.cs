using QuickAI.membership;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    public partial class Index : System.Web.UI.Page
    {
        changeplan cp = new changeplan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            //KKcode for hiding userIcon
            if (email == null) {
                activeSessionFunction.Visible = false;
                joinButtonFunct.Visible = true;
            }
            else
            {
                activeSessionFunction.Visible = true;
                joinButtonFunct.Visible = false;
            }
        }
        protected void freeRegClick(object sender, EventArgs e) {
            Response.Redirect("Register.aspx", true);
        }
        protected void joinbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", true);
        }

        //Membership Form in Index Page upgradeMembership
        protected void upgradeMembership(object sender, EventArgs e)
        {
            
        }
        protected void showBillAndSendDataToBankDepositForm(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/membership/changeplan.aspx?val="+1+"");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "hideChangeFunctionality();", true);
           
        }
        protected void logout(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("ai-templates/Index.aspx");
        }
       
        //other start
        protected void toneChanger(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Tone Changer.aspx");
        }
        protected void songLyrics(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/songLyrics.aspx");
        }
        protected void translate(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/translate.aspx");
        }
        protected void faqMet(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/faq.aspx");
        }
        protected void faqAnswer(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/faq-answers.aspx");
        }
        protected void testimonialReview(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/testimonial-reviews.aspx");
        }
        //other end
        //website start
        protected void smtBlog(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Seo Meta Tags(Blog Post).aspx");
        }
        protected void smtHome(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/SEO Meta Tags (HomePage).aspx");
        }
        protected void smtProduct(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/SEO Meta Tags (Product Page).aspx");
        }
        //website end
        //Social Media Post start
        protected void socialMediaPostPersonal(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/SocialMediaPost(Personal).aspx");
        }
        protected void socialMediaPostBusiness(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/SocialMediaPostBusiness.aspx");
        }
        protected void instagramCaptions(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Instagram Captions.aspx");
        }
        protected void instagramHashtags(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Instagram Hashtags.aspx");
        }
        protected void twitter(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Twitter Tweets.aspx");
        }
        protected void youtubeTitles(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/YoutubeTitles.aspx");
        }
        protected void youtubeDesc(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Youtube Desc.aspx");
        }
        protected void youtubeOutline(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Youtube Online.aspx");
        }
        protected void linkedInPost(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Linkedin Posts.aspx");
        }
        protected void TiktokVideoScript(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Tiktok video.aspx");
        }

        //Social Media Post End
        //Ecommerce Starts
        protected void productNameGenerator(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Product Name Generator.aspx");
        }
        protected void productDescription(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Product Description.aspx");
        }
        protected void amazonProductTitles(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/AmazonProductTitle.aspx");
        }
        protected void amazonProductDesc(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/amazonProductDescriptions.aspx");
        }
        protected void amazonProductFeatures(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Amazon Product Features.aspx");
        }

        //Ecommerce End
        //General Writing Starts
        protected void TextExtender(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/TextExtender.aspx");
        }
        protected void contentShorten(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/ContentShorten.aspx");
        }
        protected void quoraAnswer(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/QuoraAnswer.aspx");
        }
        protected void summarizeFor2nd(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/summarizeGrade.aspx");
        }
        protected void stories(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/stories.aspx");
        }
        protected void bulletPointAnswers(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/bulletPointAnswers.aspx");
        }
        protected void definition(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/definition.aspx");
        }
        protected void answers(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Answers.aspx");
        }
        protected void questions(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/question.aspx");
        }
        protected void passiveToActive(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/passiveToActiveVoice.aspx");
        }
        protected void prosAndCons(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/prosAndCons.aspx");
        }
        protected void rewriteWithKeywords(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/RewriteWithKeywords.aspx");
        }
        protected void emails(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Email.aspx");
        }
        protected void emailsv2(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/emailsv2.aspx");
        }
        protected void emailsSubjectLine(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/EmailSubjectLines.aspx");
        }
        protected void startupNameGenerator(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/startupNameGenerator.aspx");
        }
        protected void companyBios(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/companyBios.aspx");
        }
        protected void companyMission(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/Company Mission.aspx");
        }
        protected void companyVision(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/CompanyVision.aspx");
        }

        //General writing Ends
        //Facebook Adds starts
        protected void facebookAds(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/facebookAds.aspx");
        }
        protected void facebookAdsHeadLines(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/facebookAdsHeadline.aspx");
        }

        protected void GoogleAdTitle(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/GoogleAdsTitle.aspx");
        }
        protected void GoogleAdDesc(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/GoogleAdsDesc.aspx");
        }
        protected void LinkedAdDesc(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/LinkedAdsDesc.aspx");
        }
        protected void appsAndSms(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/AppsAndSms.aspx");
        }
        protected void LinkedInAdHeadLines(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/LinkedAdsHeadLine.aspx");
        }


        //Facebook adds End
        //All Blogs Code starts
        protected void blogIdeas(object sender, EventArgs e)
        {
            //var paragraphElement = FindControl("conText") as System.Web.UI.HtmlControls.HtmlGenericControl;
            //var headingElement = FindControl("conId") as System.Web.UI.HtmlControls.HtmlGenericControl;
            //if (paragraphElement != null && headingElement != null)
            //{
            //    string pText = paragraphElement.InnerText;
            //    // Use the paragraphText as needed            
            //    string pHead = headingElement.InnerText;
            //    // Use the headingText as needed
            //    Response.Redirect("ai-templates/blogIdea.aspx?pText=" + pText + "&pHead=" + pHead + "");
            //}
            Response.Redirect("ai-templates/blogIdea.aspx");

        }
        protected void contentRephrase(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/contentRephrase.aspx");
        }
        protected void paragraphWriter(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/paragraphWriter.aspx");
        }
        protected void talkingPoint(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/talkingPoints.aspx");
        }
        protected void articleOutlines(object sender, EventArgs e)
        {

            Response.Redirect("ai-templates/articleOutline.aspx");
        }
        protected void articleRewriter(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/articleRewriter.aspx");
        }
        protected void articleWriter(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/articleWriter.aspx");
        }
        protected void blogConclusion(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/blogConclusion.aspx");
        }
        protected void blogSection(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/blogSection.aspx");
        }
        protected void blogTitle(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/blogsTitles.aspx");
        }
        protected void blogIntro(object sender, EventArgs e)
        {
            Response.Redirect("ai-templates/blogsIntro.aspx");
        }
        //blogs code end
    }
}









//pmUserName.InnerText = (string)Session["Email"];
//userNameBankDeposit.InnerText = (string)Session["Email"];
////string s = ((HtmlGenericControl)FindControl("chPara")).InnerText;
//string s = chPara.Text.ToString();
//membershipPlan.InnerText = "Extended Plan";
//string title = "Extended Plan";
//string premium = "membership";
//string paymentMethod = "Wire Transaction";
//DateTime currentDate = DateTime.Now;
//string date = currentDate.ToString();
//string status = "";
////Database store only Current DateTime
////Page display Updated Value
//if (s == "5")
//{
//    DateTime futureDate = currentDate.AddMonths(1);
//    //This future display on text on there respective page
//    endDate.InnerText = futureDate.ToString();
//    planPurchase.InnerText = s.ToString();
//    priceDepositForm.InnerText = s.ToString();
//    TotalCost.InnerText = s.ToString();
//}
//else if (s == "50")
//{
//    DateTime futureDate = currentDate.AddYears(1);
//    //This future display on text on there respective page
//    endDate.InnerText = futureDate.ToString();
//    planPurchase.InnerText = s.ToString();
//    priceDepositForm.InnerText = s.ToString();
//    TotalCost.InnerText = s.ToString();
//}
//else
//{
//    endDate.InnerText = "LifeTime";
//    planPurchase.InnerText = s;
//    priceDepositForm.InnerText = s;
//    TotalCost.InnerText = s;
//    //LifeTime
//}
////db
//SqlConnection con = new SqlConnection(connectionString);
//query = "insert into trans_table values('" + title + "','" + s + "','" + premium + "','" + paymentMethod + "','" + date + "','" + status + "')";
//SqlCommand cmd = new SqlCommand(query, con);
//SqlDataAdapter adpt = new SqlDataAdapter(cmd);
//DataTable dt = new DataTable();
//adpt.Fill(dt);
//MessageBox.Show("Done");
//ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "showBill();", true);