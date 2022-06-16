
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	// правило синхронизации ищется по идентификатору или по имени
	ЗапросНаСозданиеТовара = "{
		|""entity"": {
		|""id"": """",
		|""name"": ""Товары""
		|},
		|""action"": ""ADD""
	 	|""payload"":{
		|""Ссылка"": """",
		|""Код"": ""000000001"",
		|""Артикул"": ""овз123456"",
		|""Наименование"": ""Валенки"",
		|""СтавкаНДС"": ""Перечисление.СтавкиНДС.НДС_20"",
		|""Документация"": [
		|{
		|""ИмяФайла"": ""Валенки детские.jpg"",
		|""СодержимоеФайла"": ""/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAAB\r\nAAEAAAAAAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcI\r\nCQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcI\r\nDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM\r\nDAz/wAARCABaAFoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQF\r\nBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKB\r\nkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVW\r\nV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKz\r\ntLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QA\r\nHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQA\r\nAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcY\r\nGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE\r\nhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX\r\n2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/K+bv+Cgn/BUv4X/\r\nAPBN6y0I+PG1y+1HxGk8tjpmjQQzXUscJRXc+dLFGo3SIoBfcxJwCFcr9IscCvwf\r\n/wCDn/4oaPY/tkeH9NubGS8v7PwvaIsxkIWyV7i7IaMYKiRi+N+MgYx3zlWm4wuj\r\nbD01OaTPfte/4OmtM1NfM8HfALxjq9uxdlm1fXbbTkWNcgMxgjuQGJwNoJ68FuM+\r\nZeOv+Doj4ta1cR2fhP4H+B/D11JM0Yl1zxRLfQ4VN53ERWirhd2T5hwVPHevycit\r\n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""
		|}
		|]
		|}}";
	
	
	АдресСервиса = "https://server1c/baza1c/hs/ainsys";
	КлючПланаСинхронизации = "c49140b9-e758-4fac-a090-d5857dd0";
	СтруктураДляОтбора = "{""Контрагент"": ""b064aec9-dad9-11ec-8487-58fb845061a2""
						|}";
КонецПроцедуры

&НаКлиенте
Процедура ПересчитатьАдресаЗапросов()
	АдресДляВходящихPOSTзапросов = АдресСервиса + "/data/?k=" + КлючПланаСинхронизации;
	ОписаниеИнтерфейсаHTML = АдресСервиса + "/md/html/?k=" + КлючПланаСинхронизации;  
	ОписаниеИнтерфейсаJSON = АдресСервиса + "/md/json/?k=" + КлючПланаСинхронизации;
	АрдресДляGET_запроса = АдресСервиса + "/data/fab62e1d-e193-11ec-8487-58fb845061a2/json/?k=" + КлючПланаСинхронизации;
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ПересчитатьАдресаЗапросов();
КонецПроцедуры


&НаКлиенте
Процедура АдресСервисаПриИзменении(Элемент)
	ПересчитатьАдресаЗапросов();
КонецПроцедуры

&НаКлиенте
Процедура КлючПланаСинхронизацииПриИзменении(Элемент)
	ПересчитатьАдресаЗапросов();
КонецПроцедуры

&НаКлиенте
Процедура GET_Запрос(Команда)
	ОтправитьGET_ЗапросНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура СоздатьТовар(Команда)
	ОтправитьPOST_ЗапросНаСервере();
КонецПроцедуры

&НаСервере
Процедура ОтправитьPOST_ЗапросНаСервере()
	стрк = AINSYS_HTTP.JsonВОбъект(ЗапросНаСозданиеТовара);
	ДополнительныеДанные = Новый Структура("json", стрк);
	ОтветСервера = AINSYS_HTTP.ВызватьМетод("POST", АдресДляВходящихPOSTзапросов, ДополнительныеДанные);
	
	ОтветНаЗапрос = AINSYS_HTTP.КакТекст(ОтветСервера, "utf-8");
КонецПроцедуры

&НаСервере
Процедура ОтправитьGET_ЗапросНаСервере()
	Если ПустаяСтрока(СтруктураДляОтбора) Тогда
		рез = AINSYS_HTTP.GetJson(АрдресДляGET_запроса);
	Иначе
		стрк = AINSYS_HTTP.JsonВОбъект(СтруктураДляОтбора);
		ДополнительныеДанные = Новый Структура("json", стрк);
		
		рез = AINSYS_HTTP.GetJson(АрдресДляGET_запроса, , ДополнительныеДанные);
	КонецЕсли;
	ОтветНаЗапрос = AINSYS_сервер.ЗначениеВjson(рез);
КонецПроцедуры
	