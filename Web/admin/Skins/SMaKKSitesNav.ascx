<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.UI.Skins.Controls.SMaKKSitesNav"
    CodeFile="SMaKKSitesNav.ascx.cs" %>
    <a id="navLogo" href="/">
        <img alt="Steves Ice Cream" src="/Portals/_default/Skins/Steves/images/steves_logo.png" /></a>
<ul>
    <li><a class="shop" href="http://stevesicecream.myshopify.com">Shop</a></li>

    <li><a class="findus" href="/Find-Us">Find Us</a></li>

    <li><a class="ourStory" href="/Our-Story">Our Story</a></li>

    <li><a class="share" href="/share">Share</a></li>

</ul>
<div id="shoppingCart" class="shoppingCart" runat="server">
    <iframe marginheight="0" marginwidth="0" frameborder="0" scrolling="no" allowtransparency="true" src="http://sproutskincare.myshopify.com/pages/cart-frame">
    </iframe>
</div>
<div class="clear"></div>
