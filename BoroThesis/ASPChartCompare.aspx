
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ASPChartCompare.aspx.cs" Inherits="ASPChartCompare" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<h3>Sales Comparison Report with Chart using ASP.NET.</h3>
    <table width="100%">
        <tr>
            <td width="35%" valign="top">
                
            </td>
            <td width="50%" valign="top">
                
                <br />
                
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Chart ID="Chart1" runat="server" BorderlineWidth="0" Width="800px" 
                    DataSourceID="SqlDataSource1" Height="450px" Palette="SemiTransparent">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="district" YValueMembers="twoEight"
                            LegendText="2008" IsValueShownAsLabel="false" ChartArea="ChartArea1"
                            MarkerBorderColor="red">
                        </asp:Series>
 
                        <asp:Series Name="Series2" XValueMember="district" YValueMembers="twoNine"
                            LegendText="2009" IsValueShownAsLabel="false" ChartArea="ChartArea1"
                            MarkerBorderColor="green">
                        </asp:Series>
 
                        
                    </Series>
                    <Legends>
                        <asp:Legend Title="Quarter" />
                    </Legends>
                    <Titles>
                        <asp:Title Docking="Bottom" Text="Sales Report Quarterly" />
                    </Titles>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [YearCompare]"></asp:SqlDataSource>
            </td>
        </tr>
    </table> 
    
    </asp:Content>           
        
