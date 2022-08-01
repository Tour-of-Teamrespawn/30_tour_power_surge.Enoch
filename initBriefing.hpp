waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
    case WEST:
    {
        player createDiaryRecord ["Diary", ["Signals","
*Set channel only works after briefing at the moment*
<br/><br/>
ALPHA - Company command<br/>PRC343 Ch 1<br/><br/>
BRAVO - Assault Squad 1<br/>PRC343 Ch 2<br/><br/>
CHARLIE - Assault Squad 2<br/>PRC343 Ch 3<br/><br/>
DELTA - Assault Squad 3<br/>PRC343 Ch 4<br/><br/>
ECHO - Mortar team<br/>PRC343 Ch 5<br/><br/>
FOXTROT - Sniper team<br/>PRC343 Ch 6<br/><br/>

ALL TEAMS PRC152 Ch 1<br/><br/>

Recommended config:<br/>
PRC343 (Short range) = PTT 1 / Left ear <br/>
PRC152 (Long range) = PTT 2 / Right ear<br/>
        "]];  

        player createDiaryRecord ["Diary", ["Logistics", "
You have the following assets to your disposal:<br/>
-3x Land Rover Hard Top FFR's (unarmed), loaded up with ammunition, rockets and grenade boxes.<br/>
-1x Land Rover Soft Top FFR's (unarmed), loaded up with medical gear and additional mortar HE, smoke and flare rounds.<br/>
-1x L16 82mm mortar.<br/><br/>

CAS:<br/>
Not available at this time.<br/><br/>

Additional Fire Support:<br/>
Not available at this time.<br/><br/>
        "]]; 

        player createDiaryRecord ["Diary", ["Execution", "
Specific intel on force composition and fortifications means that company command will defer to the platoon leader on the ground for the execution plan.<br/><br/>
        "]];

        player createDiaryRecord ["Diary", ["Mission", "
Staging point for this mission is at <marker name='point_bear'>Point Bear</marker>.
Your mission is to secure the <marker name='m_ao'>power plant</marker> 1.5km to the north, clearing it of the enemy forces.<br/><br/>
You must minimise damage to the critical power infrastructure, such as power transformers.<br/><br/>
The mission can be aborted at your disgression at the laptop inside the house at <marker name='point_bear'>Point Bear</marker>. However, disappointing command does not bode well for career progression...<br/><br/>
        "]];

        player createDiaryRecord ["Diary", ["Situation", "
The offensive to push back the KDF has been going as planned, however they have managed to retreat to the power plant 1km East of Karlin, which is in a strategic location.<br/><br/>
They know we are coming and have started to dig in at the <marker name='m_ao'>power plant</marker>, fortifying buildings and preparing static emplacements.<br/><br/>
Our scouts say that the KDF are fielding around a company of infantry and have the support of an armoured/mechanized section of unknown kind along with potential mortar fire support.<br/>Although specifics on precisely where they've set up has not been determined.<br/><br/>
We need to move soon, before the enemy can dig in fully while they wait for reinforcements to come in support of the plant.<br/><br/>
Civilian presence is not expected within the power plant compound but make sure to check your targets in any surrounding settlements.
        "]];   

        player createDiarySubject ["credits", "Credits/Feedback"];
		player createDiaryRecord ["credits", ["Credits","
<br/>
Mission - Andy455<br/><br/>
Respawn control - Mr.Ben<br/><br/>
		"]];

        player createDiaryRecord ["credits", ["Feedback","
<br/>
If you have any feedback on the mission please let me know on the Tour Discord editing channel.
        "]];
    };
    case EAST:
    {

    };
    case RESISTANCE:
    {

    };
    case CIVILIAN:
    {

    };
};
