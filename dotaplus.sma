///Includes
#include <amxmodx>
#include <csx>
#include <dhudmessage>
#define ver "build-1.0-pre-release"
///Vars, news
new first_blood=0
new name_killer[33]

enum _:Massives
{
	exp, lvl, kills
};
new UserData[50][Massives];

public plugin_init(){
	register_plugin("Dota Mod+", ver, "unknown");
	register_dictionary("dota_plus.txt")
	register_event("DeathMsg","func_player_dead","a");
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
	get_user_name(killer, name_killer, 32)
	if(first_blood == 0){
		UserData[killer][exp]++
		set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
		show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_FIRST_BLOOD", name_killer)
		first_blood=1
	}

	switch(UserData[killer][kills]){
		case 3:{
			UserData[killer][exp]+=2
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_KILLINGSPREE", name_killer)
		}
		case 4:{
			UserData[killer][exp]+=2
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_DOMINATING", name_killer)
		}
		case 5:{
			UserData[killer][exp]+=3
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_MEGAKILL", name_killer)
		}
		case 6:{
			UserData[killer][exp]+=3
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_UNSTOPPABLE", name_killer)
		}
		case 7:{
			UserData[killer][exp]+=4
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_WICKEDSICK", name_killer)
		}
		case 8:{
			UserData[killer][exp]+=4
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_MONSTERKILL", name_killer)
		}
		case 9:{
			UserData[killer][exp]+=5
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_GODLIKE", name_killer)
		}
		case 10:{
			UserData[killer][exp]+=5
			set_hudmessage(255, 127, 85, -1.0, 0.25, 0, 6.0, 4.0)
			show_hudmessage(0, "%L", LANG_PLAYER, "DOTA_BEYONDGODLIKE", name_killer)
		}

	}
	return PLUGIN_HANDLED
}

/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang1049\\ f0\\ fs16 \n\\ par }
*/
