$(document).ready(function () {
   
    //$(function () {
    //    $('.selectpicker').selectpicker();
    //});
    tinymce.init({

        plugins: 'code',
        theme: 'silver',
        selector: 'textarea#editor',
        min_height: 500,
        resize: true,
        plugins: 'advlist lists table autolink link wordcount fullscreen autoresize',
        /* plugins: 'advlist lists fullscreen autoresize',*/
        toolbar: [
            "blocks | bold italic underline strikethrough | alignleft aligncenter alignright  | link blockquote",
            "undo redo | removeformat | table | bullist numlist | outdent indent"
        ],
        menubar: "",
        // link
        relative_urls: false,
        link_assume_external_targets: true,
        content_style: 'body { font-size:14px }'
    });
    $('#btnToggle').on('click', function () { //button event       
        $("#sidebar").toggle();
        $("#content").toggleClass('col-lg-12 full-width');
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}
function blogIdea() {
    $("#ctl03_formMainHeader").text("Blog ideas");
    $("#ctl03_formHeader").text("Blog Ideas");
    $("#ctl03_formInnerDiv").text("Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.");
    $("#ctl03_pageLink").text("blogIdea.aspx");

}
//other start verified
function ToneChanger() {
    $("#ctl02_formMainHeader").text("Tone Changer");
    $("#ctl02_formHeader").text("Tone Changer");
    $("#ctl02_formInnerDiv").text("Change the tone of your writing to match your audience and copy.");
    $("#ctl02_pageLink").text("Tone Changer.aspx");
}
function songLyrics() {
    $("#ctl02_formMainHeader").text("Song Lyrics");
    $("#ctl02_formHeader").text("Song Lyrics");
    $("#ctl02_formInnerDiv").text("Unique song lyrics that will be perfect for your next hit song.");
    $("#ctl02_pageLink").text("songLyrics.aspx");
}
function translate() {
    $("#ctl02_formMainHeader").text("Translate");
    $("#ctl02_formHeader").text("Translate");
    $("#ctl02_formInnerDiv").text("Translate your content into any language you want.");
    $("#ctl02_pageLink").text("translate.aspx");
}
function faqID() {
    $("#ctl03_formMainHeader").text("FAQs");
    $("#ctl03_formHeader").text("FAQs");
    $("#ctl03_formInnerDiv").text("Generate frequently asked questions based on your product description.");
    $("#ctl03_pageLink").text("faq.aspx");
}
function faqAnswerMethod() {
    $("#ctl03_formMainHeader").text("FAQ Answers");
    $("#ctl03_formHeader").text("FAQ Answers");
    $("#ctl03_formInnerDiv").text("Generate creative answers to questions (FAQs) about your business or website.");
    $("#ctl03_pageLink").text("faqAnswer.aspx");
}
function testimonialReview() {
    $("#ctl03_formMainHeader").text("Testimonials / Reviews");
    $("#ctl03_formHeader").text("Testimonials / Reviews");
    $("#ctl03_formInnerDiv").text("Add social proof to your website by generating user testimonials.");
    $("#ctl03_pageLink").text("testimonial-reviews.aspx");
}
//other end
//Website start verified
function smtBlogMet() {
    $("#ctl02_formMainHeader").text("SEO Meta Tags (Blog Post)");
    $("#ctl02_formHeader").text("SEO Meta Tags (Blog Post)");
    $("#ctl02_formInnerDiv").text("A set of optimized meta title and meta description tags that will boost your search rankings for your blog.");
    $("#ctl02_pageLink").text("SEO Meta Tags (Blog Post).aspx");
}
function smtHomeMet() {
    $("#ctl02_formMainHeader").text("SEO Meta Tags (Homepage)");
    $("#ctl02_formHeader").text("SEO Meta Tags (Homepage)");
    $("#ctl02_formInnerDiv").text("A set of optimized meta title and meta description tags that will boost your search rankings for your home page.");
    $("#ctl02_pageLink").text("SEO Meta Tags (Homepage).aspx");
} 
function smtProductPage() {
    $("#ctl02_formMainHeader").text("SEO Meta Tags (Blog Post)");
    $("#ctl02_formHeader").text("SEO Meta Tags (Blog Post)");
    $("#ctl02_formInnerDiv").text("A set of optimized meta title and meta description tags that will boost your search rankings for your blog.");
    $("#ctl02_pageLink").text("SEO Meta Tags (Product Page).aspx");
}
//Website End
//socialMedia start verified
function socialMediaPostPersonal() {
    $("#ctl02_formMainHeader").text("Social Media Post(Personal)");
    $("#ctl02_formHeader").text("Social Media Post(Personal)");
    $("#ctl02_formInnerDiv").text("Write a social media post for yourself to be published on any platform.");
    $("#ctl02_pageLink").text("SocialMediaPost(Personal).aspx");
}
function socialMediaPostBusiness() {
    $("#ctl02_formMainHeader").text("Social Media Post (Business)");
    $("#ctl02_formHeader").text("Social Media Post (Business)");
    $("#ctl02_formInnerDiv").text("Write a post for your business to be published on any social media platform.");
    $("#ctl02_pageLink").text("SocialMediaPostBusiness.aspx");
}
function instagramCaptions() {
    $("#ctl02_formMainHeader").text("Instagram Captions");
    $("#ctl02_formHeader").text("Instagram Captions");
    $("#ctl02_formInnerDiv").text("Captions that turn your images into attention-grabbing Instagram posts.");
    $("#ctl02_pageLink").text("Instagram Captions.aspx");
}
function instagramHashTags() {
    $("#ctl02_formMainHeader").text("Instagram Hashtags");
    $("#ctl02_formHeader").text("Instagram Hashtags");
    $("#ctl02_formInnerDiv").text("Trending and highly relevant hashtags to help you get more followers and engagement.");
    $("#ctl02_pageLink").text("Instagram Hashtags.aspx");
}
function Twitter() {
    $("#ctl02_formMainHeader").text("Twitter Tweets");
    $("#ctl02_formHeader").text("Twitter Tweets");
    $("#ctl02_formInnerDiv").text("Generate tweets using AI, that are relevant and on-trend.");
    $("#ctl02_pageLink").text("Twitter Tweets.aspx");
}
function youtube() {
    $("#ctl02_formMainHeader").text("Youtube Titles");
    $("#ctl02_formHeader").text("Youtube Titles");
    $("#ctl02_formInnerDiv").text("Catchy titles that attract more views and increase the number of shares.");
    $("#ctl02_pageLink").text("YoutubeTitles.aspx");
}
function youtubeDesc() {
    $("#ctl02_formMainHeader").text("YouTube Descriptions");
    $("#ctl02_formHeader").text("YouTube Descriptions");
    $("#ctl02_formInnerDiv").text("Catchy and persuasive YouTube descriptions that help your videos rank higher.");
    $("#ctl02_pageLink").text("Youtube Desc.aspx");
}
function youtubeOnline() {
    $("#ctl02_formMainHeader").text("YouTube Outlines");
    $("#ctl02_formHeader").text("YouTube Outlines");
    $("#ctl02_formInnerDiv").text("Video outlines that are a breeze to create and uber-engaging.");
    $("#ctl02_pageLink").text("Youtube Online.aspx");
}
function linkedInPost() {
    $("#ctl02_formMainHeader").text("LinkedIn Posts");
    $("#ctl02_formHeader").text("LinkedIn Posts");
    $("#ctl02_formInnerDiv").text("Inspiring LinkedIn posts that will help you build trust and authority in your industry.");
    $("#ctl02_pageLink").text("Linikedin Posts.aspx");
}
function tiktok() {
    $("#ctl02_formMainHeader").text("TikTok Video Scripts");
    $("#ctl02_formHeader").text("TikTok Video Scripts");
    $("#ctl02_formInnerDiv").text("Video scripts that are ready to shoot and will make you go viral.");
    $("#ctl02_pageLink").text("Tiktok Video.aspx");
}
//socialMedia end
//Ecommerce start verifed 
function ProductNameGenerator() {
    $("#ctl02_formMainHeader").text("Product Name Generator");
    $("#ctl02_formHeader").text("Product Name Generator");
    $("#ctl02_formInnerDiv").text("Create creative product names from examples words.");
    $("#ctl02_pageLink").text("Product Name Generator.aspx");
}
function productDescription() {
    $("#ctl02_formMainHeader").text("Product Descriptions");
    $("#ctl02_formHeader").text("Product Descriptions");
    $("#ctl02_formInnerDiv").text("Authentic product descriptions that will compel, inspire, and influence.");
    $("#ctl02_pageLink").text("Product Description.aspx");
} 
function amazonProductTitle() {
    $("#ctl02_formMainHeader").text("Amazon Product Titles");
    $("#ctl02_formHeader").text("Amazon Product Titles");
    $("#ctl02_formInnerDiv").text("Product titles that will make your product stand out in a sea of competition.");
    $("#ctl02_pageLink").text("AmazonProductTitle.aspx");
    
}
function amazonProductDesc() {
    $("#ctl02_formMainHeader").text("Amazon Product Descriptions");
    $("#ctl02_formHeader").text("Amazon Product Descriptions");
    $("#ctl02_formInnerDiv").text("Descriptions for Amazon products that rank on the first page of the search results.");
    $("#ctl02_pageLink").text("AmazonProductTitle.aspx");
}
function amazonProductFeature() {
    $("#ctl02_formMainHeader").text("Amazon Product Features");
    $("#ctl02_formHeader").text("Amazon Product Features");
    $("#ctl02_formInnerDiv").text("Advantages and features of your products that will make them irresistible to shoppers.");
    $("#ctl02_pageLink").text("Amazon Product Features.aspx");
}
//Ecommerce end
//General Writing start
function textExtender() {
    $("#ctl02_formMainHeader").text("Text Extender");
    $("#ctl02_formHeader").text("Text Extender");
    $("#ctl02_formInnerDiv").text("Extend short sentences into more descriptive and interesting ones.");
    $("#ctl02_pageLink").text("TextExtender.aspx");
} 
function contentShorten() {
    $("#ctl02_formMainHeader").text("Content Shorten");
    $("#ctl02_formHeader").text("Content Shorten");
    $("#ctl02_formInnerDiv").text("Short your content in a different voice and style to appeal to different readers.");
    $("#ctl02_pageLink").text("ContentShorten.aspx");
} 
function quoraAnswer() {
    $("#ctl02_formMainHeader").text("Quora Answers");
    $("#ctl02_formHeader").text("Quora Answers");
    $("#ctl02_formInnerDiv").text("Answers to Quora questions that will position you as an authority.");
    $("#ctl02_pageLink").text("QuoraAnswer.aspx");
    
} 
function summarizeForGrade() {
    $("#ctl02_formMainHeader").text("Summarize for a 2nd grader");
    $("#ctl02_formHeader").text("Summarize for a 2nd grader");
    $("#ctl02_formInnerDiv").text("Translates difficult text into simpler concepts.");
    $("#ctl02_pageLink").text("summarizeGrade.aspx");
} 
function stories() { 
    $("#ctl02_formMainHeader").text("Stories");
    $("#ctl02_formHeader").text("Stories");
    $("#ctl02_formInnerDiv").text("Engaging and persuasive stories that will capture your reader's attention and interest.");
    $("#ctl02_pageLink").text("stories.aspx");
} 
function bulletPointAns() {
    $("#ctl02_formMainHeader").text("Bullet Point Answers");
    $("#ctl02_formHeader").text("Bullet Point Answers");
    $("#ctl02_formInnerDiv").text("Precise and informative bullet points that provide quick and valuable answers to your customers' questions.");
    $("#ctl02_pageLink").text("bulletPointAnswers.aspx");        
} 
function definitionID() {
    $("#ctl02_formMainHeader").text("Definition");
    $("#ctl02_formHeader").text("Definition");
    $("#ctl02_formInnerDiv").text("A definition for a word, phrase, or acronym that's used often by your target buyers.");
    $("#ctl02_pageLink").text("definition.aspx");
} 
function answersID() {
    $("#ctl02_formMainHeader").text("Answers");
    $("#ctl02_formHeader").text("Answers");
    $("#ctl02_formInnerDiv").text("Instant, quality answers to any questions or concerns that your audience might have.");
    $("#ctl02_pageLink").text("QuoraAnswer.aspx");
} 
function question() {
    $("#ctl02_formMainHeader").text("Questions");
    $("#ctl02_formHeader").text("Questions");
    $("#ctl02_formInnerDiv").text("A tool to create engaging questions and polls that increase audience participation and engagement.");
    $("#ctl02_pageLink").text("question.aspx");
} 
function passiveToActiveID() {
    $("#ctl02_formMainHeader").text("Passive to Active Voice");
    $("#ctl02_formHeader").text("Passive to Active Voice");
    $("#ctl02_formInnerDiv").text("Easy and quick solution to converting your passive voice sentences into active voice sentences.");
    $("#ctl02_pageLink").text("passiveToActiveVoice.aspx");
} 
function prosAndConsID() {
    $("#ctl02_formMainHeader").text("Pros and Cons");
    $("#ctl02_formHeader").text("Pros and Cons");
    $("#ctl02_formInnerDiv").text("List of the main benefits versus the most common problems and concerns.");
    $("#ctl02_pageLink").text("prosAndCons.aspx");
} 
function rewriteWithKeywordsID() {
    $("#ctl02_formMainHeader").text("Rewrite With Keywords");
    $("#ctl02_formHeader").text("Rewrite With Keywords");
    $("#ctl02_formInnerDiv").text("Rewrite your existing content to include more keywords and boost your search engine rankings.");
    $("#ctl02_pageLink").text("RewriteWithKeywords.aspx");
} 
function emailID() {
    $("#ctl02_formMainHeader").text("Emails");
    $("#ctl02_formHeader").text("Emails");
    $("#ctl02_formInnerDiv").text("Professional-looking emails that help you engage leads and customers.");
    $("#ctl02_pageLink").text("Email.aspx");
} 
function emailsV2() {
    $("#ctl02_formMainHeader").text("EmailsV2");
    $("#ctl02_formHeader").text("EmailsV2");
    $("#ctl02_formInnerDiv").text("Personalized email outreach to your target prospects that get better results.");
    $("#ctl02_pageLink").text("emailV2.aspx");
} 
function emailSubjectLineID() {
    $("#ctl02_formMainHeader").text("Email Subject Lines");
    $("#ctl02_formHeader").text("Email Subject Lines");
    $("#ctl02_formInnerDiv").text("Powerful email subject lines that increase open rates.");
    $("#ctl02_pageLink").text("EmailSubjectLines.aspx");
} 
function startupNameGeneratorID() {
    $("#ctl02_formMainHeader").text("Startup Name Generator");
    $("#ctl02_formHeader").text("Startup Name Generator");
    $("#ctl02_formInnerDiv").text("Generate cool, creative, and catchy names for your startup in second");
    $("#ctl02_pageLink").text("startupNameGenerator.aspx");
} 
function companyBiosID() {
    $("#ctl02_formMainHeader").text("Company Bios");
    $("#ctl02_formHeader").text("Company Bios");
    $("#ctl02_formInnerDiv").text("Short and sweet company bio that will help you connect with your target audience.");
    $("#ctl02_pageLink").text("companyBios.aspx");
} 
function CompanyMissionID() {
    $("#ctl02_formMainHeader").text("Company Mission");
    $("#ctl02_formHeader").text("Company Mission");
    $("#ctl02_formInnerDiv").text("A clear and concise statement of your company's goal and purpose");
    $("#ctl02_pageLink").text("Company Mission.aspx");
} 
function companyVisionID() {
    $("#ctl02_formMainHeader").text("Company Vision");
    $("#ctl02_formHeader").text("Company Vision");
    $("#ctl02_formInnerDiv").text("A vision that attracts the right people, clients, and employees.");
    $("#ctl02_pageLink").text("Company Vision.aspx");
} 
//General Writing end
//ads and marketing tools start
function appsAndSMS() {
    $("#ctl02_formMainHeader").text("App and SMS Notifications");
    $("#ctl02_formHeader").text("App and SMS Notifications");
    $("#ctl02_formInnerDiv").text("Notification messages for your apps, websites, and mobile devices that keep users coming back for more.");
    $("#ctl02_pageLink").text("AppsAndSms.aspx");
}
function linkedAdsDesc() {
    $("#ctl02_formMainHeader").text("LinkedIn Ad Descriptions");
    $("#ctl02_formHeader").text("LinkedIn Ad Descriptions");
    $("#ctl02_formInnerDiv").text("Professional and eye-catching ad descriptions that will make your product shine.");
    $("#ctl02_pageLink").text("LinkedAdsDesc.aspx");
}
function LinkedAdsHeadLineID() {
    $("#ctl02_formMainHeader").text("LinkedIn Ad Headlines");
    $("#ctl02_formHeader").text("LinkedIn Ad Headlines");
    $("#ctl02_formInnerDiv").text("Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.");
    $("#ctl02_pageLink").text("LinkedAdsHeadLine.aspx");
}
function gAdsDesc() {
    $("#ctl02_formMainHeader").text("Google Ad Description");
    $("#ctl02_formHeader").text("Google Ad Description");
    $("#ctl02_formInnerDiv").text("The best-performing Google ad copy converts visitors into customers.");
    $("#ctl02_pageLink").text("GoogleAdsDesc.aspx");
}
function googleAds() {
    $("#ctl02_formMainHeader").text("Google Ad Titles");
    $("#ctl02_formHeader").text("oogle Ad Titles");
    $("#ctl02_formInnerDiv").text("Creating ads with unique and appealing titles that entice people to click on your ad and purchase from your site.");
    $("#ctl02_pageLink").text("googleAdsTitle.aspx");
}
function fbAdsHeadline(){
    $("#ctl02_formMainHeader").text("Facebook Ads Headline");
    $("#ctl02_formHeader").text("Facebook Ads Headline");
    $("#ctl02_formInnerDiv").text("Write catchy and convincing headlines to make your Facebook Ads stand out.");
    $("#ctl02_pageLink").text("facebookAdsHeadline.aspx");
}
function fbAds() {
    $("#ctl02_formMainHeader").text("Facebook Ads");
    $("#ctl02_formHeader").text("Facebook Ads");
    $("#ctl02_formInnerDiv").text("Facebook ad copies that make your ads truly stand out.");
    $("#ctl02_pageLink").text("facebookAds.aspx");
}
//ads and marketing tools end
//content should changed from here KIM
function blogsIntro() {
    $("#ctl03_formMainHeader").text("Blog Intros");
    $("#ctl03_formHeader").text("Blog Intros");
    $("#ctl03_formInnerDiv").text("Enticing article/blog introductions that capture the attention of the audience.");
    $("#ctl03_pageLink").text("blog-intro.aspx");

}
function blogsTitle() {
    $("#ctl03_formMainHeader").text("Blog Titles");
    $("#ctl03_formHeader").text("Blog Titles");
    $("#ctl03_formInnerDiv").text("Nobody wants to read boring blog titles, generate catchy blog titles with this tool.");
    $("#ctl03_pageLink").text("blogTitle.aspx");
}
function blogIdea() {
    $("#ctl03_formMainHeader").text("Blog ideas");
    $("#ctl03_formHeader").text("Blog Ideas");
    $("#ctl03_formInnerDiv").text("Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.");
    $("#ctl03_pageLink").text("blogIdea.aspx");    
}
function blogSection() {
    $("#ctl03_formMainHeader").text("Blog Section");
    $("#ctl03_formHeader").text("Blog Section");
    $("#ctl03_formInnerDiv").text("Write a few paragraphs about a subheading of your article.");
    $("#ctl03_pageLink").text("blogSection.aspx");
}
function blogConclusion() {
    $("#ctl03_formMainHeader").text("Blog Conclusion");
    $("#ctl03_formHeader").text("Blog Conclusion");
    $("#ctl03_formInnerDiv").text("Create powerful conclusion that will make a reader take action.");
    $("#ctl03_pageLink").text("blogConclusion.aspx");
}
function articleWriter() {
    $("#ctl03_formMainHeader").text("Article Writer");
    $("#ctl03_formHeader").text("Article Writer");
    $("#ctl03_formInnerDiv").text("Create a fully complete high quality article from a title and outline text.");
    $("#ctl03_pageLink").text("articleWriter.aspx");
}
function articleReWriter() {
    $("#ctl02_formMainHeader").text("Article ReWriter");
    $("#ctl02_formHeader").text("Article ReWriter");
    $("#ctl02_formInnerDiv").text("Copy an article, paste it in to the program, and with just one click you'll have an entirely different article to read.");
    $("#ctl02_pageLink").text("articleRewriter.aspx");
}
function articleOutline() {
    $("#ctl02_formMainHeader").text("Article Outlines");
    $("#ctl02_formHeader").text("Article Outlines");
    $("#ctl02_formInnerDiv").text("Detailed article outlines that help you write better content on a consistent basis.");
    $("#ctl02_pageLink").text("articleOutline.aspx");
}
function talkingPoints() {
    $("#ctl02_formMainHeader").text("Talking Points");
    $("#ctl02_formHeader").text("Talking Points");
    $("#ctl02_formInnerDiv").text("Write short, simple and informative points for the subheadings of your article");
    $("#ctl02_pageLink").text("talkingPoints.aspx");
}
function paragraphWriter() {
    $("#ctl02_formMainHeader").text("Paragraph Writer"); ctl02_formHeader
    $("#ctl02_formHeader").text("Paragraph Writer");
    $("#ctl02_formInnerDiv").text("Perfectly structured paragraphs that are easy to read and packed with persuasive words.");
    $("#ctl02_pageLink").text("paragraphWriter.aspx");
}
function contentRephase() {
    $("#ctl02_formMainHeader").text("Content Rephrase");
    $("#ctl02_formHeader").text("Content Rephrase");
    $("#ctl02_formInnerDiv").text("Rephrase your content in a different voice and style to appeal to different readers.");
    $("#ctl02_pageLink").text("ContentRephrase.aspx");
}