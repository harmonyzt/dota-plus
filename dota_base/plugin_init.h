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
    sniper
};
new syncGameStatus

public plugin_init(){
	register_plugin("Dota Mod+", ver, "harmony");
	register_dictionary("dota_plus.txt")
	register_event("DeathMsg","func_player_dead","a");
	set_task(1.0,"render_info",_,_,_, "b")
	register_event("HLTV", "new_round", "a", "1=0", "2=0");
	syncGameStatus = CreateHudSyncObj()
	register_clcmd("say /main","DOTA_MAIN_MENU");
}