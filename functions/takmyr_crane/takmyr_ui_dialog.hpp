/*
    Author: JCataclisma
	JC Virtual Takmyr Project - Entry Point
*/

#include "takmyr_ui_defines.hpp"

class Takmyr_Manager_Dialog {
    idd = 9930;
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn JC_fnc_takmyr_uiUpdateLoop;";
    onUnload = "[] call JC_fnc_takmyr_cleanupPreviewCamera;";
    class controls {
        class Background: IGUIBack {
            idc = 2200;
            x = 0.22 * safezoneW + safezoneX;
            y = 0.20 * safezoneH + safezoneY;
            w = 0.56 * safezoneW;
            h = 0.60 * safezoneH;
            colorBackground[] = {0.05, 0.05, 0.05, 0.25};
        };
        class TitleBackground: IGUIBack {
            idc = 2201;
            x = 0.22 * safezoneW + safezoneX;
            y = 0.20 * safezoneH + safezoneY;
            w = 0.56 * safezoneW;
            h = 0.05 * safezoneH;
            colorBackground[] = {0.3, 0.15, 0, 1}; 
        };
        class Title: RscText {
            idc = 1000;
            text = "TAKMYR CRANE CONTROL SYSTEM";
            x = 0.23 * safezoneW + safezoneX;
            y = 0.205 * safezoneH + safezoneY;
            w = 0.5 * safezoneW;
            h = 0.04 * safezoneH;
            sizeEx = 0.045;
        };
        
        // --- CONFIGURATION GROUP AREA ---
        class Config_Group: RscControlsGroup {
            idc = 2300;
            x = 0.23 * safezoneW + safezoneX;
            y = 0.27 * safezoneH + safezoneY;
            w = 0.54 * safezoneW;
            h = 0.38 * safezoneH; 
            class Controls {};
        };

		// --- ROW 1.5: CRANE MOVEMENT CONTROLS (Middle Empty Space Zone) ---
        class MoveOut_Button: RscButton {
            idc = 2420;
            text = "MOVE OUT";
            x = 0.23 * safezoneW + safezoneX;
            y = 0.45 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.5, 0.35, 0, 1}; // Industrial Amber
            action = "['OUT'] spawn JC_fnc_takmyr_craneMove;";
        };
        class MoveIn_Button: RscButton {
            idc = 2421;
            text = "MOVE IN";
            x = 0.37 * safezoneW + safezoneX;
            y = 0.45 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.5, 0.35, 0, 1};
            action = "['IN'] spawn JC_fnc_takmyr_craneMove;";
        };
        class SideLeft_Button: RscButton {
            idc = 2422;
            text = "SIDE LEFT";
            x = 0.51 * safezoneW + safezoneX;
            y = 0.45 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.5, 0.35, 0, 1};
            action = "['LEFT'] spawn JC_fnc_takmyr_craneMove;";
        };
        class SideRight_Button: RscButton {
            idc = 2423;
            text = "SIDE RIGHT";
            x = 0.65 * safezoneW + safezoneX;
            y = 0.45 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.5, 0.35, 0, 1};
            action = "['RIGHT'] spawn JC_fnc_takmyr_craneMove;";
        };

        // --- ROW 1: CAMERAS & CLEAR CONTROL (y = 0.68) ---
        class CamAbove_Button: RscButton {
            idc = 2410;
            text = "CAM: TOP-DOWN";
            x = 0.23 * safezoneW + safezoneX;
            y = 0.68 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.2, 0.4, 0.2, 1};
            action = "[takmyr getVariable ['jc_takmyr_craneAnchor', objNull]] spawn JC_fnc_jc_camAbove;";
        };
        class CamSide_Button: RscButton {
            idc = 2411;
            text = "CAM: SIDE LEVEL";
            x = 0.37 * safezoneW + safezoneX;
            y = 0.68 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.2, 0.4, 0.2, 1};
            action = "[takmyr getVariable ['jc_takmyr_craneAnchor', objNull]] spawn JC_fnc_jc_camSideGroundLevel;";
        };
        class CamFollow_Button: RscButton {
            idc = 2412;
            text = "CAM: FOLLOW HOOK";
            x = 0.51 * safezoneW + safezoneX;
            y = 0.68 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.2, 0.4, 0.2, 1};
            action = "[takmyr getVariable ['jc_takmyr_craneAnchor', objNull]] spawn JC_fnc_jc_camFollow;";
        };
        class ClearCam_Button: RscButton {
            idc = 2413;
            text = "CLEAR FEED";
            x = 0.65 * safezoneW + safezoneX;
            y = 0.68 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.4, 0.2, 0, 1}; // Amber/Brown Accent
            action = "uiNamespace setVariable ['JC_Takmyr_KillCam', true];";
        };

        // --- ROW 2: SYSTEM ACTIONS (y = 0.74) ---
        class Exit_Button: RscButton {
            idc = 2403;
            text = "EXIT CONSOLE";
            x = 0.23 * safezoneW + safezoneX;
            y = 0.74 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.1, 0.1, 0.1, 1}; // Dark Grey
            action = "[] call JC_fnc_takmyr_cleanupPreviewCamera; closeDialog 0;";
        };
        class Disengage_Button: RscButton {
            idc = 2401;
            text = "DISENGAGE SYSTEM";
            x = 0.37 * safezoneW + safezoneX;
            y = 0.74 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.3, 0, 0, 1}; // Default Red
            action = "[] spawn JC_fnc_takmyr_craneAttemptDisengage;";
        };
        class Tow_Button: RscButton {
            idc = 2400;
            text = "TOW CARGO";
            x = 0.51 * safezoneW + safezoneX;
            y = 0.74 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0, 0.3, 0.5, 1}; // Default Blue
            action = "[] spawn JC_fnc_takmyr_craneTow;";
        };
        class Release_Button: RscButton {
            idc = 2402;
            text = "RELEASE CARGO";
            x = 0.65 * safezoneW + safezoneX;
            y = 0.74 * safezoneH + safezoneY;
            w = 0.13 * safezoneW;
            h = 0.04 * safezoneH;
            colorBackground[] = {0.3, 0.3, 0.3, 1}; // Default Grey
            action = "[] spawn JC_fnc_takmyr_craneRelease;";
        };
    };
};