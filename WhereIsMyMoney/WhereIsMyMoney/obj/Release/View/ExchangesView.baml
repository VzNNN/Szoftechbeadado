   M S B A M L   `   `   `  ���� I  EWhereIsMyMoney, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:WhereIsMyMoney.Properties.AppLang!WhereIsMyMoney.Properties.AppLang  9!clr-namespace:WhereIsMyMoney.ViewWhereIsMyMoney.View  '    !WhereIsMyMoney.View.ExchangesView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     E	languages/clr-namespace:WhereIsMyMoney.Properties.AppLang     3local!clr-namespace:WhereIsMyMoney.View     .���   � ColumnDefinitions  �� $
��15px ��� �� $
��50px ��� �� $
��15px � � RowDefinitions �� $
��15px ��� �� $
��50px ��� �� $��30 ��� $��40 �.+��� $��1��$��1��.+��� $
��Bold"�$��20(�$��Center=�$��Center=�,   &WhereIsMyMoney.Properties.AppLang.Lang   from#��Z �� -    ��Name$ fromdropdown��$��20(�$��5��$��1�� �� SelectedIndex$ 0�� �� SelectedItem ��  �� Path$
 From� �� Mode$ TwoWay=����� *
dropdown+�� $��3��$��20(�$��1��$��3��$��Center=�$��Center=����� $ testdb��� $��1��$��3��.+��� $
��Bold"�$��20(�$��Center=�$��Center=�	   to#��Z �� -   $ 
todropdown��$��20(�$��5��$��1��$ 0�� �� $ To�$ TwoWay=����� *
dropdown+�� $��20(�$��2��$��1��$��3������ $ 
Changeable�$ TwoWay=��� $��20(�$��1��$��4��$��3��	   exchangebttn#��Z	 ���� $ ExchangeCommand�