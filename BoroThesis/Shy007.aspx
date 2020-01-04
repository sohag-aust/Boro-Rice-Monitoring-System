<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Shy007.aspx.cs" Inherits="Shy007" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Code Starts from here -->

  <h5 style="margin-left: 200px;" class="w3-jumbo w3-container w3-center w3-animate-zoom">
        Sylhet 2007 
    </h5>
    <div class="w3-container w3-card-4 w3-padding-16 w3-white " style="height: auto;
        margin-top: 30px; margin-left: 300px; margin-right: 120px; padding-top: 30px;">
        <div class="w3-container w3-center w3-animate-zoom">
            <h1>
                Boro Rice Production !</h1>
            <br />
            <p>
                Here is the Graphical Repesentation in Sylhet Region 2007
            </p>
            <br />
            <h3 class="w3-center">
                line Chart
            </h3>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="850px"
                Palette="Fire" BackColor="Gray" BorderlineWidth="6">
                <Series>
                    <asp:Series ChartType="Line" Name="Series1" XValueMember="year" YValueMembers="production">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Sylhet]"></asp:SqlDataSource>
            <p>
                A line chart or line plot or line graph is a type of chart which displays information
                as a series of data points called 'markers' connected by straight line segments.
                It is a basic type of chart common in many fields. It is similar to a scatter plot
                except that the measurement points are ordered (typically by their x-axis value)
                and joined with straight line segments. Here is the line chart. In X axis, year
                is pollted and in Y axis, Production is pollted. Production is messured in Hector.</p>
                <p>Like
                as we can see from this graph that 2013-2014 has the highest rice production year
                and 2009-2010 is the lowest rice production year</p>
            <br />
            <br />
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="year" YValueMembers="production"
                        YValuesPerPoint="2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <p>
                This is pie chart.</p>
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Width="850px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="year" YValueMembers="production">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <p>
                Column Chart.</p>
        </div>
    </div>
    <br />
    <br />

</asp:Content>

