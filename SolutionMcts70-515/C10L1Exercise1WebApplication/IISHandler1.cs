using System;
using System.Web;

namespace C10L1Exercise1WebApplication
{
    public class IISHandler1 : IHttpHandler
    {
        /// <summary>
        /// You will need to configure this handler in the web.config file of your 
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpHandler Members

        public bool IsReusable
        {
            // Return false in case your Managed Handler cannot be reused for another request.
            // Usually this would be false in case you have some state information preserved per request.
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

        #endregion
    }
}
