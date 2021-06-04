hook.Add( "AddToolMenuCategories", "GoldSrcCategory", function()
	spawnmenu.AddToolCategory( "Options", "GoldSrc", "#GoldSrc" )
end )

hook.Add( "PopulateToolMenu", "GoldSrcFootstepOptions", function()
	spawnmenu.AddToolMenuOption( "Options", "GoldSrc", "GoldSrcFootsteps", "#GoldSrc Footsteps", "", "", function( panel )
		panel:ClearControls()
        panel:CheckBox("Enabled", "gsrc_footsteps_enabled")
        panel:Help("The mode setting currently doesn't work.")
        local combobox = panel:ComboBox( "Mode", "gsrc_footstep_mode")

        combobox:AddChoice("Half-Life 1", "hl1")
        combobox:AddChoice("Opposing Force", "op4")
        combobox:SetDisabled(true)
	end )
end )
