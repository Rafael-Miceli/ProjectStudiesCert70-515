<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FancyBoxExample.aspx.cs" Inherits="JQueryExamplesWebApplication.FancyBoxExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-latest.pack.js" type="text/javascript"></script>
    <link href="FancyBox/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <script src="FancyBox/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="FancyBox/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            /* This is basic - uses default settings */

            $("a#single_image").fancybox();

            /* Using custom settings */

            $("a#inline").fancybox({
                'hideOnContentClick': true
            });

            /* Apply fancybox to multiple items */

            $("a.group").fancybox({
                'transitionIn': 'elastic',
                'transitionOut': 'elastic',
                'speedIn': 600,
                'speedOut': 200,
                'overlayShow': false
            });

        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a id="single_image" href="images/1_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">
            <img src="images/1_s.jpg" alt="" /></a>
    </div>
    <br />
    <br />
    <div>
        <a id="inline" href="#data">This shows content of element who has id="data"</a>
        <div style="display: none">
            <div id="data">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
        </div>
    </div>
    <br />
    <br />
    <div>
        <a href="http://www.example?iframe">This goes to iframe</a> or <a class="iframe"
            href="http://www.example">This goes to iframe</a>
    </div>
    <br />
    <br />

    <div>
        <a href="http://www.example/data.php">This takes content using ajax</a>
    </div>

    </form>
</body>
</html>
