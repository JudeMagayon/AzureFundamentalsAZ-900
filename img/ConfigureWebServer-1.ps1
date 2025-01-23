Configuration DeployWebPage 
{
    node ("localhost") 
    {
        WindowsFeature IIS 
        {
            Ensure = "Present"
            Name = "Web-Server"
        }

        File WebPage 
        {
            Ensure = "Present"
            DestinationPath = "C:\inetpub\wwwroot\index.html"
            Force = $true
            Type = "File"
            Contents = "<html><body><img src='https://github.com/JudeMagayon/AzureFundamentalsAZ-900/raw/master/img/HeyJude.png'/><h1>Hey Looks like my AZ-900 training is going great!</h1></body></html>"
        }
    }
}