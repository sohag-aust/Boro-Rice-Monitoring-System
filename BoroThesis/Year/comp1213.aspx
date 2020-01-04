<%@ Page Title="" Language="C#" MasterPageFile="~/Year/MasterPage.master" AutoEventWireup="true" CodeFile="comp1213.aspx.cs" Inherits="Year_comp1213" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!--work start from here-->

 <h5 style="margin-left: 200px;" class="w3-jumbo w3-container w3-center w3-animate-zoom">
        Bangladesh 2012 - 2013
    </h5>
    <div class="w3-container w3-card-4 w3-padding-16 w3-white " style="height: auto;
        margin-top: 30px; margin-left: 300px; margin-right: 120px; padding-top: 30px;">
        <div class="w3-container w3-center w3-animate-zoom">
            <h1>
                Comparison of Boro Rice Production !</h1>
            <br />
            <p>
                Here is the Graphical Repesentation in Comparison of production in Full Bangladesh (2012 - 2013).
            </p>
           
            <h3 class="w3-center w3-xxlarge">
                
            </h3>
            
            <!-- Start -->

            <asp:Chart ID="Chart1" runat="server" BorderlineWidth="0" Width="800px" 
                    DataSourceID="SqlDataSource1" Height="450px" Palette="SemiTransparent">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="district" YValueMembers="prevYear"
                            LegendText="2012" IsValueShownAsLabel="false" ChartArea="ChartArea1"
                            MarkerBorderColor="red">
                        </asp:Series>
 
                        <asp:Series Name="Series2" XValueMember="district" YValueMembers="currYear"
                            LegendText="2013" IsValueShownAsLabel="false" ChartArea="ChartArea1"
                            MarkerBorderColor="green">
                        </asp:Series>
 
                        
                    </Series>
                    <Legends>
                        <asp:Legend Title="Period" />
                    </Legends>
                    <Titles>
                        <asp:Title Docking="Bottom" Text="" />
                    </Titles>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <br />


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Year1213]"></asp:SqlDataSource>
            

            <br />
            
            <asp:Button ID="Button1" runat="server" BorderColor="Red" ForeColor="Red" 
                Text="Deterioration" Width="130px" />  Barisal
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" BorderColor="#006600" 
                ForeColor="#009900" Text="Improvement" Width="130px" /> Sylhet, Dhaka, Khulna, Chittagong, Rajshahi, Rangpur

            

</asp:Content>

