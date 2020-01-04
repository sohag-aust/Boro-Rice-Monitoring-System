<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="barAll.aspx.cs" Inherits="barAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- Code Start From here -->

<h5 style="margin-left: 200px;" class="w3-jumbo w3-container w3-center w3-animate-zoom">
        Barisal
    </h5>
    <div class="w3-container w3-card-4 w3-padding-16 w3-white " style="height:auto;
        margin-top: 30px; margin-left: 300px; margin-right: 120px; padding-top: 30px;">
        <div class="w3-container w3-center w3-animate-zoom">
            <h1>
                Boro Rice Production !</h1>
            <br />
            <p>
                Here is the Graphical Repesentation of Barisal
            </p>
            <br />
            <h3 class="w3-center">
                
            </h3>

            
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Barisal]"></asp:SqlDataSource>

            <p>
                
                <asp:Button ID="Button1" runat="server" BackColor="#006600" 
                    BorderColor="#006600" Text="Max" Width="35px" /> 2010-2011
                
            </p>
            <p>
                
                <asp:Button ID="Button2" runat="server" BackColor="#CC0000" 
                    BorderColor="#CC0000" Text="Min" Width="35px" /> 2009-2010
                 
            </p>

            <p>
                A column chart or column plot or column graph is a type of chart which displays information
                as a series of data points called 'markers' connected by straight line segments.
                It is a basic type of chart common in many fields. It is similar to a scatter plot
                except that the measurement points are ordered (typically by their x-axis value)
                and joined with straight column segments. Here is the column chart. In X axis, year
                is pollted and in Y axis, Production is plloted. Production is messured in Hector.</p>
            <br />
            <br />

            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" 
                Height="400px" Palette="Pastel" Width="500px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="year" YValueMembers="production"
                        YValuesPerPoint="2" IsValueShownAsLabel="True" IsXValueIndexed="True" 
                        Legend="Legend1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <Area3DStyle Enable3D="True" />
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Legend1">
                    </asp:Legend>
                </Legends>
            </asp:Chart>

            <p>
                </p>
            
            <p>
                </p>
        </div>
    </div>
    <br />
    <br />

</asp:Content>

