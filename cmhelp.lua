script_name('Dialog lesson') -- название скрипта
script_author('Tom_Bouncing') -- автор скрипта
script_description('CMHELP') -- описание скрипта

require "lib.moonloader" -- подключение библиотеки

local color_dialog = 0xDEB887


function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end

    sampRegisterChatCommand("cmhelp", cmd_cmhelp)

	_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
    nick = sampGetPlayerNickname(id)

	while true do
		wait(0)

		if isKeyJustPressed(VK_F3) then
			sampAddChatMessage("Нажата клавиша {FFFFFF}F3" .. color_text .. "Ник: {FFFFFF}" .. nick .. ", " .. color_text .. "ID: {FFFFFF}" .. id, main_color)
		end

        
        local result, button, list, input = sampHasDialogRespond(10) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end



        local result, button, list, input = sampHasDialogRespond(11) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(12) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(13) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(14) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(15) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(16) 

        if result then -- если диалог открыт
            if button == 1 then -- если нажата первая кнопка (Закрыть)
                sampAddChatMessage("Вы закрыли диалог с ID 10", color_dialog)
            end
        end

	end
end

function cmd_cmhelp(arg)
    if #arg == 0 then
        sampAddChatMessage("Введите /cmhelp от 1 до 7", color_dialog)
    end
    if tonumber(arg) == 1 then
        sampShowDialog(10, "Script CMD 0", "{FFFFFF}Приветствую, в этой сборке есть автоматический акцент, активация после повторного входа происходит автоматически.\n{FFFF00}Если вы хотите изменить, то команда {FF0000}/accent", "Закрыть", "", 0)
    elseif tonumber(arg) == 2 then
        sampShowDialog(11, "Script CMD 1", "{FFFFFF}Существует также еще один другие скрипты.\nAlt enter - это скрипт, который не позволит вам завершить игру при нажатии кнопки. {FFFF00} Активация автоматическая\n{FFFFFF}AutoAccent - Этот скрипт очень полезен для тех, кто любит писать АКЦЕНТ в чате с ней {FFFF00} /cmhelp 1.\n{FFFFFF}Lock - Горячие клавиши этот скрипт полезен для тех, кому лень вводить команду. {FFFF00} Активация автоматическая\n{FFFFFF}Money sperator - Этот скрипт очень полезен для тех, кому лень считать нули. {FFFF00} Активация автоматическая.", "Закрыть", "", 0)
    elseif tonumber(arg) == 3 then
        sampShowDialog(12, "Script CMD 2", "{FFFFFF}В сборке также есть rpgun отыгрыш rp, пример: Вы достали оружие, давайте возьмем дигл, затем ваш чат автоматически отправляет /мне достался дигл и т.д\n{FFFF00}Активация /rpgun", "Закрыть", "", 0)
    elseif tonumber(arg) == 4 then
        sampShowDialog(13, "Script CMD 3", "{FFFFFF}Скрипт Cam Hack очень полезен для проверки ЛСа и т.д., а также удобен для снятие обзора в видео. {FFFF00}Активация: C+1 - включить, C+2 - отключить. + /- (не нумпад) регулировка скорости, F10 - включение / выключение худа.", "Закрыть", "", 0)
    elseif tonumber(arg) == 5 then
        sampShowDialog(14, "Script CMD 4", "{FFFFFF}Treningcaptchi - Этот скрипт очень полезен для ловли дома, потому что ввод капчи обучен, {FFFF00} /captcha Активация N англ.\n{FFFFFF}Reload_all - перезагрузить все скрипты {FFFF00} Активация CRLT+R\n{FFFFFF}Zaglushen - этот скрипт очень полезно переводит с секунд на минуты {FFFF00} Активация автоматическая\n{FFFFFF}Rpgun - скрипт очень прост и быстр и наиболее удобен для игры в RP {FFFF00} Активация /rpgun", "Закрыть", "", 0)
    elseif tonumber(arg) == 6 then
        sampShowDialog(15, "Обновления SCRIPT CMD V 1.3", "{FFFFFF}Было добавлено, settime, ctime, а также обновлена текстура, улучшен временной цикл /rpgun. rpgun раньше показывался в чате с опозданием, но на данный момент он работает быстро и стабильно ;). {FF0000}Внимание /ctime на аризоне лаунчер не работает!", "Закрыть", "", 0)
    elseif tonumber(arg) == 7 then
        sampShowDialog(16, "Обновления SCRIPT CMD V 2.0beta", "{FFFFFF}Из-за того, что сборка вышла очень сырой. Я был вынужден извиниться, возможно, у одного из тестировщиков был самый дикий дискомфорт, но выходит новая сборка 2.0, в ней произошли огромные изменения, и многое было сделано.\nБыло изменена G (/ gps) проще вводить gps, и да, кнопка G была для пассажиров, и это было дико неудобно. Изменена на x (/usedrugs 3).\nБыло добавлено, гр.кл J показывает себе тех.паспорт транспорта (/cars).\nКусты конопля и семена наркотиков были возвращены в samp. По словам тестировщиков, покупать наркотики или искать их было неудобно.(на данный момент в BETA  VERSION)\nДобавлена улучшенная версия текстуры, а также таймцикл и колормод.(улучшенная версия)\nДобавлены кастомные стробоскопы.\nОписание: Эти стробоскопы работают везде, как обычные старые стробоскопы.\nВ чем его особенность? С его помощью вы можете редактировать скорость мигания фар, а также есть 3 режима.\n1 Режим 'Простой' не представляет собой ничего необычного, просто фары мигают влево и вправо по очереди, вы можете изменять скорость мигания.\n2 Режим 'Динамический' здесь редактировать нельзя, фары там мигают по-другому (старая версия стробоскопов от автора) \n3 Режим 'Кастомный' здесь гораздо интереснее, вы можете добавить любую фару и ее задержку, а также состояние выключения/ включения фары\nА также в бета-версии /trmap, но очень полезной для охотников за сокровищами. Вы можете настроить пример \n'Включите зеленую метку (вы ее еще не нашли), и если вы встанете на метку, которая отображается на радаре, она станет красной'.\nБыло изменена кол-во, а теперь в /cmhelp  будет показывать (Введите /cmhelp от 1 до 7).\nБыло добавлена скрипт /rec.\nДо новых встреч ;). Ждите следующий обновлении by Tom_Bouncing", "Закрыть", "", 0)
    end
    
end