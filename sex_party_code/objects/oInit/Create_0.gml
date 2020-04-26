randomise();

enum ori
{
	ace,
	gay
}
enum move
{
	blue,
	red,
	green,
	yellow,
	purple
}

enum menu
{
	name,
	body,
	orientation,
	ready
}




global.body[0] = sBody_1;
global.body[1] = sBody_2;
global.body[2] = sBody_3;


global.state[0] = "start";
global.state[1] = "start";
global.state[2] = "start";
global.state[3] = "start";



global.orientation[ori.ace,0] = sOrientation_ace; // 0 mean ace orientation
global.orientation[ori.ace,1] = move.red; // 0 mean blue move
global.orientation[ori.ace,2] = move.blue; // 1 mean red move
global.orientation[ori.ace,3] = move.green; // 2 mean green move
global.orientation[ori.ace,4] = move.purple; // 3 mean yellow move

global.orientation[ori.gay,0] = sOrientation_gay; // 0 mean ace orientation
global.orientation[ori.gay,1] = move.red; // 0 mean blue move
global.orientation[ori.gay,2] = move.blue; // 1 mean red move
global.orientation[ori.gay,3] = move.green; // 2 mean green move
global.orientation[ori.gay,4] = move.purple; // 3 mean yellow move

global.name = split_string(
"Max,Vubil,Alex,Ilo,Geoffroy,Time,Ferdinant,Hades,Locki,Bertine,Lou,Felix,Pathauton,Bob,Sybile,Orbille,Cleyton,Eliot,Gabriel,Morgane,Loup,"+
"Anastase,Arion,Sam,Louison,Issac,Gae,Fae,Lesbian-lord,Gay-lord,Cyprina,Semencio,Altea,Athena,Pommezed,Demetrius,Euphemia,Cleo,Dovie,Iris,Leaf,"+
"Similiant,LaSoleil,LeLune,Brearalch,Arizona,Sieste,Stormagedon,PussyEater,Fatigay,Wingardium-leviosa,Aphrobite,Transypirne,Transtastique,Bearyfiant,"+
"Lesbichette,Acifluyde,Hetenul,Man-crusher,Pantheon,Assdestructor,Titi,Leroidlapipe,Prout"
,",");



global.player_info [0,0] = 0; //body
global.player_info [0,1] = ""; //orientation
global.player_info [0,2] = ""; //name
global.player_info [0,3] = false; //player existe ? 
global.player_info [1,0] = 0;
global.player_info [1,1] = "";
global.player_info [1,2] = "";
global.player_info [1,3] = false;
global.player_info [2,0] = 0
global.player_info [2,1] = "";
global.player_info [2,2] = "";
global.player_info [2,3] = false;
global.player_info [3,0] = 0;
global.player_info [3,1] = "";
global.player_info [3,2] = "";
global.player_info [3,3] = false;


//show_debug_message(" name length : " + string(array_length_1d(global.name)));