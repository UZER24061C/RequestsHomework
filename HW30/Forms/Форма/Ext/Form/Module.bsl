﻿
&НаСервереБезКонтекста
Процедура ЗамерВариант1НаСервере()
		//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Номенклатура.Ссылка КАК Ссылка
		|ИЗ
		|	Справочник.Номенклатура КАК Номенклатура";
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		Сообщить("Товар - " + ВыборкаДетальныеЗаписи.Сcылка.Наименование);
	КонецЦикла;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА

КонецПроцедуры

&НаКлиенте
Процедура ЗамерВариант1(Команда)
	ЗамерВариант1НаСервере();
КонецПроцедуры

&НаСервереБезКонтекста
Процедура ЗамерВариант2НаСервере()
		//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Номенклатура.Ссылка КАК Ссылка,
		|	Номенклатура.Наименование КАК Наименование
		|ИЗ
		|	Справочник.Номенклатура КАК Номенклатура";
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		Сообщить("Товар - " + ВыборкаДетальныеЗаписи.Наименование);
	КонецЦикла;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА

КонецПроцедуры

&НаКлиенте
Процедура ЗамерВариант2(Команда)
	ЗамерВариант2НаСервере();
КонецПроцедуры
