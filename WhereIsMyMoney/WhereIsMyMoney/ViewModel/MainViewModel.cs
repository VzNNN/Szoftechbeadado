using System.Windows;
using System.Windows.Input;
using WhereIsMyMoney.Command;

namespace WhereIsMyMoney.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        private bool darkMode;
        public bool IsTrue { get; set; }

        public bool DarkMode
        {
            get { return darkMode; }
            set
            {
                darkMode = value;
                
            }
        }

        public MainViewModel(bool isTrue)
        {
            IsTrue = isTrue;
            DarkMode = false;
        }



        private BaseViewModel _selectedViewModel = new ViewModel.HomeViewModel();
        public MainViewModel()
        {
            UpdateViewCommand = new UpdateViewCommand(this);
            LanguageSetCommand = new Command.CommandManager(languageSet);
        }

        public void languageSet()
        {
            if (Properties.Settings.Default.CurrentLanguage == "hu-HU")
                Properties.Settings.Default.CurrentLanguage = "en-GB";
            else
                Properties.Settings.Default.CurrentLanguage = "hu-HU";

            Properties.Settings.Default.Save();
            System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
            Application.Current.Shutdown();
        }

        public BaseViewModel SelectedViewModel
        {
            get { return _selectedViewModel; }
            set { _selectedViewModel = value; }
        }
        public ICommand UpdateViewCommand { get; set; }
        public Command.CommandManager LanguageSetCommand { get; }
        public string CurrentLangMsg { get; set; }
    }
}
