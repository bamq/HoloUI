if Holo.Options:GetValue("Menu") then 
	Holo:Post(TextBoxGui, "add_background", function(self) self._background:hide() end)
	Holo:Post(TextBoxGui, "init", function(self) self._scroll_panel:child("text"):set_color(Holo:GetColor("TextColors/Menu")) end)
	Holo:Post(TextBoxGui, "_setup_buttons_panel", callback(Holo.Utils, Holo.Utils, "FixDialog"))

	function TextBoxGui:_set_button_selected(index, is_selected)
		local button_panel = self._text_box_buttons_panel:child(index - 1)
		if button_panel then
			local button_text = button_panel:child("button_text")
			local selected = self._text_box_buttons_panel:child("selected")
			if is_selected then
				button_text:set_color(Holo:GetColor("TextColors/MenuHighlighted"))
	 			selected:set_x(button_panel:right() + 2)
	 			selected:set_rotation(360)
				QuickAnim:Play(selected, {y = button_panel:y() - 1, speed = 15})
			else
				button_text:set_color(Holo:GetColor("TextColors/Menu"))
			end
		end
	end
end
