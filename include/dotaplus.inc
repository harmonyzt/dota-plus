#if defined _dotaplus_included
  #endinput
#endif
#define _dotaplus_included

// Returns skillpoints of player
native get_user_skillpoints(id);

// Gives (+=) exp to player
native give_user_xp(id, num);

// Returns exp of player
native get_user_xp(id);

// Sets (=) exp for player
native set_user_xp(id, num);

// Returns current lvl of player
native get_user_level(id);

// Returns 1 if first blood 
native is_first_blood(id);

// Returns 1/0 when is user on streak or not
native is_on_kstreak(id);