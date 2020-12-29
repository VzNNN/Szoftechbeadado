using System.Threading;
using System.Windows;

namespace WhereIsMyMoney
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            var lang = WhereIsMyMoney.Properties.Settings.Default.CurrentLanguage;
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lang);
            base.OnStartup(e);
        }
    }
}
