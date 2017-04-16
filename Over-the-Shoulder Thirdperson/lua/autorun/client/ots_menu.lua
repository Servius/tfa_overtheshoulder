function OTS_Menu ()

	local ply = LocalPlayer()

	local BackGround = vgui.Create ( "DFrame" )
	BackGround:SetSize ( 400,400 )
	--BackGround:SetPos((ScrW()/2))-BackGround:GetWide(), (ScrH()/2)-BackGround:GetTall() )
	BackGround:Center()
	BackGround:SetTitle ( "Over the Shoulder Thirdperson Menu" )
	BackGround:SetVisible ( true )
	BackGround:SetDraggable ( true )
	BackGround:ShowCloseButton ( true )
	BackGround:MakePopup()
	BackGround.Paint = function()
		draw.RoundedBox(4, 0, 0, BackGround:GetWide(), BackGround:GetTall(), Color(194, 194, 194, 255))
		draw.RoundedBox(2, 2, 2, BackGround:GetWide()-4, 21, Color(50,50,50,200))
	end

--[[
local TextEntry = vgui.Create( "DTextEntry", BackGround )
TextEntry:SetPos (20,30)
TextEntry:SetTall (20)
TextEntry:SetWide (160)
TextEntry:SetEnterAllowed ( true )
TextEntry.OnEnter = function()
	ply:ConCommand("say "..TextEntry:GetValue())
	BackGround:SetVisible ( false )
	end
--]]

local Button = vgui.Create( "DButton", BackGround )
Button:SetText( "Toggle Third Person" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos(30,50)
Button:SetSize(100,30)
Button.Paint = function()
	draw.RoundedBox(4,0,0, Button:GetWide(), BackGround:GetTall(), Color( 41,128,185,250))
end
Button.DoClick = function()
	ply:ConCommand("say !tp_ots")	
end
local Button = vgui.Create( "DButton", BackGround )
Button:SetText( "Toggle Third Person" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos(30,50)
Button:SetSize(100,30)
Button.Paint = function()
	draw.RoundedBox(4,0,0, Button:GetWide(), BackGround:GetTall(), Color( 41,128,185,250))
end
Button.DoClick = function()
	ply:ConCommand("say !tp_ots")	
end
end
concommand.Add( "open_ots_menu", OTS_Menu )