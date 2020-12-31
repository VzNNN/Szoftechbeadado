﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WhereIsMyMoney.Models;

namespace WhereIsMyMoney.ViewModel
{
    public class Graph1ViewModel
    {
        public ObservableCollection<DataPoint> Data { get; private set; }

        public Graph1ViewModel()
        {
            this.Data = DataPoint.GetDataPointsGraph1();
        }
    }
}
