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
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css"
    Condition="LT IE 8" UseSkinPath="true" />
<div id="ControlPanelWrapper">
    <dnn:CONTROLPANEL runat="server" ID="cp" IsDockable="True" />
</div>
<div id="smakk-page-wrapper">
    <div id="smakk-header-wrapper">
        <div id="smakk-header">
            <a href="/">
                <img id="skp-logo" src="<%=SkinPath%>/images/skp-logo.png" alt="Spielman Koenigsberg & Parker, LLP; Certified Public Accountants" /></a>
            <div id="smakk-nav">
                <dnn:MENU MenuStyle="DNNStandard" runat="server">
                </dnn:MENU>
            </div>
        </div>
    </div>
    <div id="smakk-hero-outer-wrapper">
        <div id="smakk-hero-wrapper">
            <div id="smakk-hero-inner-wrapper">
                <div id="smakk-hero">
                </div>
            </div>
        </div>
        <div id="hero_content">
            <div class="hero_content_pane" id="hero_content_pane" runat="server">
            </div>
        </div>
    </div>
    <div id="smakk-content-wrapper">
        <div id="smakk-content">
            <div class="smakk-leftMenu">
                <dnn:MENU ID="Menu1" MenuStyle="SMaKK_LeftMenu" NodeSelector="RootChildren" runat="server">
                </dnn:MENU>
            </div>
            <div id="ContentPane" class="SMaKK-ContentPaneRight" runat="server">
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</div>
<div id="smakk-footer-wrapper">
    <div id="smakk-upper-footer-wrapper">
        <div id="smakk-upper-footer">
            <div id="smakk-testimonial-wrapper">
                <div id="smakk-testimonial">
                    <img src="<%=SkinPath%>/images/left-quote.png" alt="left-quote" id="smakk-testimonial-left-quote" />
                    <div id="footer_testimonial_content">
                        <div id="footer_testimonial_content_pane" runat="server">
                        </div>
                    </div>
                    <img src="<%=SkinPath%>/images/right-quote.png" alt="right-quote" id="smakk-testimonial-right-quote" />
                </div>
            </div>
            <div id="smakk-footer-divider">
                <img src="<%=SkinPath%>/images/footer-divider.gif" alt="footer divider" /></div>
            <div id="smakk-sitemap">
                <div id="footer_sitemap_pane" runat="server">
                </div>
            </div>
        </div>
    </div>
    <div id="smakk-lower-footer-wrapper">
        <div id="smakk-lower-footer">
            <div id="smakk-lower-footer-content-wrapper">
                <div id="lower_footer_content">
                    <div id="lower_footer_content_pane" runat="server">
                    </div>
                </div>
                                <a id="powered-by-smakksites" href="http://smakksites.com" target="_blank">
                    <img src="<%=SkinPath%>/images/powered-by-smakksites.png" alt="Powered by SMaKK Sites" /></a>
                <div class="clear"></div>

            </div>
        </div>
    </div>
</div>
<script runat="server">
    'for mega menu we need to register hoverIntent plugin, but avoid duplicate registrations
    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        MyBase.OnLoad(e)
        Page.ClientScript.RegisterClientScriptInclude("hoverintent", ResolveUrl("~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js"))
        Page.ClientScript.RegisterClientScriptInclude("typekit_include", "http://use.typekit.com/kyw4nnc.js")
        Page.ClientScript.RegisterClientScriptInclude("smakksites", SkinPath & "scripts/smakksites.js")
        Page.ClientScript.RegisterClientScriptInclude("default_skin_script", SkinPath & "scripts/default.js")
        '-- include client-side edit mode
        If IsEditMode() Then
            Page.ClientScript.RegisterClientScriptBlock(Me.GetType, "editmode-cycle-stop", "editMode = true;", True)
        End If
    End Sub
</script>
