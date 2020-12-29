using System.Windows;
using System.Windows.Input;
using WhereIsMyMoney.ViewModel;

namespace WhereIsMyMoney
{
    public partial class MainWindow : Window
    {
        private readonly MainViewModel _MainViewModel;
        public MainWindow()
        {
            InitializeComponent();
            _MainViewModel = new MainViewModel();
            DataContext = _MainViewModel;
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Tg_Btn_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void Tg_Btn_Unchecked(object sender, RoutedEventArgs e)
        {

        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {

        }

        private void DayNightSetBtn_Click(object sender, RoutedEventArgs e)
        {
            _MainViewModel.DarkMode = !_MainViewModel.DarkMode;
        }

        private void LanguageSetBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
