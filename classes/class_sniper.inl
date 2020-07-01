#include < dotaplus >

public upgr_menu_sniper(id){
    static menitem[64]
    formatex(menitem, 63, "%L", LANG_PLAYER, "DOTA_MENU_TITLE", UserData[id][skillpoint]);
    new menu = menu_create(menitem, "main_menu_handler");
    menu_additem(menu, "%L", "1");
    menu_additem(menu, "%L", "2");
    menu_additem(menu, "%L", "3");
    menu_additem(menu, "%L", "4");
    menu_setprop(menu, MPROP_EXITNAME, "%L", LANG_PLAYER, "DOTA_MENU_EXIT")
    //menu_setprop(menu, MPROP_PERPAGE, 0) // Removes buttons (dont)
    menu_display(id, menu, 0)
    return PLUGIN_HANDLED
}

// Test Menu
public main_menu_handler(id, menu, item) 
{
        if(item == MENU_EXIT){
            menu_destroy(menu)
            return PLUGIN_HANDLED
        }
        new data[6], name[64], acces, callback;
        menu_item_getinfo(menu, item, acces, data, charsmax(data), name, charsmax(name), callback);
        switch(str_to_num(data))
        {
            case 1:  {
                      client_cmd(id,"spk hello");
                     }
            case 2:  {
                      client_cmd(id,"spk hello");
                     }
            case 3:  {
                      client_cmd(id,"spk hello");
                     }
            case 4:  {
                      client_cmd(id,"spk hello");
                     }
        }
        menu_destroy(menu)
        return PLUGIN_HANDLED
}