&НаКлиенте
Процедура ОтветственныйПриИзменении(Элемент)
         Объект.Должность=ПолучитьДолжность();
КонецПроцедуры

&НаСервере
Функция ПолучитьДолжность()
	Возврат Объект.Ответственный.Должность;
КонецФункции   

&НаКлиенте
Процедура ТабельФИОПриИзменении(Элемент)
	Строчка=Элементы.Табель.ТекущиеДанные;  
    Строчка.Должность=Получить(Строчка.ФИО);
	Строчка.Ставка=ПолучитьСтавку(Строчка.ФИО);
КонецПроцедуры

&НаСервереБезКонтекста
Функция Получить(ФИО)
Возврат ФИО.Должность;  
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьСтавку(Должность)
	Возврат Должность.Ставка;
КонецФункции



&НаКлиенте
Процедура ТабельДень14ПриИзменении(Элемент)
			Строчка=Элементы.Табель.ТекущиеДанные;   
Кол=0;
Если Строчка.День=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День1=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День2=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День3=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День4=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День5=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День6=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День7=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День8=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День9=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День10=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День11=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День12=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День13=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День14=Истина Тогда
	Кол=Кол+1;
КонецЕсли;


Строчка.ИтогоПолмесяца=Кол;
КонецПроцедуры

&НаКлиенте
Процедура ТабельДень15ПриИзменении(Элемент)
			Строчка=Элементы.Табель.ТекущиеДанные;   
Кол=0;    

Если Строчка.День15=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День16=Истина Тогда
	Кол=Кол+1;
КонецЕсли;


Если Строчка.День17=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День18=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День19=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День20=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День21=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День22=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День23=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День24=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День25=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День26=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День27=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День28=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День29=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Если Строчка.День30=Истина Тогда
	Кол=Кол+1;
КонецЕсли;

Строчка.ИтогоВтораяПоловина=Кол;
КонецПроцедуры







