<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            <#if alertMessage != "" >
                alert("${alertMessage?js_string}");
            </#if>
            <#if redirectUrl == "SCRIPT_RELOAD_PARENT" >
                <#if redirectParent == "top" >top.<#else>parent.</#if>window.location.reload(true);
            <#elseif redirectUrl == "SCRIPT_CLOSE_POPUP" >
                parent.PopupDialog.closeDialog();
            <#else>
                <#if redirectParent == "true" >parent.<#elseif redirectParent == "top" >top.</#if>location.href = "${redirectUrl}";
            </#if>
        </script>
    </head>
    <body>
    </body>
</html>
