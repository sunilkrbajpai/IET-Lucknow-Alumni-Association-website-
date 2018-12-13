using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class captchagenerator
{
    public string getcode()
    {
        string captcha = "";
        Random rd = new Random();
        int n1 = rd.Next(65,90);
        char ch1 = (char)n1;
        int n2 = rd.Next(97, 122);
        char ch2 = (char)n2;
        int n3 = rd.Next(48, 57);
        char ch3 = (char)n3;
        int n4 = rd.Next(65, 90);
        char ch4 = (char)n4;
        int n5 = rd.Next(48, 57);
        char ch5 = (char)n5;
        int n6 = rd.Next(97, 122);
        char ch6 = (char)n6;
        captcha = captcha + ch1 + ch2 + ch3 + ch4 + ch5 + ch6;
        return captcha;
    }
}