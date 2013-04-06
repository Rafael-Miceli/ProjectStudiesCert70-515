using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C10L1Exercise1WebApplication
{
    public class JpegHandler: IHttpHandler  
    {
        public JpegHandler()
        {
        }

        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            //set the MIME type
            context.Response.ContentType = "image/jpeg";

            HttpRequest Request = context.Request;
            HttpResponse Response = context.Response;

            if (Request.RawUrl.ToLower().Contains("foto.jpg"))
            {
                Response.TransmitFile(Request.PhysicalApplicationPath + "/images/foto.JPG");    
            }
            else if (Request.RawUrl.ToLower().Contains("teee.jpg"))
            {
                Response.TransmitFile(Request.PhysicalApplicationPath + "/images/teee.jpg");    
            }
            else
            {
                Response.Write("File not found.");
            }

        }       
    }
}