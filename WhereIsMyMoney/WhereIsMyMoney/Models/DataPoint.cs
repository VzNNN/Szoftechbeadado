using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WhereIsMyMoney.Models
{
    public class DataPoint
    {
        public string Argument { get; set; }
        public double Value { get; set; }
        public static ObservableCollection<DataPoint> GetDataPointsGraph1()
        {
            IncomeService incomeService = new IncomeService();

            var asd = incomeService.getIncomes();

            var list = new List<string>();

            foreach (var item in asd)
            {
                list.Add(item.Type);
            }

            var q = list.GroupBy(x => x)
            .Select(g => new { Value = g.Key, Count = g.Count() })
            .OrderByDescending(x => x.Count);

            ObservableCollection<DataPoint> datas = new ObservableCollection<DataPoint>();

            foreach (var x in q)
            {
                datas.Add(new DataPoint { Argument = x.Value, Value = x.Count });
            }

            return datas;
        }

        public static ObservableCollection<DataPoint> GetDataPointsGraph2()
        {
            OutcomeService outcomeService = new OutcomeService();

            var asd = outcomeService.getOutcomes();

            var list = new List<string>();

            foreach (var item in asd)
            {
                list.Add(item.Type);
            }

            var q = list.GroupBy(x => x)
            .Select(g => new { Value = g.Key, Count = g.Count() })
            .OrderByDescending(x => x.Count);

            ObservableCollection<DataPoint> datas = new ObservableCollection<DataPoint>();

            foreach (var x in q)
            {
                datas.Add(new DataPoint { Argument = x.Value, Value = x.Count });
            }

            return datas;
        }

        public static ObservableCollection<DataPoint> GetDataPointsGraph3()
        {
            IncomeService incomeService = new IncomeService();

            var asd = incomeService.getTotalIncomes();

            OutcomeService outcomeService = new OutcomeService();

            var asd2 = outcomeService.getTotalOutcomes();

            return new ObservableCollection<DataPoint>()
            {
                new DataPoint(){Argument = "Incomes", Value = asd},
                new DataPoint(){Argument = "Outcomes", Value = asd2}

            };


        }
        public DataPoint()
        {
            


        }
    }
}
