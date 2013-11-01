<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.Modules.DnnInstallableAnnotation.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/labelcontrol.ascx" %>


<h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("BasicSettings")%></a></h2>
<fieldset>
    <div class="dnnFormItem">
        <dnn:Label ID="lblUrl" Text="Server URL" runat="server" /> 
        <asp:TextBox ID="txtUrl" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblWidth" Text="Width" runat="server" /> 
        <asp:TextBox ID="txtWidth" runat="server" Text="800" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblHeight" Text="Height" runat="server" /> 
        <asp:TextBox ID="txtHeight" runat="server" Text="600" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblDefaultFileName" Text="Default file name" runat="server" /> 
        <asp:TextBox ID="txtDefaultFileName" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblUseHttpHandlers" Text="Use Http Handlers" runat="server" />
        <asp:CheckBox runat="server" ID="ckbUseHttpHandlers" />
    </div>
</fieldset>
