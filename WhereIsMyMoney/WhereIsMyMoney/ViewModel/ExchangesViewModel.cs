using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WhereIsMyMoney.Command;
using WhereIsMyMoney.Models;
using System.Web;
using System.Collections.ObjectModel;
using System.Net.Http;
using Newtonsoft.Json;
using Nito.AsyncEx;

namespace WhereIsMyMoney.ViewModel
{
    public class ExchangesViewModel : BaseViewModel
    {
        public CommandManager ExchangeCommand { get; }

        public Dictionary<string, double> Rates;
        public ObservableCollection<string> dropdown { get; set; }
        public double Changeable { get; set; }
        public string From { get; set; }
        public string To { get; set; }


        public string testdb { get; set; }


        public ExchangesViewModel()
        {


            var result = AsyncContext.Run(GetCurr);
            Rates = DeserializetoList(result);
            dropdown = makeDropdownBinding(Rates);

            ExchangeCommand = new CommandManager(Exchange);


        }

        public async Task<string> GetCurr()
        {

            HttpClient client = new HttpClient();
            string response = await client.GetStringAsync("https://api.exchangeratesapi.io/latest");

            return response;
        }
        public Dictionary<string, double> DeserializetoList(string ret)
        {

            var result = JsonConvert.DeserializeObject<ExchangeDTO>(ret);

            return result.Rates;
        }
        public ObservableCollection<string> makeDropdownBinding(Dictionary<string, double> Rates)
        {
            ObservableCollection<string> dropdown = new ObservableCollection<string>();

            foreach (var item in Rates)
            {
                dropdown.Add(item.Key);
            }

            return dropdown;
        }

        public void Exchange()
        {
            double from = 0;
            double to = 0;
            foreach (var item in Rates)
            {
                if (item.Key == From)
                {
                     from = item.Value;
                }
                if (item.Key == To)
                {
                     to = item.Value;
                }
                
            }

            
            testdb = " "+ Math.Round(Changeable / from * to,2)+" "+ To; 

        }

    }
}
