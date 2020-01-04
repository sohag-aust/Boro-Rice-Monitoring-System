<%@ Page Language="C#" AutoEventWireup="true" CodeFile="khulnaProduction.aspx.cs" Inherits="admin_khulnaProduction" %>


<!DOCTYPE html>
<html>
<head>
  <title>Production in Khulna Division</title>

    <style type="text/css">
        .style1
        {
            width: 44%;
            height: 107px;
        }
        .style3
        {
            width: 202px;
            height: 57px;
        }
        .style4
        {
            height: 57px;
        }
        .style5
        {
            width: 202px;
            height: 61px;
        }
        .style6
        {
            height: 61px;
        }
    </style>

    </head>
<body>

 <form id="f1" runat="server">

	<div align="center" 
        style="color: #FF33CC; font-size: xx-large; font-style: oblique; font-weight: bold; font-family: 'Times New Roman';">
        Upload Data To Database
    </div>

    <div>
        
        <br />
        <table class="style1">
            <tr>
                <td bgcolor="#FF3399" class="style5">
                    Upload a Excel File Here</td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="49px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                        Text="Upload" Width="136px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        
    </div>
</form>
</body>
</html>