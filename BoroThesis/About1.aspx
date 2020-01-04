<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About1.aspx.cs" Inherits="Default2" %>

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
                    Our goal is to develop a “rice monitoring system” for the Bangladesh government.
                    The monitoring system forecasts the total amount of rice will be produced in that
                    year. And most importantly the result will be published in the sowing period. This
                    can be a remarkable opportunity for the government to take meaningful steps for
                    upcoming situation. Processing the satellite images in ArcGIS and Creating a database
                    from those images, the system gets the data of previous years' production from the
                    database. Using this data and with the help of an algorithm, the system gives an
                    approximate early predicted result of that year’s produced rice. Basically, it's
                    a web-based monitoring system that shows the total amount of produced rice of a
                    particular year or a particular region or the whole country. It also shows a comparison
                    between two particular regions or two different years. All the information and comparisons
                    are shown in the graph. There are many other features like area-search, year-search,
                    improvement, and deterioration.</p>
            </div>
        </div>
    </body>
    </html>

</asp:Content>

