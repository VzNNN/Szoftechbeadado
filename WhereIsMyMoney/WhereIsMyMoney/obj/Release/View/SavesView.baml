   M S B A M L   `   `   `  ���� I  EWhereIsMyMoney, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:WhereIsMyMoney.Properties.AppLang!WhereIsMyMoney.Properties.AppLang  9!clr-namespace:WhereIsMyMoney.ViewWhereIsMyMoney.View  #    WhereIsMyMoney.View.SavesView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     E	languages/clr-namespace:WhereIsMyMoney.Properties.AppLang     3local!clr-namespace:WhereIsMyMoney.View     .���   � ColumnDefinitions  �� $��10 ��� $��* ��� $��10 ��� $��* ��� $��10 � � RowDefinitions �� $��60 ��� $��60 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��* ��� $��30 ��� $��40 �.+��� $��0��$��1��$��32(�$��3��$��Center=�$��Center=�$
��Bold"�,   &WhereIsMyMoney.Properties.AppLang.Lang   saves#��Z �� $��1��$��3��$��24(�$��Center=�$��Center=�$
��Bold"�   outcomes#��Z �� $��1��$��1��$��24(�$��Center=�$��Center=�$
��Bold"�   incomes#��Z &   System.Windows.Controls.DataGrid  
��� d �
�������$
��auto��   AutoGenerateColumns .     
IsReadOnly . $��2��$��1��$��6������  �� Path$ Incomes�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 0.32* 
   typeofincome   Header# Z
 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Type+  $	 0.28*    _for# Z  �� *
Duration+  $	 0.18*    monthly# Z  �� *Value+  $	 0.27*    total# Z  �� *Total+  
���  ��
�������$
��auto�� .   . $��2��$��3��$��6������ $ Outcomes�   $	 0.32*    typeofoutcome# Z  �� *Type+  $	 0.28* # Z  �� *
Duration+  $	 0.18* # Z  �� *Value+  $	 0.27* # Z  �� *Total+�� $��8��$��1��$��3��$��Center=�$��Center=�.+��� $��Center=�$��Center=�$��24(����� $ 
MyMoneyStr��� $��9��$��1��$��3��$��20(�#��Z ���� $ calculateCommand�