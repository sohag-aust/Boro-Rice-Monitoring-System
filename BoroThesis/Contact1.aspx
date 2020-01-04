<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact1.aspx.cs" Inherits="Contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scasle=1">
        <style type="text/css">
            *
            {
                box-sizing: border-box;
            }
            
            body
            {
                background-color: #aaa;
                padding: 40px 20px 30px 20px;
                font-size: 20px;
                text-align: center;
            }
            
            /* Create three equal columns that floats next to each other */
            .column
            {
                float: left;
                text-align: center;
                width: 33.33%;
                padding: 10px;
                height: 300px; /* Should be removed. Only for demonstration */
            }
            
            /* Clear floats after the columns */
            .row:after
            {
                content: "";
                display: table;
                clear: both;
            }
            .centered
            {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }
            img
            {
                width: 80px;
                border-radius: 40%;
                background-color: #aab7b8;
            }
        </style>
    </head>
    <body>
        <h2 class="h1-responsive font-weight-bold text-center my-4">
            Contact us</h2>
        <!--Section description-->
        <p class="text-center w-responsive mx-auto mb-5">
            Do you have any questions?<br />
            Please do not hesitate to contact us directly. Our team will come back to you within
            a matter of hours to help you.</p>
        <div class="row">
            <div class="column">
                <img src="address.png" />
                <h2>
                    ADDRESS</h2>
                <h4>
                    Ahsanullah University of Science and Technology</h4>
                <p>
                    141 & 142, Love Road<br />
                    Dhaka 1208</p>
            </div>
            <div class="column">
                <img src="phone.png" />
                <h2>
                    PHONE</h2>
                <h4>
                    Md.Mehedi Hasan</h4>
                <p>
                    01759-564926</p>
                <h4>
                    Md.Rumman Ali</h4>
                <p>
                    01686-514988</p>
            </div>
            <div class="column">
                <img src="email.png" />
                <h2>
                    EMAIL</h2>
                <h4>
                    Md.Mehedi Hasan</h4>
                <p>
                    mhashik.ashik@gmail.com</p>
                <h4>
                    Md.Rumman Ali</h4>
                <p>
                    rummanali@gmail.com</p>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
