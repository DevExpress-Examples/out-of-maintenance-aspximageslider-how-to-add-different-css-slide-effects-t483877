<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
        function OnActiveItemChanged(s, e) {
            var element = s.GetMainElement();
            var className = comboSelectEffect.GetValue();
            element.classList.remove(className);
            setTimeout(function () {
                element.classList.add(className);
            }, 10);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxComboBox ID="comboSelectEffect" runat="server" ValueType="System.String"
            AutoPostBack="true" ClientInstanceName="comboSelectEffect" OnSelectedIndexChanged="comboSelectEffect_SelectedIndexChanged">
            <Items>
                <dx:ListEditItem Text="Zoom" Value="zoomEffect" Selected="true" />
                <dx:ListEditItem Text="Rotate" Value="rotateEffect" />
                <dx:ListEditItem Text="Skew" Value="skewEffect" />
                <dx:ListEditItem Text="Blur (except IE)" Value="blurEffect" />
            </Items>
        </dx:ASPxComboBox>
        <dx:ASPxImageSlider ID="imageSlider" runat="server" ImageSourceFolder="~\landscapes">
            <SettingsSlideShow AutoPlay="true" />
            <SettingsImageArea ImageSizeMode="FillAndCrop" AnimationType="Fade" />
            <ClientSideEvents ActiveItemChanged="OnActiveItemChanged" />
        </dx:ASPxImageSlider>
    </form>
</body>
</html>
