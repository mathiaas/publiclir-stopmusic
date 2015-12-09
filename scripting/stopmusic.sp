#include <sourcemod>

public Plugin:myinfo = {
	name = "StopMusic",
	author = "Mathias (STEAM_0:0:20970100)",
	description = "Stops the map music.",
	url = "none",
	version = "1.0.0",
};

public OnPluginStart()
{
	RegConsoleCmd("sm_stopmusic", CMD_StopMusic, "Stops the map music.");
}

public Action:CMD_StopMusic(client, args)
{
	ClientCommand(client, "playgamesound Music.StopAllExceptMusic");
	PrintToChat(client, "Stopping map music..");
}