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

///////////////////////////////////////////////////////////////////////
// Модуль содержит процедуры и функции работы с агрегатами, используемые
// регламентными заданиями

// Регламентное задание ОбновлениеАгрегатовПродаж.
// Параметры: 
//  Нет
Процедура ОбновлениеАгрегатовПродаж() Экспорт
	Если РегистрыНакопления.Продажи.ПолучитьРежимАгрегатов()
		 И  РегистрыНакопления.Продажи.ПолучитьИспользованиеАгрегатов() Тогда
		 
		РегистрыНакопления.Продажи.ОбновитьАгрегаты(Истина);
	КонецЕсли
КонецПроцедуры

// Регламентное задание ПерестроениеАгрегатовПродаж.
// Параметры: 
//  Нет
Процедура ПерестроениеАгрегатовПродаж() Экспорт
	Если РегистрыНакопления.Продажи.ПолучитьРежимАгрегатов()
		И РегистрыНакопления.Продажи.ПолучитьИспользованиеАгрегатов() Тогда
		
		РегистрыНакопления.Продажи.ПерестроитьИспользованиеАгрегатов();
	КонецЕсли
КонецПроцедуры
