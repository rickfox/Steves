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
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SMaKKSitesNav" Src="~/Admin/Skins/SMaKKSitesNav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SMaKKSitesFooter" Src="~/Admin/Skins/SMaKKSitesFooter.ascx" %>
<div id="fb-root">
</div>
<script type="text/javascript">    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css"
    Condition="LT IE 8" UseSkinPath="true" />

<div id="ControlPanelWrapper">
    <dnn:CONTROLPANEL runat="server" ID="cp" IsDockable="True" />
</div>
<div id="smakk-page-wrapper" class="smakk-page-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabName.toLower.Replace(" ","_")%>">
    <div id="smakk-header-wrapper">
        <div id="smakk-header">
            <div id="smakk-nav">
                <%--<dnn:MENU MenuStyle="DNNStandard" runat="server">
                </dnn:MENU>--%>
                    <div id="navLogo"><a href="/"></a></div>
                <dnn:SMaKKSitesNav ID="SMaKKSitesNav1"  runat="server">
                </dnn:SMaKKSitesNav>
            </div>
        </div>
    </div>
    <div id="smakk-hero-outer-wrapper">
        <a class="left" href="#"></a><a class="right" href="#"></a>
        <div id="smakk-hero-wrapper">
            <div id="heroContainer">
              
            </div>
        </div>
        <div id="hero_content">
            <div class="hero_content_pane" id="hero_content_pane" runat="server">
            </div>
        </div>
    </div>
    <div id="smakk-content-wrapper">
        <div id="smakk-content">
          
            <div id="ContentPane" class="ContentPane" runat="server">

            </div>
             <div id="col1" class="col column1" runat="server">

            </div>
               <div id="col2" class="col column2" runat="server">

            </div>
               <div id="col3" class="col column3" runat="server">

            </div>

            <div class="clear">
            </div>
            <div class="bottomContent" id="bottomContent" runat="server"></div>
        </div>
        <div class="push">
        </div>
    </div>
</div>
<div id="smakk-footer-wrapper">
       <dnn:SMaKKSitesFooter  runat="server">
                </dnn:SMaKKSitesFooter>
</div>
<script runat="server">
    'for mega menu we need to register hoverIntent plugin, but avoid duplicate registrations
    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        MyBase.OnLoad(e)
        Page.ClientScript.RegisterClientScriptInclude("hoverintent", ResolveUrl("~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js"))
        Page.ClientScript.RegisterClientScriptInclude("typekit_include", "http://use.typekit.com/lwp5dbq.js")
        Page.ClientScript.RegisterClientScriptInclude("smakksites", SkinPath & "scripts/smakksites.js")
        Page.ClientScript.RegisterClientScriptInclude("default_skin_script", SkinPath & "scripts/default.js")
        '-- stop the slideshow if in edit mode
        If IsEditMode() Then
            Page.ClientScript.RegisterClientScriptBlock(Me.GetType, "editmode-cycle-stop", "editMode = true;", True)
        End If
    End Sub
</script>
