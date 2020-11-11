local CWMAddon = _G['CWMAddon']
local L = {}

------------------------------------------------------------------------------------------------------------------
-- German
-- Non-indented or commented lines still require human translation and may not make sense!
------------------------------------------------------------------------------------------------------------------

-- General strings
L.CWMAddon_Reload			= "Neu laden UI"
L.CWMAddon_Clear			= "Chat löschen"
L.CWMAddon_ClearT			= "Aktuelles Chat-Fenster löschen"
L.CWMAddon_Toggle			= "Chat-Fenster umschalten"
L.CWMAddon_Online			= "Online-Status umschalten"
L.CWMAddon_RBox				= "Möchten Sie die UI neu laden?"

-- Settings panel
L.CWMAddon_Title			= "Chat-Fenstermanager"
L.CWMAddon_AutoHide			= "Chatfenster automatisch ausblenden"
L.CWMAddon_AutoHideT		= "Minimiert das Chat-Fenster, wenn Sie sich anmelden, Zonen ändern oder die Benutzeroberfläche neu laden."
L.CWMAddon_RemState			= "Erinnere dich an den Chat-Status"
L.CWMAddon_RemStateT		= "Überschreibt oben, indem der vorherige Chat-Status zwischen den Ladebildschirmen beibehalten wird."
L.CWMAddon_RButton			= "Schaltfläche 'Neu laden/Löschen' hinzufügen"
L.CWMAddon_RButtonT			= "Fügt dem Chat-Fenster eine Schaltfläche zum erneuten Laden der Benutzeroberfläche hinzu oder klicken Sie bei gedrückter Umschalttaste, um den aktuellen Chat zu löschen."
L.CWMAddon_RConfirm			= "Bestätigen Sie Reload UI"
L.CWMAddon_RConfirmT		= "Fügt ein Bestätigungsfeld hinzu, wenn Sie auf die Schaltfläche Benutzeroberfläche neu laden klicken, um versehentliches Neuladen zu vermeiden."
L.CWMAddon_SButton			= "Player-Statusmenü hinzufügen"
L.CWMAddon_SButtonT			= "Fügt dem Chat-Fenster das Menü zur Auswahl des Online-Status des Players hinzu."
L.CWMAddon_SChat			= "Status Im Chat umschalten"
L.CWMAddon_SChatT			= "Zeigt den Online-Status des Spielers im Chat an, wenn er durch Tastenkombination oder eine andere Methode geändert wird."
L.CWMAddon_Extras			= "Zusätzliche Optionen"
L.CWMAddon_DConfirm			= "Einfach löschen Bestätigen"
L.CWMAddon_DConfirmT		= "Sie müssen beim Löschen bestimmter Elemente nicht mehr 'LÖSCHEN' eingeben. Sie erhalten stattdessen ein Feld, in dem Sie auf Ja oder Nein klicken können."


------------------------------------------------------------------------------------------------------------------

if (GetCVar('language.2') == 'de') then -- overwrite GetLanguage for new language
	for k,v in pairs(CWMAddon:GetLanguage()) do
		if (not L[k]) then -- no translation for this string, use default
			L[k] = v
		end
	end

	function CWMAddon:GetLanguage() -- set new language return
		return L
	end
end
