using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace myLogin
{
    public static class loginRegister_mod
    {
        private static async Task<object> getAccessTokenAsync() {
            
            var client = new HttpClient();

            //{5} is user password + security token
            string strPostContent = string.Format(
                "{0}grant_type={1}&client_id={2}&client_secret={3}&username={4}&password={5}",
                constant.strSfLink, constant.strGrantType, constant.strClientId, constant.strClientCecret,
                constant.strUsername, constant.strPwd + constant.strSecurityToken);
            var request = new HttpRequestMessage(HttpMethod.Post, strPostContent);
            request.Headers.Add("", "");
            request.Headers.Add("Cookie", "BrowserId=8fMs9eXPEe2HsIndKYE4Kw; CookieConsentPolicy=0:0; LSKey-c$CookieConsentPolicy=0:0");
            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            Console.WriteLine(await response.Content.ReadAsStringAsync());
            object objAccessToken = await response.Content.ReadAsStringAsync();

            return objAccessToken;
        }
    }
}