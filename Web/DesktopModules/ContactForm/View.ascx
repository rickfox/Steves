<%@ Control language="vb" Inherits="Modules.ContactForm.View" CodeFile="View.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<div class="contact-form">
<h3>Send Us a Message</h3>
<table ><tr><td  valign="bottom">    <div class="field-row">
        <span class="label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtName" 
                ErrorMessage="Required *Name:" 
                CssClass="validator" 
                Display="Dynamic"
                ValidationGroup="contactForm"
            />
            <span class="required"></span>
          
        </span>
        <asp:textbox runat="server" ID="txtName" CssClass=" txtName field"/>
    </div>
   
    <div class="field-row">
        <span class="label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtEmail" 
                ErrorMessage="Required *Email:" 
                CssClass="validator" 
                Display="Dynamic"
                ValidationGroup="contactForm"
            />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" 
                ControlToValidate="txtEmail" 
                ErrorMessage="Invalid Email" 
                CssClass="validator" 
                Display="Dynamic" 
                ValidationExpression="[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+"
                ValidationGroup="contactForm"
            />
            <span class="required"></span>
            
        </span>
        <asp:textbox runat="server" ID="txtEmail" CssClass=" txtEmail field"/>
    </div>
   
  <div class="field-row">
        <span class="label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Required *Phone:" 
                    CssClass="validator" 
                    Display="Dynamic"
                    ValidationGroup="contactForm"
                />        
        <span class="required"></span> 
        </span>
        <asp:textbox runat="server" ID="txtPhone" CssClass=" txtPhone field"/>
    </div></td></tr><tr><td> <div class="field-row">
        <span class="label">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtMessage" 
                ErrorMessage="Required *Message:" 
                CssClass="validator" 
                Display="Dynamic"
                ValidationGroup="contactForm"
            />
            <span class="required"></span> 
         </span>
             <asp:textbox runat="server" ID="txtMessage" TextMode="MultiLine" CssClass=" txtMessage field message"/>
    </div>    <div class="clear"></div></td></tr><tr><td><div class="button_wrapper">
    <div class="relativity_button">
        <asp:LinkButton runat="server" ID="btnSubmit" cssclass="submit btn" ValidationGroup="contactForm">Send</asp:LinkButton>
       
    </div>
    <div class="relativity_button">
     <asp:LinkButton runat="server" ID="btnClear" cssclass="clear btn" >Clear</asp:LinkButton>
     </div>
     </div>
    <div class="clear"></div></td></tr></table>

   

    
</div>
<script runat="server" language="vbscript">
Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        MyBase.OnLoad(e)
        Page.ClientScript.RegisterClientScriptInclude("contact_us_script", ResolveUrl("~/DesktopModules/ContactForm/scripts/contact_us.js"))
    End Sub    
</script>