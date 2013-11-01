<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.Modules.groupdocs_dnn_installable_annotation.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/labelcontrol.ascx" %>


<h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("BasicSettings")%></a></h2>
<fieldset>
    <div class="dnnFormItem">
        <dnn:Label ID="lblUrl" Text="Annotation server URL" runat="server" /> 
        <asp:TextBox ID="txtUrl" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:label ID="lblWidth" Text="Image Width" runat="server" />
        <asp:TextBox ID="txtWidth" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:label ID="lblHeight" Text="Image Height" runat="server" />
        <asp:TextBox ID="txtHeight" runat="server" />
    </div>
</fieldset>
