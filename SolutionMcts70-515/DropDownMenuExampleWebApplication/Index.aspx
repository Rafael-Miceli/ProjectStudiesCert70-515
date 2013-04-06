<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DropDownMenuExampleWebApplication.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*
        Menu 1

        ul
        {
            margin: 0;
            padding: 0;
            list-style: none;         
        }    
        
        ul li
        {
            float:left;
            position:relative;
        }
        
        li ul
        {
            position: absolute;
            left: 149px;
            top: 0;
            display: none;    
        }
        
        ul li a 
        {
	        display: block;
	        text-decoration: none;
	        color: #777;
	        background: #fff;
	        padding: 5px;
	        border: 1px solid #ccc;
	        border-bottom: 0;
	    }
	    
	    li:hover ul
	    {
	        display: block;
	    }
        */
        
        
        
        #coolMenu,
        #coolMenu ul 
        {    
            list-style: none;
        }
                     
        #coolMenu 
        {
            float: left;
        }
        
        #coolMenu > li 
        {    
            float: left;
        }
        
        #coolMenu li a 
        {
            display: block;
            height: 2em;    
            line-height: 2em;    
            padding: 0 0.5em;    
            text-decoration: none;
        }
        
        #coolMenu ul 
        {    
            position: absolute;    display: none;z-index: 999;
        }
        
        #coolMenu ul li a 
        {    
            width: 80px;
        }
        
        #coolMenu li:hover ul 
        {    
            display: block;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; height:400px; margin-left:auto; margin-right:auto; border:2px solid black">
           <%-- <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a>
                    <ul>
                        <li><a href=" #">History</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Offices</a></li>
                    </ul>
                </li>
                <li><a href="#">Services</a>
                    <ul>
                        <li><a href="#">Web Design</a></li>
                        <li><a href="#">Internet Marketing</a></li>
                        <li><a href="#">Hosting</a></li>
                        <li><a href="#">Domain Names</a></li>
                        <li><a href="#">Broadband</a></li>
                    </ul>
                </li>
                <li><a href="#">Contact Us</a>
                    <ul>
                        <li><a href="#">United Kingdom</a></li>
                        <li><a href="#">France</a></li>
                        <li><a href="#">USA</a></li>
                        <li><a href="#">Australia</a></li>
                    </ul>
                </li>
            </ul>--%>        

            <div style="margin-left:auto; margin-right:auto">
            <ul id="coolMenu">
                <li><a href="#">Lorem</a></li>
                <li><a href="#">Mauricii</a></li>
                <li><a href="#">Periher</a>
                    <ul>
                        <li><a href="#">Hellenico</a></li>
                        <li><a href="#">Genere</a></li>
                        <li><a href="#">Indulgentia</a></li>
                    </ul>
                </li>
                <li><a href="#">Tyrio</a></li>
                <li><a href="#">Quicumque</a></li>
            </ul>
            </div>


        </div>
    </form>
</body>
</html>
