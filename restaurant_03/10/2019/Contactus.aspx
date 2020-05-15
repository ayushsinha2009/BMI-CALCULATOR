<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content">
    <div class="container_12">
      <div class="grid_6">
        <h2>Contact Us</h2>
        <div class="map">
<%--          <figure class="img_inner">
            <iframe src="htt p://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
          </figure>--%>
          <address>
          <dl>
            <dt>
              <p><strong>The Company Name Inc.<br>
                8901 Marmora Road,<br>
                Glasgow, D04 89GR.</strong></p>
            </dt>
            <dd><span><strong>Telephone:</strong></span><strong>+1 800 559 6580</strong></dd>
            <dd><span><strong>Mobile:</strong></span><strong>+1 800 603 6035</strong></dd>
            <dd><span><strong>WhatsApp:</strong></span><strong>+1 800 603 6035</strong></dd>
            <dd><span><strong>FAX:</strong></span><strong>+1 800 889 9898</strong></dd>
          </dl>
          </address>
        </div>
      </div>
      <%--<div class="grid_5 prefix_1">
        <h2>Contact Us</h2>
        <form id="form" action="#">
          <div class="success_wrapper">
            <div class="success">Contact form submitted!<br>
              <strong>We will be in touch soon.</strong> </div>
          </div>
          <fieldset>
            <label class="name">
              <input type="text" value="Name:">
              <br class="clear">
              <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
            <label class="email">
              <input type="text" value="E-mail:">
              <br class="clear">
              <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
            <label class="phone">
              <input type="tel" value="Phone:">
              <br class="clear">
              <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
            <label class="message">
              <textarea>Message:</textarea>
              <br class="clear">
              <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
            <div class="clear"></div>
            <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
              <div class="clear"></div>
            </div>
          </fieldset>
        </form>
      </div>--%>
      <div class="clear"></div>
    
      
    </div>
  </div>
</asp:Content>

