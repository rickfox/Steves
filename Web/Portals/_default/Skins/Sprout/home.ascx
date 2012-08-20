<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SMaKKSitesNav" Src="~/Admin/Skins/SMaKKSitesNav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SMaKKSitesFooter" Src="~/Admin/Skins/SMaKKSitesFooter.ascx" %>
<div id="fb-root">
</div>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=198862666869250";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css"
    Condition="LT IE 8" UseSkinPath="true" />



<div id="ControlPanelWrapper">
    <dnn:CONTROLPANEL runat="server" ID="cp" IsDockable="True" />
</div>
<div id="smakk-page-wrapper" class="smakk-page-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabName.toLower.Replace(" ","_")%> <%=modeClass%> ">
    <div id="smakk-header-wrapper">
        <div id="smakk-header">
            <div id="smakk-nav">
                <dnn:SMaKKSitesNav runat="server"></dnn:SMaKKSitesNav>
            </div>
        </div>
    </div>
    <div id="smakk-hero-outer-wrapper">
        <a class="left" href="#"></a><a class="right" href="#"></a>
        <div id="smakk-hero-wrapper">
            <div class="heroContainer" id="hero_content_pane" runat="server">
                <%--                <img src="/portals/_default/skins/sprout/images/home/homePageHeroImg1.png" /><img
                    src="/portals/_default/skins/sprout/images/home/homePageHeroImg2.png" /><img src="/portals/_default/skins/sprout/images/home/homePageHeroImg1.png" /><img
                        src="/portals/_default/skins/sprout/images/home/homePageHeroImg1.png" /><img src="/portals/_default/skins/sprout/images/home/homePageHeroImg1.png" /><img
                            src="/portals/_default/skins/sprout/images/home/homePageHeroImg2.png" />
                --%>
            </div>
        </div>
        <%--        <div id="hero_content">
            <div class="hero_content_pane" id="hero_content_pane" runat="server">
            </div>
        </div>
        --%>
    </div>
    <div id="smakk-content-wrapper">
        <div id="smakk-content">
            <div id="sideNav">
                <a href="/" class="logo">&nbsp</a> <a href="/about" class="natural">&nbsp</a> <a href="/about"
                    class="holistic">&nbsp</a> <a href="/about" class="madeIn">&nbsp</a> <a href="/about" class="ethic">
                        &nbsp</a> <a href="/about" class="supportsmfarms">&nbsp</a>
                <div class="facebooklike">
                    <div class="fb-like" data-href="https://www.facebook.com/sproutwellnessnyc"  data-send="false" data-width="285" data-show-faces="false" data-colorscheme="dark">
                    </div>
                </div>
                <a  class="friends">&nbsp</a> <a href="http://www.facebook.com/sproutwellnessnyc" class="facebook">&nbsp</a> <a href="http://twitter.com/#!/sproutwellness"
                    class="twitter">&nbsp</a>
                <div class="register">
                    Grow with us! Sign up to receive newsletter updates and special offers:
                    <iframe src="/SubscribeForm.htm" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                </div>
                <a href="/where-to-buy" class="findus">&nbsp</a> <a href="http://sproutskincare.smkk.com/our-story" class="aboutus"></a><a href="http://sproutskincare.smkk.com/our-story"
                    class="wanttoknowwhy"></a>
                <div class="adina">
                    Adina Grigore, Founder</div>
                <a href="http://sproutskincare.smkk.com/our-story" class="ourstory"></a>
            </div>
            <div class="pageContentWrapper">
                <img class="lineDivider" src="/portals/_default/skins/sprout/images/home/lineDivider.png" />
                <div id="ContentPane" class="ContentPane" runat="server">
                    <%--<h1>
                        Simplicity is the essence of awesome.</h1>   --%></div>
                <img class="lineDivider" src="/portals/_default/skins/sprout/images/home/lineDivider.png" />
                <div id="testimonials" class="testimonials" runat="server">
                    <%--<blockquote>
                        "I just heard about this small, Brooklyn-based company... and got so excited about
                        what they do. It&rsquo;s the way it should be, made once a week in small batches,
                        using glass jars and supporting local, sustainable farms."
                    </blockquote>
                    <p>
                        &#8211; from Gwyneth Paltrow's GOOP
                    </p>
                    <blockquote>
                        "It&rsquo;s been one week since receiving my Sprout order, and I couldn&rsquo;t
                        be more pleased. Sprout products have effectively eradicated all other brands from
                        my skincare routine and have re-balanced my unusually temperamental skin to its
                        porcelain gleam once more."</blockquote>
                    <p>
                        &#8211;Shannon C.
                    </p>--%>
                </div>
                <div class="readMore">
                    <a href="http://sproutskincare.smkk.com/buzz">Read more buzz</a></div>
                </div>
           <div class="clear"></div>
         </div>
    </div>
</div>
<div class="bottomSection"></div>
<div id="smakk-footer-wrapper">
       <dnn:SMaKKSitesFooter   runat="server">
                </dnn:SMaKKSitesFooter>
</div>
<script runat="server">
    'for mega menu we need to register hoverIntent plugin, but avoid duplicate registrations
       Protected modeClass As String = "viewMode"
    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        MyBase.OnLoad(e)
        Page.ClientScript.RegisterClientScriptInclude("hoverintent", ResolveUrl("~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js"))
        Page.ClientScript.RegisterClientScriptInclude("typekit_include", "http://use.typekit.com/lwp5dbq.js")
        Page.ClientScript.RegisterClientScriptInclude("smakksites", SkinPath & "scripts/smakksites.js")
        Page.ClientScript.RegisterClientScriptInclude("default_skin_script", SkinPath & "scripts/default.js")
        Page.ClientScript.RegisterClientScriptInclude("home_skin_script", SkinPath & "scripts/home.js")
        '-- stop the slideshow if in edit mode
        
        If IsEditMode() Then
            Page.ClientScript.RegisterClientScriptBlock(Me.GetType, "editmode-cycle-stop", "editMode = true;", True)
            modeClass = "editMode"
        
        End If
    End Sub
</script>
