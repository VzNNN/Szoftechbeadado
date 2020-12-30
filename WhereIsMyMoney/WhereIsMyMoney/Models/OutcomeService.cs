﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace WhereIsMyMoney.Models
{
   public class OutcomeService
    {
        private WhereIsMyMoneyDBEntities OutcomeEntities;

        public OutcomeService()
        {
            OutcomeEntities = new WhereIsMyMoneyDBEntities();
        }

        public List<MoneyDTO> getOutcomes()
        {
            List<MoneyDTO> OutcomesDTOs = new List<MoneyDTO>();
            try
            {
                var outcomes = from outcome in OutcomeEntities.Outcomes
                              select outcome;

                foreach (var outcome in outcomes)
                    OutcomesDTOs.Add(new MoneyDTO { Value = (int)outcome.Value, Type = outcome.Type, Duration = (int)outcome.Duration, Total=(int)outcome.Total});
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return OutcomesDTOs;
        }

        public bool addOutcome(MoneyDTO outcome)
        {
            bool IsAdded = false;
            if (outcome.Value.Equals(0) || outcome.Value.Equals(""))
            {
                throw new ArgumentException("You haven't typed anything in the value field.");
            }
            else if (outcome.Value < 1000)
            {
                throw new ArgumentException("Outcome value must be at least 1000.");
            }

            try
            {
                var outc = new Outcomes();
                outc.Value = outcome.Value;
                outc.Type = outcome.Type;
                outc.Duration = outcome.Duration;
                outc.Total = outcome.Value * outcome.Duration;
                OutcomeEntities.Outcomes.Add(outc);
                var NoOfRowsAffected = OutcomeEntities.SaveChanges();
                IsAdded = NoOfRowsAffected > 0;
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return IsAdded;
        }

        public int getTotalOutcomes()
        {
            List<MoneyDTO> TotalDTOs = new List<MoneyDTO>();
            int sum;
            try
            {
                var totals = from outcome in OutcomeEntities.Outcomes
                             select outcome.Total;

                foreach (var total in totals)
                    TotalDTOs.Add(new MoneyDTO { Total = (int)total.Value });
                sum = TotalDTOs.Sum(x => x.Total);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return sum;
        }
    }
}
