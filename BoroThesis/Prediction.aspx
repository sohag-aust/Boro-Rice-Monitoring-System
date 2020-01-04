<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Prediction.aspx.cs" Inherits="Prediction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <style type="text/css">
        
        *{ margin: 0px;
           padding: 0px;
        }
        body
        {
            background: #aaa;
            padding: 40px 20px 30px 20px;
                font-size: 20px;
                text-align: center;
        }
        .column
            {
                margin: 0 auto;
                text-align: center;
                width: 1000px;
                height: 900px;
                padding: 40px;
            }
            .row:after
            {
                content: "";
                clear: both;
                display: block;
            }
            P
            { 
                text-align: justify;
                font-family: Pacifico, Calibri;
                font-size: 30px;
                }
            
                
    </style>
    </head>
    <body>
        <div class="row">
            <div class="column">
                <h1>
                    About</h1>
                <p>
                    The current estimation process of rice production is a primitive process.
                     The only way of collecting data about rice production is by manually taking
                      production measurements from the ground and then doing statistical calculations.
                       Later all the results are collected and published in the "Statistical Year 
                       Books of Bangladesh" which is published by Bangladesh Bureau of Statistics (BBS).
                        However, the process is very time consuming and based on a limited data. Most
                         important thing is that, ﬁnal result is only available at the end of the year 
                         there is no scope for early prediction. So, we can say that the method we use
                          for collecting rice data is not an ideal one.</p>
            </div>
        </div>
    </body>
    </html>
</asp:Content>

