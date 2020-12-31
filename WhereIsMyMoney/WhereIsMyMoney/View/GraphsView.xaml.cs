using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WhereIsMyMoney.View
{
    /// <summary>
    /// Interaction logic for GraphsView.xaml
    /// </summary>
    public partial class GraphsView : UserControl
    {
        public GraphsView()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Graph1 graph1 = new Graph1();
            graph1.Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Graph3 graph3 = new Graph3();
            graph3.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Graph2 graph2 = new Graph2();
            graph2.Show();
        }
    }
}
