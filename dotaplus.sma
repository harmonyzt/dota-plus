#include < amxmodx >
#include < csx >
#include < dhudmessage >
#define ver "1.1stable"

//	Includes skills and menus for each class
#include "dota_base/plugin_init.h"
#include "dota_base/precache.inl"

/*
		Plugin init stage!
 */
public plugin_init(){
	register_plugin("Dota Mod+", ver, "harmony");
	register_dictionary("dota_plus.txt")
	register_event("DeathMsg","func_player_dead","a");
	set_task(1.0,"render_info",_,_,_, "b")
	register_event("HLTV", "new_round", "a", "1=0", "2=0");
}

public func_player_dead(id){
	static killer, victim;
	killer = read_data(1)
	if(!is_user_connected(killer))
		return PLUGIN_HANDLED
	victim = read_data(2)
	if(killer != victim && is_user_connected(killer) && is_user_connected(victim)){
	UserData[killer][exp]++
	UserData[killer][kills]++
	UserData[victim][kills]=0
	get_user_name(killer, name_killer, 32)
	if(first_blood == 0 && UserData[killer][kills]<=3){
		UserData[killer][exp]++
		set_dhudmessage(212, 0, 0, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0)
		show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_FIRST_BLOOD", name_killer)
		first_blood=1
		client_cmd(0,"spk dota_plus/firstblood")
	}
	switch(UserData[killer][kills]){
	case 3:{
		UserData[killer][exp]+=2
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_KILLINGSPREE", name_killer);
		client_cmd(0,"spk dota_plus/killingspree");
	}
	case 4:{
		UserData[killer][exp]+=2
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_DOMINATING", name_killer);
		client_cmd(0,"spk dota_plus/dominating");
	}
	case 5:{
		UserData[killer][exp]+=3
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_MEGAKILL", name_killer);
		client_cmd(0,"spk dota_plus/megakill");
	}
	case 6:{
		UserData[killer][exp]+=3
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_UNSTOPPABLE", name_killer);
		client_cmd(0,"spk dota_plus/unstoppable");
	}
	case 7:{
		UserData[killer][exp]+=4
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_WICKEDSICK", name_killer);
		client_cmd(0,"spk dota_plus/whickedsick");
	}
	case 8:{
		UserData[killer][exp]+=4
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_MONSTERKILL", name_killer);
		client_cmd(0,"spk dota_plus/monsterkill");
	}
	case 9:{
		UserData[killer][exp]+=5
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_GODLIKE", name_killer);
		client_cmd(0,"spk dota_plus/godlike");
	}
	}
	if(UserData[killer][kills]>=10){
		UserData[killer][exp]+=5
		set_dhudmessage(233, 247, 149, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0);
		show_dhudmessage(0, "%L", LANG_PLAYER, "DOTA_BEYONDGODLIKE", name_killer);
		client_cmd(0,"spk dota_plus/holyshit");
		}

	checklvl(victim)
	checklvl(killer)
	}
	return PLUGIN_HANDLED
}
public client_putinserver(id){
	UserData[id] = UserData[0];
	UserData[id][exp] = 0;
	UserData[id][gLevel] = 1;
}

public new_round(){
	first_blood=0
}

public checklvl(id){
	if(UserData[id][exp] >= levels[UserData[id][gLevel]]){
		UserData[id][gLevel]++
		UserData[id][skillpoint]++
		UserData[id][exp] = 0
	}
}

public render_info(){
	for(new id = 1; id <= 32; id++){
		if(!is_user_bot(id) && is_user_connected(id)){ //&& levels[UserData[id][gLevel]]<=30
			set_dhudmessage(183, 174, 37, 0.01, 0.15, 0, 6.0, 1.0)
			show_dhudmessage(id, "%L", LANG_PLAYER, "DOTA_STATUS",UserData[id][exp],levels[UserData[id][gLevel]],UserData[id][gLevel])
			}
	}
}

public plugin_natives(){
	register_native("get_user_skillpoints", "native_get_user_skillpoints", 1);
	register_native("give_user_xp", "native_give_user_xp", 1);
	register_native("set_user_xp", "native_set_user_xp", 1);
	register_native("get_user_xp", "native_get_user_xp", 1);
	register_native("get_user_level", "native_get_user_level", 1);
	register_native("is_first_blood", "native_is_first_blood", 1);
	register_native("is_on_kstreak", "native_is_on_kstreak", 1);
}
// Natives
public native_get_user_skillpoints(id){
	return UserData[id][skillpoint]
}
public native_give_user_xp(id, num){
	UserData[id][exp] += num
}
public native_get_user_xp(id){
	return UserData[id][exp]
}
public native_set_user_xp(id, num){
	UserData[id][exp] = num
}
public native_get_user_level(id){
	return UserData[id][gLevel]
}
public native_is_first_blood(id){
	return first_blood
}
public native_is_on_kstreak(id){
	if(UserData[id][kills]<=3)
		return 1
	return 0
}