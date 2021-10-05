script_name('Dialog lesson') -- �������� �������
script_author('Tom_Bouncing') -- ����� �������
script_description('CMHELP') -- �������� �������

require "lib.moonloader" -- ����������� ����������

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
			sampAddChatMessage("������ ������� {FFFFFF}F3" .. color_text .. "���: {FFFFFF}" .. nick .. ", " .. color_text .. "ID: {FFFFFF}" .. id, main_color)
		end

        
        local result, button, list, input = sampHasDialogRespond(10) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end



        local result, button, list, input = sampHasDialogRespond(11) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(12) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(13) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(14) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(15) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

        local result, button, list, input = sampHasDialogRespond(16) 

        if result then -- ���� ������ ������
            if button == 1 then -- ���� ������ ������ ������ (�������)
                sampAddChatMessage("�� ������� ������ � ID 10", color_dialog)
            end
        end

	end
end

function cmd_cmhelp(arg)
    if #arg == 0 then
        sampAddChatMessage("������� /cmhelp �� 1 �� 7", color_dialog)
    end
    if tonumber(arg) == 1 then
        sampShowDialog(10, "Script CMD 0", "{FFFFFF}�����������, � ���� ������ ���� �������������� ������, ��������� ����� ���������� ����� ���������� �������������.\n{FFFF00}���� �� ������ ��������, �� ������� {FF0000}/accent", "�������", "", 0)
    elseif tonumber(arg) == 2 then
        sampShowDialog(11, "Script CMD 1", "{FFFFFF}���������� ����� ��� ���� ������ �������.\nAlt enter - ��� ������, ������� �� �������� ��� ��������� ���� ��� ������� ������. {FFFF00} ��������� ��������������\n{FFFFFF}AutoAccent - ���� ������ ����� ������� ��� ���, ��� ����� ������ ������ � ���� � ��� {FFFF00} /cmhelp 1.\n{FFFFFF}Lock - ������� ������� ���� ������ ������� ��� ���, ���� ���� ������� �������. {FFFF00} ��������� ��������������\n{FFFFFF}Money sperator - ���� ������ ����� ������� ��� ���, ���� ���� ������� ����. {FFFF00} ��������� ��������������.", "�������", "", 0)
    elseif tonumber(arg) == 3 then
        sampShowDialog(12, "Script CMD 2", "{FFFFFF}� ������ ����� ���� rpgun ������� rp, ������: �� ������� ������, ������� ������� ����, ����� ��� ��� ������������� ���������� /��� �������� ���� � �.�\n{FFFF00}��������� /rpgun", "�������", "", 0)
    elseif tonumber(arg) == 4 then
        sampShowDialog(13, "Script CMD 3", "{FFFFFF}������ Cam Hack ����� ������� ��� �������� ��� � �.�., � ����� ������ ��� ������ ������ � �����. {FFFF00}���������: C+1 - ��������, C+2 - ���������. + /- (�� ������) ����������� ��������, F10 - ��������� / ���������� ����.", "�������", "", 0)
    elseif tonumber(arg) == 5 then
        sampShowDialog(14, "Script CMD 4", "{FFFFFF}Treningcaptchi - ���� ������ ����� ������� ��� ����� ����, ������ ��� ���� ����� ������, {FFFF00} /captcha ��������� N ����.\n{FFFFFF}Reload_all - ������������� ��� ������� {FFFF00} ��������� CRLT+R\n{FFFFFF}Zaglushen - ���� ������ ����� ������� ��������� � ������ �� ������ {FFFF00} ��������� ��������������\n{FFFFFF}Rpgun - ������ ����� ����� � ����� � �������� ������ ��� ���� � RP {FFFF00} ��������� /rpgun", "�������", "", 0)
    elseif tonumber(arg) == 6 then
        sampShowDialog(15, "���������� SCRIPT CMD V 1.3", "{FFFFFF}���� ���������, settime, ctime, � ����� ��������� ��������, ������� ��������� ���� /rpgun. rpgun ������ ����������� � ���� � ����������, �� �� ������ ������ �� �������� ������ � ��������� ;). {FF0000}�������� /ctime �� ������� ������� �� ��������!", "�������", "", 0)
    elseif tonumber(arg) == 7 then
        sampShowDialog(16, "���������� SCRIPT CMD V 2.0beta", "{FFFFFF}��-�� ����, ��� ������ ����� ����� �����. � ��� �������� ����������, ��������, � ������ �� ������������� ��� ����� ����� ����������, �� ������� ����� ������ 2.0, � ��� ��������� �������� ���������, � ������ ���� �������.\n���� �������� G (/ gps) ����� ������� gps, � ��, ������ G ���� ��� ����������, � ��� ���� ���� ��������. �������� �� x (/usedrugs 3).\n���� ���������, ��.�� J ���������� ���� ���.������� ���������� (/cars).\n����� ������� � ������ ���������� ���� ���������� � samp. �� ������ �������������, �������� ��������� ��� ������ �� ���� ��������.(�� ������ ������ � BETA  VERSION)\n��������� ���������� ������ ��������, � ����� �������� � ��������.(���������� ������)\n��������� ��������� �����������.\n��������: ��� ����������� �������� �����, ��� ������� ������ �����������.\n� ��� ��� �����������? � ��� ������� �� ������ ������������� �������� ������� ���, � ����� ���� 3 ������.\n1 ����� '�������' �� ������������ ����� ������ ����������, ������ ���� ������ ����� � ������ �� �������, �� ������ �������� �������� �������.\n2 ����� '������������' ����� ������������� ������, ���� ��� ������ ��-������� (������ ������ ������������ �� ������) \n3 ����� '���������' ����� ������� ����������, �� ������ �������� ����� ���� � �� ��������, � ����� ��������� ����������/ ��������� ����\n� ����� � ����-������ /trmap, �� ����� �������� ��� ��������� �� �����������. �� ������ ��������� ������ \n'�������� ������� ����� (�� �� ��� �� �����), � ���� �� �������� �� �����, ������� ������������ �� ������, ��� ������ �������'.\n���� �������� ���-��, � ������ � /cmhelp  ����� ���������� (������� /cmhelp �� 1 �� 7).\n���� ��������� ������ /rec.\n�� ����� ������ ;). ����� ��������� ���������� by Tom_Bouncing", "�������", "", 0)
    end
    
end