using Microsoft.VisualStudio.TestTools.UnitTesting;
using WhereIsMyMoney.ViewModel;
using System;

namespace WhereIsMyMoney.Test
{
    [TestClass]
    public class ExchangeViewModelTest
    {
        [TestMethod]
        public void CallculateSuccesCADtoHUF()
        {
            //arrange
            var currentcad = 1.5633;
            var currenthuf = 363.89;
            var exVm = new ExchangesViewModel();
            var expected = " 2327,7 HUF";
            exVm.Changeable = 10;

            //act
            var result = exVm.Callculate(currentcad, currenthuf, "HUF");

            //assert
            Assert.AreEqual(expected, result);
        }
        [TestMethod]
        public void CallculateWithNonSpecificatedPropCADtoHUF()
        {
            //arrange
            var currentcad = 1.5633;
            var currenthuf = 363.89;
            var exVm = new ExchangesViewModel();
            var expected = " 2327,7 HUF";
            

            //act
            var result = exVm.Callculate(currentcad, currenthuf, "HUF");

            //assert
            Assert.AreNotEqual(expected, result);
        }
    }
}
