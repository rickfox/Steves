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
<%-- Social Icon StyleSheets --%>
<link href="/Webfonts/ss-social.css" rel="stylesheet" type="text/css" />
<link href="/Webfonts/ss-standard.css" rel="stylesheet" type="text/css" />
<%-- End Social Icon StyleSheets --%>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css"
    Condition="LT IE 8" UseSkinPath="true" />
<div id="ControlPanelWrapper">
    <dnn:CONTROLPANEL runat="server" ID="cp" IsDockable="True" />
</div>
<div id="smakk-page-wrapper" class="smakk-page-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabName.toLower.Replace(" ","_")%> <%=modeClass%> ">
    <div id="smakk-header-wrapper">
        <div id="smakk-header">
            <div id="smakk-nav">
                <dnn:SMaKKSitesNav ID="SMaKKSitesNav1" runat="server"></dnn:SMaKKSitesNav>
            </div>
        </div>
    </div>
    
    <div id="smakk-content-wrapper">
        <div id="smakk-content">
               <div class="pageContentWrapper">
               
                <div id="ContentPane" class="ContentPane" runat="server">
                 </div>
               
                        </div>
            <div class="clear">
            </div>
        </div>
    </div>
</div>
<div class="bottomSection">
</div>
<div id="smakk-footer-wrapper">
    <div id="footer_dots">
    </div>
    <div id="footerwrapper" class="footerwrapper">
    <div id="footer" class="footer" runat="server"></div>
    <div id="footerfeed">
     <dnn:SMaKKSitesFooter ID="SMaKKSitesFooter1" runat="server"></dnn:SMaKKSitesFooter>
		<div id="twitter_m">
		   <div id="twitter_container">
		       <ul id="twitter_update_list"></ul>
		   </div>
		</div>
    </div>
    <div class="clear"></div>
    </div>
</div>
<%--Twitter scripts--%>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
<script src="http://twitter.com/statuses/user_timeline/stevesicecream.json?callback=twitterCallback2&count=2" type="text/javascript"></script>
<%--End Twitter scripts--%>	
<script runat="server">
    'for mega menu we need to register hoverIntent plugin, but avoid duplicate registrations
    Protected modeClass As String = "viewMode"
    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        MyBase.OnLoad(e)
        Page.ClientScript.RegisterClientScriptInclude("hoverintent", ResolveUrl("~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js"))
        Page.ClientScript.RegisterClientScriptInclude("typekit_include", "http://use.typekit.com/lga5juu.js")
        Page.ClientScript.RegisterClientScriptInclude("smakksites", SkinPath & "scripts/smakksites.js")
        Page.ClientScript.RegisterClientScriptInclude("default_skin_script", SkinPath & "scripts/default.js")
  
        'Include on all pages
        Page.ClientScript.RegisterClientScriptInclude("twitter", SkinPath & "scripts/footertwitter.js")
        Page.ClientScript.RegisterClientScriptInclude("Modernizr", SkinPath & "scripts/Modernizr.js")
        Page.ClientScript.RegisterClientScriptInclude("SVGSWAP", SkinPath & "scripts/SVGSWAP.js")
        Page.ClientScript.RegisterClientScriptInclude("SVGSWAP_Initialize", SkinPath & "scripts/svgswap_initialize.js")
        Page.ClientScript.RegisterClientScriptInclude("SSSocial", "/webfonts/ss-social.js")
        Page.ClientScript.RegisterClientScriptInclude("SSStandard", "/webfonts/ss-standard.js")
        
        '-- stop the slideshow if in edit mode
        If IsEditMode() Then
            Page.ClientScript.RegisterClientScriptBlock(Me.GetType, "editmode-cycle-stop", "editMode = true;", True)
            modeClass = "editMode"
        
        End If
    End Sub
</script>
