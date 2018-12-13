using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
/// <summary>
/// Summary description for smssender
/// </summary>
public class smssender
{
    string username, userkey, mysenderid;
	public smssender()
	{
		username="Brijesh";
            userkey="8620e45a26XX";
        mysenderid="spilko";

	}
    public bool sendmysms(string mobileno, string msg)
    {
        string APIURL = "http://sms.bulkssms.com/submitsms.jsp?user='" + username + "'&key='" + userkey + "'&mobile='" + mobileno + "'&senderid='" + mysenderid + "'&accusage=1";
        WebClient wc = new WebClient();
        try
        {
            wc.DownloadString(APIURL);
            return true;

        }
        catch {
            return false;
        }
    
    
    }

}