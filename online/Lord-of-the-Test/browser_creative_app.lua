laptop.register_view("creative-server.web", {
    app_info = "Ez az én saját oldalam",
    browser_page = true,
    formspec_func = function(app, mtos)
        local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
        "background[0,1.2;15,9;laptop_lott_bg.png]" ..
        
        -- Tartalom kezdete
        mtos.theme:get_label('1, 3', 'Üdvözöllek az oldalamon!') ..
        mtos.theme:get_label('1, 3.5', 'empty text') ..
        
        return formspec
    end,
    receive_fields_func = function(app, mtos, sender, fields)
        laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
    end
})
