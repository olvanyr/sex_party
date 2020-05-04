randomise();

enum ori
{
	ace,
	aro,
	pan,
	bie,
	gay,
	lesb,
	demi,
	lesb_90,
	neuro_ace,
	neuro_queer,
	queer_plat,
	bie_ace_aro,
	queer
	
}
enum move
{
	light_gray,
	white,
	pink,
	purple,
	dark_purple,
	light_purple,
	yellow,
	bright_yellow,
	cyan,
	light_orange,
	light_green,
	blue,
	pamplemousse
}

enum menu
{
	name,
	body,
	orientation,
	ready
}

global.restart = 4;

global.body[0] = sBody_1;
global.body[1] = sBody_2;
global.body[2] = sBody_3;
global.body[3] = sBody_4;
global.body[4] = sBody_5;
global.body[5] = sBody_6;
global.body[6] = sBody_7;
global.body[7] = sBody_8;
global.body[8] = sBody_9;
global.body[9] = sBody_10;
global.body[10] = sBody_11;
global.body[11] = sBody_12;
global.body[12] = sBody_13;


global.state[0] = "start";
global.state[1] = "start";
global.state[2] = "start";
global.state[3] = "start";

//orientation & move

//ace
global.orientation[ori.ace] = sAce; 

global.ori_move[ori.ace,7] = move.light_gray;
global.ori_move[ori.ace,6] = move.pink; 
global.ori_move[ori.ace,5] = move.purple;
global.ori_move[ori.ace,4] = move.yellow;
global.ori_move[ori.ace,3] = move.white;
global.ori_move[ori.ace,2] = move.cyan;
global.ori_move[ori.ace,1] = move.bright_yellow;
global.ori_move[ori.ace,0] = move.pamplemousse;

//aro
global.orientation[ori.aro] = sAro; 

global.ori_move[ori.aro,6] = move.light_gray;
global.ori_move[ori.aro,5] = move.bright_yellow;
global.ori_move[ori.aro,4] = move.white;
global.ori_move[ori.aro,3] = move.cyan;
global.ori_move[ori.aro,2] = move.yellow;
global.ori_move[ori.aro,1] = move.light_green;
global.ori_move[ori.aro,0] = move.pamplemousse; 

//Pan
global.orientation[ori.pan] = sPan; 

global.ori_move[ori.pan,6] = move.pink;
global.ori_move[ori.pan,5] = move.purple;
global.ori_move[ori.pan,4] = move.light_orange;
global.ori_move[ori.pan,3] = move.dark_purple;
global.ori_move[ori.pan,2] = move.light_purple;
global.ori_move[ori.pan,1] = move.blue;
global.ori_move[ori.pan,0] = move.pamplemousse; 

//Bie
global.orientation[ori.bie] = sBie; 

global.ori_move[ori.bie,6] = move.pink;
global.ori_move[ori.bie,5] = move.purple;
global.ori_move[ori.bie,4] = move.cyan;
global.ori_move[ori.bie,3] = move.light_orange;
global.ori_move[ori.bie,2] = move.dark_purple;
global.ori_move[ori.bie,1] = move.light_purple;
global.ori_move[ori.bie,0] = move.pamplemousse; 

//Gay
global.orientation[ori.gay] = sGay; 

global.ori_move[ori.gay,5] = move.light_gray;
global.ori_move[ori.gay,4] = move.cyan;
global.ori_move[ori.gay,3] = move.yellow;
global.ori_move[ori.gay,2] = move.light_green;
global.ori_move[ori.gay,1] = move.blue;
global.ori_move[ori.gay,0] = move.pamplemousse; 

//Lesb
global.orientation[ori.lesb] = sLesb; 

global.ori_move[ori.lesb,5] = move.purple;
global.ori_move[ori.lesb,4] = move.cyan;
global.ori_move[ori.lesb,3] = move.light_orange;
global.ori_move[ori.lesb,2] = move.dark_purple;
global.ori_move[ori.lesb,1] = move.light_purple;
global.ori_move[ori.lesb,0] = move.pamplemousse; 

//Lesb_80
global.orientation[ori.lesb_90] = sLesb_90; 

global.ori_move[ori.lesb_90,5] = move.pink;
global.ori_move[ori.lesb_90,4] = move.light_orange;
global.ori_move[ori.lesb_90,3] = move.dark_purple;
global.ori_move[ori.lesb_90,2] = move.light_green;
global.ori_move[ori.lesb_90,1] = move.light_purple;
global.ori_move[ori.lesb_90,0] = move.pamplemousse;

//Demi
global.orientation[ori.demi] = sDemi; 

global.ori_move[ori.demi,9] = move.light_gray;
global.ori_move[ori.demi,8] = move.pink;
global.ori_move[ori.demi,7] = move.purple;
global.ori_move[ori.demi,6] = move.bright_yellow;
global.ori_move[ori.demi,5] = move.white;
global.ori_move[ori.demi,4] = move.light_orange;
global.ori_move[ori.demi,3] = move.dark_purple;
global.ori_move[ori.demi,2] = move.light_green;
global.ori_move[ori.demi,1] = move.blue;
global.ori_move[ori.demi,0] = move.pamplemousse;

//Neuro_aro_ace
global.orientation[ori.neuro_ace] = sNeuro_aro_ace; 

global.ori_move[ori.neuro_ace,5] = move.light_gray;
global.ori_move[ori.neuro_ace,4] = move.bright_yellow;
global.ori_move[ori.neuro_ace,3] = move.white;
global.ori_move[ori.neuro_ace,2] = move.cyan;
global.ori_move[ori.neuro_ace,1] = move.yellow;
global.ori_move[ori.neuro_ace,0] = move.pamplemousse;

//Neuro_queer
global.orientation[ori.neuro_queer] = sNeuro_queer; 

global.ori_move[ori.neuro_queer,9] = move.light_gray;
global.ori_move[ori.neuro_queer,8] = move.pink;
global.ori_move[ori.neuro_queer,7] = move.purple;
global.ori_move[ori.neuro_queer,6] = move.cyan;
global.ori_move[ori.neuro_queer,5] = move.light_orange;
global.ori_move[ori.neuro_queer,4] = move.dark_purple;
global.ori_move[ori.neuro_queer,3] = move.yellow;
global.ori_move[ori.neuro_queer,2] = move.light_purple;
global.ori_move[ori.neuro_queer,1] = move.blue;
global.ori_move[ori.neuro_queer,0] = move.pamplemousse;

//Queer_plat
global.orientation[ori.queer_plat] = sQueer_plat; 

global.ori_move[ori.queer_plat,8] = move.light_gray;
global.ori_move[ori.queer_plat,7] = move.bright_yellow;
global.ori_move[ori.queer_plat,6] = move.white;
global.ori_move[ori.queer_plat,5] = move.cyan;
global.ori_move[ori.queer_plat,4] = move.yellow;
global.ori_move[ori.queer_plat,3] = move.light_green;
global.ori_move[ori.queer_plat,2] = move.light_purple;
global.ori_move[ori.queer_plat,1] = move.blue;
global.ori_move[ori.queer_plat,0] = move.pamplemousse;

//Bie_aro_ace
global.orientation[ori.bie_ace_aro] = sBie_aro_ace; 

global.ori_move[ori.bie_ace_aro,8] = move.light_gray;
global.ori_move[ori.bie_ace_aro,7] = move.pink;
global.ori_move[ori.bie_ace_aro,6] = move.purple;
global.ori_move[ori.bie_ace_aro,5] = move.cyan;
global.ori_move[ori.bie_ace_aro,4] = move.light_orange;
global.ori_move[ori.bie_ace_aro,3] = move.dark_purple;
global.ori_move[ori.bie_ace_aro,2] = move.yellow;
global.ori_move[ori.bie_ace_aro,1] = move.light_green;
global.ori_move[ori.bie_ace_aro,0] = move.pamplemousse;

//Queer
global.orientation[ori.queer] = sQueer; 

global.ori_move[ori.queer,12] = move.light_gray;
global.ori_move[ori.queer,11] = move.pink;
global.ori_move[ori.queer,10] = move.purple;
global.ori_move[ori.queer,9] = move.bright_yellow
global.ori_move[ori.queer,8] = move.white;
global.ori_move[ori.queer,7] = move.cyan;
global.ori_move[ori.queer,6] = move.light_orange;
global.ori_move[ori.queer,5] = move.dark_purple;
global.ori_move[ori.queer,4] = move.yellow;
global.ori_move[ori.queer,3] = move.light_green;
global.ori_move[ori.queer,2] = move.light_purple;
global.ori_move[ori.queer,1] = move.blue;
global.ori_move[ori.queer,0] = move.pamplemousse;


//show_debug_message(" move length : " + string(array_length_2d(global.move,ori.ace)));

global.name = split_string(
"Max,Vubil,Alex,Ilo,Geoffroy,Camille,Time,Ferdinant,Hades,Locki,Bertine,Lou,Felix,Pathauton,Bob,Sybile,Orbille,Cleyton,Eliot,Gabriel,Morgane,Loup,"+
"Anastase,Arion,Sam,Louison,Issac,Gae,Fae,Lesbian-lord,Gay-lord,Cyprina,Semencio,Altea,Athena,Pommezed,Demetrius,Euphemia,Cleo,Dovie,Iris,Leaf,"+
"Similiant,LaSoleil,LeLune,Olivier,Brearalch,Arizona,Sieste,Stormagedon,PussyEater,Fatigay,Wingardium-leviosa,Aphrobite,Transypirne,Transtastique,Bearyfiant,"+
"Lesbichette,Acifluyde,Hetenul,Man-crusher,Pantheon,Assdestructor,Titi,Leroidlapipe,Prout,Barnabie,Liza,Disco-Glam,Jodariel,Moxxy,Satrans666,BaronDuDjender,"+
"HSBC-Slayer,Mirmidon,Gilles-Stella,Dramabulle,Bulle,Ocean,Flora_Tris,Rosa_Lux,,Louise_Michel,Anna,Anthropy,Porpentine,Ashley,BDG,BFG9000"
,",");



global.player_info [0,0] = 0; //body
global.player_info [0,1] = ori.ace; //orientation
global.player_info [0,2] = ""; //name
global.player_info [0,3] = false; //player existe ? 
global.player_info [1,0] = 0;
global.player_info [1,1] = ori.ace;
global.player_info [1,2] = "";
global.player_info [1,3] = false;
global.player_info [2,0] = 0
global.player_info [2,1] = ori.ace;
global.player_info [2,2] = "";
global.player_info [2,3] = false;
global.player_info [3,0] = 0;
global.player_info [3,1] = ori.ace;
global.player_info [3,2] = "";
global.player_info [3,3] = false;


//show_debug_message(" name length : " + string(array_length_1d(global.name)));