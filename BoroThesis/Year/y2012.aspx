<%@ Page Title="" Language="C#" MasterPageFile="~/Year/MasterPage.master" AutoEventWireup="true" CodeFile="y2012.aspx.cs" Inherits="Year_y2012" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<!--work start from here-->

 <h5 style="margin-left: 200px;" class="w3-jumbo w3-container w3-center w3-animate-zoom">
        Bangladesh 2012
    </h5>
    <div class="w3-container w3-card-4 w3-padding-16 w3-white " style="height: auto;
        margin-top: 30px; margin-left: 300px; margin-right: 120px; padding-top: 30px;">
        <div class="w3-container w3-center w3-animate-zoom">
            <h1>
                Boro Rice Production !</h1>
            <br />
            <p>
                Here is the Graphical Repesentation in Full Bangladesh
            </p>
           
            <h3 class="w3-center w3-xxlarge">
                Total Production 5202866.61 hector.
            </h3>
            
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Width="850px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="division" YValueMembers="production">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Ban2012]"></asp:SqlDataSource>
            <p>
                <asp:Button ID="Button1" runat="server" BackColor="#006600" 
                    BorderColor="#006600" Text="Max" Width="32px" /> Dhaka
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Red" 
                    Text="Min" Width="32px" /> Barisal
            </p>
            <p>
                A column chart or column plot or column graph is a type of chart which displays information
                as a series of data points called 'markers' connected by straight line segments.
                It is a basic type of chart common in many fields. It is similar to a scatter plot
                except that the measurement points are ordered (typically by their x-axis value)
                and joined with straight column segments. Here is the column chart. In X axis, year
                is plloted and in Y axis, Production is plloted. Production is messured in Hector.</p>
                <p>Like
                as we can see from this graph that Dhaka has the highest rice production year
                and Barisal is the lowest rice production year</p>
            <br />
            <br />

            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" 
                Width="500px" Height="400px" Palette="Pastel">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="division" YValueMembers="production"
                        YValuesPerPoint="2" ChartArea="ChartArea1" Legend="Dhaka" 
                        IsValueShownAsLabel="True">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <Area3DStyle Enable3D="True" Inclination="35" />
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Dhaka">
                    </asp:Legend>
                </Legends>
            </asp:Chart>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="select production, (count(production) * 100 / (select count(*) from Ban2007)) as pro from Ban2007 group by production"></asp:SqlDataSource>

            <p>
                &nbsp;</p>
            
            <p>
                &nbsp;</p>
        </div>
    </div>
    <br />
    <br />

</asp:Content>

