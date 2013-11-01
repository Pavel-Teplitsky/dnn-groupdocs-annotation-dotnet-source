<%@ Control language="C#" Inherits="DotNetNuke.Modules.DnnInstallableAnnotation.View" AutoEventWireup="false"  Codebehind="View.ascx.cs" %>

<asp:HiddenField runat="server" ID="URL" />
<asp:HiddenField runat="server" ID="Width" Value="800" />
<asp:HiddenField runat="server" ID="Height" Value="600" />
<asp:HiddenField runat="server" ID="DefaultFileName" />
<asp:HiddenField runat="server" ID="UseHttpHandlers" Value="false" />
<asp:HiddenField runat="server" ID="UrlNameSufix" Value="false" />

<% if (URL.Value != null && URL.Value.Length > 0) %>
<% { %>
<!-- <script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/jquery-1.9.1.min.js'></script> -->
<!-- <script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/jquery-ui-1.10.3.min.js'></script> -->
<script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/knockout-2.2.1.js'></script>
<script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/turn.min.js'></script>
<script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/modernizr.2.6.2.Transform2d.min.js'></script>
<script type='text/javascript'>
	if (!window.Modernizr.csstransforms) {
		$.ajax({
		    url: '<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=libs/turn.html4.min.js',
		    dataType: 'script',
		    type: 'GET',
		    async: false
		});
	}
</script>
<script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=installableAnnotation.min.js'></script>
<script type='text/javascript'>
	$.fn.jGroupdocsAnnotation.applicationPath = '<%= URL.Value %>/';
</script>
<script type='text/javascript'>
	$.fn.jGroupdocsAnnotation.useHttpHandlers = <%= UseHttpHandlers.Value %>;
</script>
<script type='text/javascript' src='<%= URL.Value %>/document-Annotation/GetScript<%= UrlNameSufix.Value %>?name=GroupdocsAnnotation.all.min.js'></script>
<link rel='stylesheet' type='text/css' href='<%= URL.Value %>/document-Annotation/CSS/GetCss<%= UrlNameSufix.Value %>?name=bootstrap.css' />
<link rel='stylesheet' type='text/css' href='<%= URL.Value %>/document-Annotation/CSS/GetCss<%= UrlNameSufix.Value %>?name=GroupdocsAnnotation.all.min.css' />
<link rel='stylesheet' type='text/css' href='<%= URL.Value %>/document-Annotation/CSS/GetCss<%= UrlNameSufix.Value %>?name=jquery-ui-1.10.3.dialog.min.css' />


<div id="groupdocs-Annotation"></div>
<script type="text/javascript">
    $(function () {
        var localizedStrings = null;
        var thumbsImageBase64Encoded = null;
        $('#groupdocs-Annotation').jGroupdocsAnnotation({
            filePath: '<%= DefaultFileName.Value %>',
            docAnnotationId: 'doc_Annotation1',
            quality: 100,
            showThumbnails: true,
            openThumbnails: true,
            initialZoom: 100,
            zoomToFitWidth: true,
            zoomToFitHeight: false,
            width: <%= Width.Value %>,
            height: <%= Height.Value %>,
            backgroundColor: '',
            showFolderBrowser: true,
            showPrint: true,
            showDownload: true,
            showZoom: true,
            showPaging: true,
            showAnnotationStyleControl: true,
            showSearch: true,
            preloadPagesCount: 0,
            AnnotationStyle: 1,
            supportTextSelection: true,
            usePdfPrinting: false,
            localizedStrings: localizedStrings,
            thumbsImageBase64Encoded: thumbsImageBase64Encoded,
            toolbarButtonsBoxShadowStyle: '',
            toolbarButtonsBoxShadowHoverStyle: '',
            thumbnailsContainerBackgroundColor: '',
            thumbnailsContainerBorderRightColor: '',
            toolbarBorderBottomColor: '',
            toolbarInputFieldBorderColor: '',
            toolbarButtonBorderColor: '',
            toolbarButtonBorderHoverColor: ''
        });
    });
</script> 

<% } %>

