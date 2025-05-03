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

// Процедура выполняет регистрацию системы взаимодействия
Асинх Процедура ВыполнитьРегистрацию() Экспорт
	
	Ответ = Ждать ВопросАсинх(НСтр("ru = 'Система взаимодействие не зарегистрирована. Выполнить регистрацию?'", "ru"),
							  РежимДиалогаВопрос.ДаНет);
	Если Ответ = КодВозвратаДиалога.Да Тогда
		ОткрытьФорму("Обработка.УправлениеСистемойВзаимодействия.Форма.Форма");
	КонецЕсли;
	
КонецПроцедуры

// Процедура сообщает о невозможности внешнего доступа в систему взаимодействия
Процедура СообщитьОНевозможностиВнешнегоДоступа() Экспорт

	ПредупреждениеАсинх(НСтр("ru = 'Внешний доступ в систему взаимодействия невозможен! Обратитесь к администратору'", "ru"));
	
КонецПроцедуры
