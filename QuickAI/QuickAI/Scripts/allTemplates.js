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
//other start
function ToneChanger() { }
function songLyrics() { }
function translate() { }
function faqTemplates() { }
function faqAnswer() { }
function testimonialReview() { }
//other end
//Website start
function smtBlogMet() { }
function smtHomeMet() { }
function smtProductPage() { }
//Website End
//socialMedia start
function socialMediaPostPersonal() { }
function socialMediaPostBusiness() { }
function instagramCaptions() { }
function instagramHashTags() { }
function Twitter() { }
function youtube() { }
function youtubeDesc() { }
function youtubeOnline() { }
function linkedInPost() { }
function tiktok() { }
//socialMedia end
//Ecommerce start
function ProductNameGenerator() { }
function productDescription() { } 
function amazonProductTitle() { }
function amazonProductDesc() { }
function amazonProductFeature() { }
//Ecommerce end
//General Writing start
function textExtender() { } 
function contentShorten() { } 
function quoraAnswer() { } 
function summarizeForGrade() { } 
function stories() { } 
function bulletPointAns() { } 
function definitionID() { } 
function answersID() { } 
function question() { } 
function passiveToActiveID() { } 
function prosAndConsID() { } 
function rewriteWithKeywordsID() { } 
function emailID() { } 
function emailsV2() { } 
function emailSubjectLineID() { } 
function startupNameGeneratorID() { } 
function companyBiosID() { } 
function CompanyMissionID() { } 
function companyVisionID() { } 
//General Writing end
//ads and marketing tools start
function appsAndSMS(){ }
function linkedAdsDesc(){ }
function LinkedAdsHeadLineID(){ }
function gAdsDesc(){ }
function googleAds() {

}
function fbAdsHeadline(){

}
function fbAds() {

}
//ads and marketing tools end
//content should changed from here KIM
function blogsIntro() {
    $("#ctl03_formMainHeader").text("Blog ideas");
    $("#ctl03_formHeader").text("Blog Ideas");
    $("#ctl03_formInnerDiv").text("Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.");
    $("#ctl03_pageLink").text("blogIdea.aspx");

}
function blogsTitle() {
    $("#ctl03_formMainHeader").text("Blog ideas");
    $("#ctl03_formHeader").text("Blog Ideas");
    $("#ctl03_formInnerDiv").text("Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.");
    $("#ctl03_pageLink").text("blogIdea.aspx");
}
function blogIdea() {
    $("#ctl03_formMainHeader").text("Blog ideas");
    $("#ctl03_formHeader").text("Blog Ideas");
    $("#ctl03_formInnerDiv").text("Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.");
    $("#ctl03_pageLink").text("blogIdea.aspx");
    $("#r2").hide();


}
function blogSection() {

}
function blogConclusion() {

}
function articleWriter() {

}
function articleReWriter() {

}
function articleOutline() { }
function talkingPoints() {

}
function paragraphWriter() { }
function contentRephase(){ }