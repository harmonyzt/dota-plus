#include < amxmodx >
#include < csx >
#include < dhudmessage >
#define ver "build-1.0-stable"

//	Includes skills and menus for each class
#include "dotaplus/sniper.h"
/*
			Start of registration!
 */
new first_blood=0
new name_killer[33]
enum _:Massives
{
    exp, kills, gLevel, skillpoint
};
new UserData[50][Massives];
new const levels[] =
{
	0,5,6,7,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,34,38,42,50,60,70
};	//How much you need to get xp to next level
enum _:Classes
{
    sniper	//Class registration
};
new bool:on_streak[33]	//Is a person on kill streak?
/*
			End of registration. Plugin init stage!
 */
public plugin_init(){
	register_plugin("Dota Mod+", ver, "unknown");
	register_dictionary("dota_plus.txt")
	register_event("DeathMsg","func_player_dead","a");
	set_task(1.0,"render_info",0,_,_, "b")
	register_event("HLTV", "new_round", "a", "1=0", "2=0");
	register_clcmd("upgr_menu_sniper", "cmdmenu", -1)
}

public func_player_dead(id){
	static killer, victim;
	killer = read_data(1)
	if(!is_user_connected(killer))
		return PLUGIN_HANDLED
	victim = read_data(2)
	UserData[killer][exp]++
	UserData[killer][kills]++
	UserData[victim][kills]=0
	on_streak[victim]=false
	get_user_name(killer, name_killer, 32)
	if(first_blood == 0 && on_streak[killer]!=true){
		UserData[killer][exp]++
		set_dhudmessage(212, 0, 0, -1.0, 0.25, 0, 6.0, 3.0, 0.2, 1.0)
		show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_FIRST_BLOOD", name_killer)
		first_blood=1
		client_cmd(0,"spk dota_plus/firstblood")
	}
	switch(UserData[killer][kills]){
	case 3:{
		on_streak[killer]=true
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
	return PLUGIN_HANDLED
}

public client_putinserver(id){
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
		UPGRADE_MENU(id)
	}
}


public render_info(){
	for(new id = 1; id <= 32; id++){
		if(!is_user_bot(id) && is_user_connected(id) && levels[UserData[id][gLevel]]<=30){
			set_dhudmessage(183, 174, 37, 0.01, 0.15, 0, 6.0, 1.0)
			show_dhudmessage(id, "%L", LANG_PLAYER, "DOTA_STATUS",UserData[id][exp],levels[UserData[id][gLevel]],UserData[id][gLevel])
			}else{
			set_dhudmessage(183, 174, 37, 0.01, 0.15, 0, 6.0, 1.0)
			show_dhudmessage(id, "%L", LANG_PLAYER, "DOTA_MAXLVL")
			}
	}
}

