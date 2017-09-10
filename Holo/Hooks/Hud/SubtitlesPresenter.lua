core:module("CoreSubtitlePresenter")
core:import("CoreClass")
SubtitlePresenter = SubtitlePresenter or CoreClass.class()
OverlayPresenter = OverlayPresenter or CoreClass.class(SubtitlePresenter)
_G.Holo:Post(OverlayPresenter, "init", function(self)
    _G.Holo:AddUpdateFunc(callback(self, self, "UpdateHolo"))
end)
function OverlayPresenter:UpdateHolo()
    if self.__subtitle_panel and self.__subtitle_panel:child("label") then
        self.__subtitle_panel:child("label"):set_color(_G.Holo:GetColor("TextColors/Captions"))
    end
end
_G.Holo:Post(OverlayPresenter, "show_text", function(self)
    self.__subtitle_panel:child("label"):set_color(_G.Holo:GetColor("TextColors/Captions"))
end)
