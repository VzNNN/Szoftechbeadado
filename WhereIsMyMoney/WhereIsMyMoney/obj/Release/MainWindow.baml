   M S B A M L   `   `   `  ���� I  EWhereIsMyMoney, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WhereIsMyMoneyWhereIsMyMoney  U/clr-namespace:WhereIsMyMoney.Properties.AppLang!WhereIsMyMoney.Properties.AppLang      WhereIsMyMoney.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.2, Version=20.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:WhereIsMyMoney     E	languages/clr-namespace:WhereIsMyMoney.Properties.AppLang       � Title$  
MainWindow��$	��600��$	��800�� � 
ResizeMode$ NoResize=� � WindowStyle$ 
ToolWindow=� � WindowStartupLocation$ CenterScreen=� � 	Resources     WhereIsMyMoney.BoolToBrush   BoolToBrushConverter  tb_mouse_over �� ImageSource  
font_style �� 
TargetType �� Property �� Value  tt_style  CloseBtn_MouseOver  	Close_btn	 �� 
TargetType
 ��Name J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  DayNightSetBtn_MouseOver  DayNightSetBtn_btn  LanguageSetBtn_MouseOver 	 LanguageSetBtn_btn 
 tb_style��%"  &	        &	      &	 %     &	 �     &	 U    &	 r    7  &	     &	 ,    7  &	 �    &		 �    7  &	
 ~    7  7  7  7    �� $ Resources/toggle.png���� " ��.���  � ��$$ Fonts/Roboto-Light.ttf #Roboto)���  � ��$ Center=���  � ��$
 Left=���  � ��
 �������  � ��$ 20(��� " _�.���  �@_�	Placement$ Right=���  � ��$ 40����  � ��$	 100����  � ��$ 20,0,0,0q���  � �� �#4A5668��  � ��
 ���� ��  � ��
 �������  � ��$ 16(���  �@_�PlacementRectangle$ 60,0,0,0���  �@_�HorizontalOffset$ 15����  �@_�VerticalOffset$ 6����  �@_�HasDropShadow . ��  � ��$ Center=��� $ Resources/off.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z�� .  P�  �@J�IsMouseOver . . ��� $ button��8    � ���� $ Resources/sunmoon.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z�� .  P�  �@J�IsMouseOver . . ��� $ button��8    � ���� $ Resources/enghun.png���� " ��.���  � �� �� "	 ��.R��� $
 button��$��0q�#��z�� .  P�  �@J�IsMouseOver . . ��� $ button��8    � ���� " d�.���  � �� �� "	 d�.R��� $
 border��#��z��#��z�� .  P�  �@J�IsMouseOver . . ��� $ border��8    � ���� $ border��8   � ��P�  �@d�	IsChecked$
 trueY�. ��� $ border��8   � ���� $ border��8   � ��.��� .+�� ���� *
DarkMode+ �� UpdateSourceTrigger$ PropertyChanged=� �� 	Converter# [  .+��  � ColumnDefinitions �� $��* ��� $��60 ��� $��60 ��� $��60 ��� $��5 � � RowDefinitions �� $��5 ��� $��60 ��� $��* �.+��� $��0��$��2��$��5��$��70,0,0,0q����� *SelectedViewModel+�� -    ��Name$ CloseBtn��$��3��$��1��$��40��$��40��$��0q�#��[ $��10q����� $ Resources/off_off.png���� -   $ DayNightSetBtn��$��2��$��1��$��40��$��40��$��0q�#��[ $��10q����� $ Resources/moon.png���� -   $ LanguageSetBtn��$��1��$��1��$��40��$��40��$��0q�#��[	 $��10q�����  �� Path$ LanguageSetCommand����� $ Resources/huneng.png��� -    �Name$ nav_pnl��$
��Left=�$��65�����#2E333A.+��� -    ��Name$ st_pnl��.+�� $��90��.+��� $��1��$��0��$��
73,-20,0,0q�,   &WhereIsMyMoney.Properties.AppLang.Lang   menu#��Z 
�������$��22(�
������ $
��Left=�$��Center=�#��[  J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 10Q�   ShadowDepth$ 1Q�   	Direction$	 -90Q�   Color$ White��d� -    d�Name$ Tg_Btn��$��0��$��Center=�$
��Left=�$��
18,-20,0,0q�$��30��$��30��$��0q�#��[
 ���� $ Resources/toggle_off.png�� j� Stretch$
 Fill=�  � Triggers  :� ! :� RoutedEvent$! ToggleButton.Unchecked��.[��� .���� -   " ��Name$" HideStackPanel��.��W� # �� 
TargetName$# nav_pnl��$ �� TargetProperty$$ Width�% g� 	BeginTime$% 0:0:0X�& W� From$	& 230X�	' W� To$' 65X�( g� Duration$( 0:0:0.2D�:� $! ToggleButton.Checked��.[��� .���� -   $" ShowStackPanel��.��W� $# nav_pnl��$$ Width�$% 0:0:0X�$& 65X�$	' 230X�$( 0:0:0.3D��� -	   ) ��Name$) LV��
������ 
������ $��Disabled=�.@��� -
   $
��Left=�$��0,0,0,15q�.���� * �� Orientation$* 
Horizontal=�$	��230��.+��� $��Resources/home.png��$
��Fill=�$��6,0,0,0q�+ J� InputBindings+ d� , d� Gesture$, 	LeftClicka�- �� CommandParameter$
- Home��. �� Command. �� *UpdateViewCommand+�� /   home#��Z/ $��25,0,0,0q�#��[ 0 � ToolTip0 _� -   1 _�Name$1 tt_home��#��Z/ #��[ �� -   $
��Left=�$��0,0,0,15q�.���� $* 
Horizontal=�$	��230��.+��� $��Resources/income.png��$
��Fill=�$��6,0,0,0q�+ d� $, 	LeftClicka�$- Incomes��. �� *UpdateViewCommand+�� 2   incomes#��Z2 $��25,0,0,0q�#��[ 0 _� -   $1 
tt_incomes��#��Z2 #��[ �� -   $
��Left=�$��0,0,0,15q�.���� $* 
Horizontal=�$	��230��.+��� $��Resources/outcome.png��$
��Fill=�$��6,0,0,0q�+ d� $, 	LeftClicka�$- Outcomes��. �� *UpdateViewCommand+�� 3   outcomes#��Z3 $��25,0,0,0q�#��[ 0 _� -   $1 
tt_outcome��#��Z3 #��[ �� -   $
��Left=�$��0,0,0,15q�.���� $* 
Horizontal=�$	��230��.+��� $��Resources/save.png��$
��Fill=�$��6,0,0,0q�+ d� $, 	LeftClicka�$- Saves��. �� *UpdateViewCommand+�� 4   saves#��Z4 $��25,0,0,0q�#��[ 0 _� -   $1 tt_saves��#��Z4 #��[ �� -   $
��Left=�$��0,0,0,15q�.���� $* 
Horizontal=�$	��230��.+��� $��Resources/graph.png��$
��Fill=�$��6,0,0,0q�+ d� $, 	LeftClicka�$- Graphs��. �� *UpdateViewCommand+�� 5   graphs#��Z5 $��25,0,0,0q�#��[ 0 _� -   $1 	tt_graphs��#��Z5 #��[ �� -   $
��Left=�$��0,0,0,15q�.���� $* 
Horizontal=�$	��230��.+��� $��Resources/change.png��$
��Fill=�$��6,0,0,0q�+ d� $, 	LeftClicka�$- 	Exchanges��. �� *UpdateViewCommand+�� 6   exchange#��Z6 $��25,0,0,0q�#��[ 0 _� -   $1 tt_exchange��#��Z6 #��[ ���� " ��.���  � �� �� "	 ��.R��� $
 Bd��$��50��#��z��#��z��#��z��7 �� Padding#7 z�� . ._��� #��z��# z #��z�� ]� 8 ]� 
Conditions8 �� 9 �� Property9 �@J�IsMouseOver: �� Value: . ./��� $ Bd�� � �� �#404D5B�� $ Bd�� � �� �#404D5B�� $��Bottom=�$��0,0,0,30q�$��Center=�
���  ��$��	ExtraBold"�;   lang#��Z; 