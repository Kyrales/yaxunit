//©///////////////////////////////////////////////////////////////////////////©//
//
//  Copyright 2021-2025 BIA-Technologies Limited Liability Company
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//©///////////////////////////////////////////////////////////////////////////©//

//////////////////////////////////////////////////////////////////////////////// 
// ОБРАБОТЧИКИ СОБЫТИЙ 
// 

// Обработчик копирования документа выполняет также копирование движений
Процедура ПриКопировании(ОбъектКопирования)
	ОбъектКопирования.Движения.ТоварныеЗапасы.Прочитать();
    Для Каждого ИсхЗапись Из ОбъектКопирования.Движения.ТоварныеЗапасы Цикл
		Запись = Движения.ТоварныеЗапасы.Добавить();
		Запись.ВидДвижения = ИсхЗапись.ВидДвижения;
		Запись.Товар = ИсхЗапись.Товар;
		Запись.Склад = ИсхЗапись.Склад;
		Запись.Количество = ИсхЗапись.Количество;
	КонецЦикла;
КонецПроцедуры

// Обработчик события, предшествующего записи, устанавливает всем
// движениям дату самого документа
Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	
	Для Каждого Запись Из Движения.ТоварныеЗапасы Цикл
		Запись.Период = Дата;
	КонецЦикла;
	
КонецПроцедуры
