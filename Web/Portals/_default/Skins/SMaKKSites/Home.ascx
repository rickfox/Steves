<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
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
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>

<div id="ControlPanelWrapper">
    <dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="True" />
</div>



<div class="main skin_home main_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabName.toLower%>" id="smakk_main_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabName.toLower%>">
<!-- Begin Header -->
    <div id="header_wrapper" class="header_wrapper">
        <div id="header" class="header">
            <div class="logo_wrapper">
                <a href="/">
                    <img src="<%=SkinPath %>/images/logo.png" alt="Company Logo" />
                </a>
            </div>
            <div id="nav_wrapper" class="nav_wrapper">
                <ul id="nav" class="nav">
                    <li id="nav_1_wrapper" class="nav_wrapper nav_1_wrapper">
                        <div id="nav_title_1_wrapper" class="nav_title_1_wrapper nav_title_wrapper">
                            <div runat="server" id="nav_title_1" class="nav_title nav_title_1"></div>
                        </div> 
                        <div id="subnav_1_wrapper" class="subnav_1_wrapper subnav_wrapper">
                            <div runat="server" id="subnav_1" class="subnav subnav_1"></div>
                        </div> 
                    </li>
                    <li id="nav_2_wrapper" class="nav_wrapper nav_2_wrapper">
                        <div id="nav_title_2_wrapper" class="nav_title_2_wrapper nav_title_wrapper">
                            <div runat="server" id="nav_title_2" class="nav_title nav_title_2"></div>
                        </div> 
                        <div id="subnav_2_wrapper" class="subnav_2_wrapper subnav_wrapper">
                            <div runat="server" id="subnav_2" class="subnav subnav_2"></div>
                        </div> 
                    </li>
                    <li id="nav_3_wrapper" class="nav_wrapper nav_3_wrapper">
                        <div id="nav_title_3_wrapper" class="nav_title_3_wrapper nav_title_wrapper">
                            <div runat="server" id="nav_title_3" class="nav_title nav_title_3"></div>
                        </div> 
                        <div id="subnav_3_wrapper" class="subnav_3_wrapper subnav_wrapper">
                            <div runat="server" id="subnav_3" class="subnav subnav_3"></div>
                        </div> 
                    </li>
                    <li id="nav_4_wrapper" class="nav_wrapper nav_4_wrapper">
                        <div id="nav_title_4_wrapper" class="nav_title_4_wrapper nav_title_wrapper">
                            <div runat="server" id="nav_title_4" class="nav_title nav_title_4"></div>
                        </div> 
                        <div id="subnav_4_wrapper" class="subnav_4_wrapper subnav_wrapper">
                            <div runat="server" id="subnav_4" class="subnav subnav_4"></div>
                        </div> 
                    </li>
                    <li id="nav_5_wrapper" class="nav_wrapper nav_5_wrapper">
                        <div id="nav_title_5_wrapper" class="nav_title_5_wrapper nav_title_wrapper">
                            <div runat="server" id="nav_title_5" class="nav_title nav_title_5"></div>
                        </div> 
                        <div id="subnav_5_wrapper" class="subnav_5_wrapper subnav_wrapper">
                            <div runat="server" id="subnav_5" class="subnav subnav_5"></div>
                        </div> 
                    </li>
                </ul>
            </div>
        </div>
    </div>
<!-- End Header -->
<!-- Begin Page Content -->
    <div class="content_wrapper">
        <div class="content">
            <div id = "hero_wrapper" class="hero_wrapper">
                <div runat="server" id="hero" class="hero"></div> 
            </div>
            <div id = "contentPane_wrapper" class="contentPane_wrapper">
                <div runat="server" id="ContentPane" class="ContentPane"></div>
            </div>
            <div class="features_wrapper">
                <div class="features">
                    <div runat="server" id="feature_1" class="feature feature_1"></div>
                    <div runat="server" id="feature_2" class="feature feature_2"></div>
                    <div runat="server" id="feature_3" class="feature feature_3"></div>
                    <div runat="server" id="feature_4" class="feature feature_4"></div>
                </div>
            </div>
            <div runat="server" id="lower_content_wrapper" class="lower_content_wrapper">
                <div runat="server" id="lower_content" class="lower_content"></div>
            </div>
        </div>
    </div>
<!-- End Page Content -->
<!-- Begin Header -->
    <div class="footer_wrapper">
        <div runat="server" id="footer" class="footer">
        </div>                
    </div>
<!-- End Header -->
</div>


<%--<div id="DNN6" class="Home">
		<div id="Background"></div>
    <div id="Header">
        <div id="ContentBG">
            <div id="ControlPanelWrapper">
                <dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="True" />
		    </div>
		    <div class="Content">
                <div id="Nav">
				    <dnn:MENU MenuStyle="DNNMega" runat="server"></dnn:MENU>
			    </div>
                <dnn:SEARCH ID="dnnSearch" runat="server" UseDropDownList="true" EnableTheming="true" Submit="Search" />
		    </div>
        </div>
	</div>
    <div id="Content">
        <div id="Panes">
		    <div id="LogoRow">
			    <dnn:LOGO id="dnnLogo" runat="server" />
                <div class="LogoRowRight">
                    <div id="Login"><dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" />|<dnn:USER ID="dnnUser" runat="server" />
					<dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" />
					</div>
			        <div id="SocialMediaPane" runat="server"></div>
                </div>
		    </div>
            <div id="ContentPane" runat="server"></div>
            <div id="LeftPane" runat="server"></div>
		    <div id="RightPane" runat="server"></div>
		    <div id="BottomPane" runat="server"></div>
        </div>
    </div>
	<div id="Footer">
        <div class="Content">
            <div id="Footer_LeftPane" runat="server"></div>
            <div id="Footer_RightPane" runat="server"></div>
            <div id="Footer_BottomPane" runat="server"></div>
            <div id="Copyright"><dnn:COPYRIGHT ID="dnnCopyright" runat="server" /><dnn:TERMS ID="dnnTerms" runat="server" /><dnn:PRIVACY ID="dnnPrivacy" runat="server" /></div>
        </div>
    </div>
</div>--%>



<script type="text/javascript" src="<%=SkinPath %>jquery.cycle.min.js"></script>
<script runat="server">
  'for mega menu we need to register hoverIntent plugin, but avoid duplicate registrations
  Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    Page.ClientScript.RegisterClientScriptInclude("hoverintent", ResolveUrl("~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js"))
  End Sub
</script>