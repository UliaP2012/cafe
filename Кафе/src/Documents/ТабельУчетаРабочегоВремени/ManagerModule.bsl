
// Процедура заполняет табличный документ для печати.
//
// Параметры:
//	ТабДок - ТабличныйДокумент - табличный документ для заполнения и печати.
//	Ссылка - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
Процедура ПечатьТабеля(ТабДок, Ссылка) Экспорт
	//{{_КОНСТРУКТОР_ПЕЧАТИ(ПечатьТабеля)
	Макет = Документы.ТабельУчетаРабочегоВремени.ПолучитьМакет("ПечатьТабеля");
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ
		|	ТабельУчетаРабочегоВремени.Номер,
		|	ТабельУчетаРабочегоВремени.Дата,
		|	ТабельУчетаРабочегоВремени.Ответственный,
		|	ТабельУчетаРабочегоВремени.Должность,
		|	ТабельУчетаРабочегоВремени.День,
		|	ТабельУчетаРабочегоВремени.Табель.(
		|		НомерСтроки,
		|		ФИО,
		|		Должность,
		|		Ставка,
		|		День,
		|		День1,
		|		День2,
		|		День3,
		|		День4,
		|		День5,
		|		День6,
		|		День7,
		|		День8,
		|		День9,
		|		День10,
		|		День11,
		|		День12,
		|		День13,
		|		День14,
		|		День15,
		|		День16,
		|		ИтогоПолмесяца,
		|		День17,
		|		День18,
		|		День19,
		|		День20,
		|		День21,
		|		День22,
		|		День23,
		|		День24,
		|		День25,
		|		День26,
		|		День27,
		|		День28,
		|		День29,
		|		День30,
		|		ИтогоВтораяПоловина)
		|ИЗ
		|	Документ.ТабельУчетаРабочегоВремени КАК ТабельУчетаРабочегоВремени
		|ГДЕ
		|	ТабельУчетаРабочегоВремени.Ссылка В (&Ссылка)";
	Запрос.Параметры.Вставить("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();

	ОбластьЗаголовок = Макет.ПолучитьОбласть("Заголовок");
	Шапка = Макет.ПолучитьОбласть("Шапка");
	ОбластьТабельШапка = Макет.ПолучитьОбласть("ТабельШапка");
	ОбластьТабель = Макет.ПолучитьОбласть("Табель");
	Подвал = Макет.ПолучитьОбласть("Подвал");
	
	ТабДок.Очистить();

	ВставлятьРазделительСтраниц = Ложь;
	Пока Выборка.Следующий() Цикл
		Если ВставлятьРазделительСтраниц Тогда
			ТабДок.ВывестиГоризонтальныйРазделительСтраниц();
		КонецЕсли;

		ТабДок.Вывести(ОбластьЗаголовок);
		
		Шапка.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(Шапка, Выборка.Уровень());	
		ТабДок.Вывести(ОбластьТабельШапка);
		ВыборкаТабель = Выборка.Табель.Выбрать();
		Пока ВыборкаТабель.Следующий() Цикл
			ОбластьТабель.Параметры.Заполнить(ВыборкаТабель);
			ТабДок.Вывести(ОбластьТабель, ВыборкаТабель.Уровень());
		КонецЦикла;
		
		Подвал.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(Подвал);	
		
		ВставлятьРазделительСтраниц = Истина;
	КонецЦикла;
	//}}
КонецПроцедуры
