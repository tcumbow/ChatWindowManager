local CWMAddon = _G['CWMAddon']
local L = {}

------------------------------------------------------------------------------------------------------------------
-- Russian
-- Non-indented or commented lines still require human translation and may not make sense!
------------------------------------------------------------------------------------------------------------------

-- General strings
L.CWMAddon_Reload			= "Обновить интерфейс"
L.CWMAddon_Clear			= "Очистить чат"
L.CWMAddon_ClearT			= "Очистить текущее окно чата."
L.CWMAddon_Toggle			= "Переключить окно чата"
L.CWMAddon_Online			= "Переключить онлайн-статус"
L.CWMAddon_RBox				= "Вы хотите перезагрузить интерфейс?"

-- Settings panel
L.CWMAddon_Title			= "Диспетчер окон чата"
L.CWMAddon_AutoHide			= "Автоматически скрывать окно чата"
L.CWMAddon_AutoHideT		= "Минимизирует окно чата при входе в систему, изменении зон или перезагрузке пользовательского интерфейса."
L.CWMAddon_RemState			= "Помните состояние чата"
L.CWMAddon_RemStateT		= "Переопределяет выше, поддерживая предыдущее состояние чата между экранами загрузки."
L.CWMAddon_RButton			= "Добавить кнопку перезагрузки/очистки"
L.CWMAddon_RButtonT			= "Добавляет кнопку в окно чата для перезагрузки пользовательского интерфейса или щелчок, удерживая нажатой клавишу «Shift», чтобы очистить текущий чат."
L.CWMAddon_RConfirm			= "Подтвердите перезагрузку интерфейса"
L.CWMAddon_RConfirmT		= "Добавляет окно подтверждения при нажатии кнопки «Обновить пользовательский интерфейс», чтобы избежать случайных перезагрузок."
L.CWMAddon_SButton			= "Добавить меню статуса игрока"
L.CWMAddon_SButtonT			= "Добавляет меню выбора онлайн-статуса игрока в окно чата."
L.CWMAddon_SChat			= "Переключатель статуса в чате"
L.CWMAddon_SChatT			= "Показывать онлайн-статус игрока в чате при изменении с помощью комбинации клавиш или другим способом."
L.CWMAddon_Extras			= "Дополнительные опции"
L.CWMAddon_DConfirm			= "Подтверждение простого удаления"
L.CWMAddon_DConfirmT		= "Устраняет необходимость набирать «УДАЛИТЬ» при удалении определенных вещей. Вместо этого вы получите поле, в котором нужно нажать Да или Нет."


------------------------------------------------------------------------------------------------------------------

if (GetCVar('language.2') == 'ru') then -- overwrite GetLanguage for new language
	for k,v in pairs(CWMAddon:GetLanguage()) do
		if (not L[k]) then -- no translation for this string, use default
			L[k] = v
		end
	end

	function CWMAddon:GetLanguage() -- set new language return
		return L
	end
end
