{config, ...}:
with config.colorScheme.palette; ''
    /*
    * * * * * * * * * * * * * * * * * * * * * * * * *
    * Author: Eduardo de Sá Coêlho Ribeiro Costa   	*
    * Github: edudscrc							   	*
    *											   	*
    * Waybar v0.12.0						   	    *
    * * * * * * * * * * * * * * * * * * * * * * * * *
    */

    @define-color modules_background #1A1525;
    @define-color modules_border #2A233D;

    @define-color archicon_idle #0B80E8;
    @define-color archicon_hover #CC81F1;

    @define-color workspaces_button_hover #000000;
    @define-color workspaces_button_idle #ffffff;

    @define-color spotify_idle #A55EF0;
    @define-color spotify_hover #CC81F1;

    @define-color tray_menu #1A1525;
    @define-color tray_menu_border #2A233D;
    @define-color tray_menu_item #CC81F1;
    @define-color tray_menu_item_hover #CC81F1;
    @define-color tray_menu_item_hover_background #2A233D;

    @define-color clock_idle #0B80E8;
    @define-color clock_hover #CC81F1;

    @define-color brightness_idle #0B80E8;
    @define-color brightness_hover #CC81F1;

    @define-color sound_idle #0B80E8;
    @define-color sound_hover #CC81F1;

    @define-color bluetooth_idle #000000;
    @define-color bluetooth_hover #CC81F1;

    @define-color network_idle #000000;
    @define-color network_hover #CC81F1;

    @define-color power_idle #ffffff;
    @define-color power_hover #CC81F1;

    @define-color tooltip_background #1A1525;
    @define-color tooltip_text #CC81F1;

    /*----------------*/
    /*-----GLOBAL-----*/
    /*----------------*/

    * {
        font-family: "JetBrains Mono", "JetBrainsMono Nerd Font";
        font-weight: 600;
        margin: 0;
        padding: 0;
    }

    .bar_2k,
    .bar_1080p {
        font-size: 16px;
    }

    #waybar {
        background-color: #1A1525;
        margin: 0;
        padding: 0;
    }

    .modules-left,
    .modules-center,
    .modules-right {
        margin-top: 4px;
        margin-bottom: 8px;
    }

    #group-left,
    #group-center,
    #group-right {
        border: 2px solid @modules_border;
        border-radius: 2px;
        box-shadow: 0px 2px 3px 2px rgba(0, 0, 0, 1.0);

        background-color: @modules_background;

        margin: 0px 6px;
    }

    /*--------------------*/
    /*-----WORKSPACES-----*/
    /*--------------------*/

    #workspaces {
        margin-top: 4px;
        margin-bottom: 4px;
    }

    #workspaces button {
        color: @workspaces_button_idle;
        background-color: #2A233D;

        border-radius: 2px;
        margin: 0 2px;
        padding: 0 6px;

        transition: color 0.3s;
    }

    #workspaces button.active {
        color: @workspaces_button_hover;
        background-color: #CC81F1;
    }

    #workspaces button:hover {
        color: @workspaces_button_hover;
        
        transition: color 0.3s;
        
        background: none;
        background-color: #CC81F1;
        box-shadow: none;
        text-shadow: none;
        transition: none;
        border-color: transparent;
    }

    /*-----CUSTOM SPOTIFY-----*/

    #custom-spotify {
        color: @spotify_idle;

        padding: 0 3px 0 9px;
        transition: color 0.3s;
    }

    #custom-spotify:hover {
        color: @spotify_hover;

        transition: color 0.3s;
    }

    /*-----TRAY-----*/

    #tray {
        padding: 0 6px;
    }

    #tray menu {
        background-color: @tray_menu;
        border: 1px solid @tray_menu_border;
        padding: 6px 0;
    }

    #tray menu menuitem {
        color: @tray_menu_item;
    }

    #tray menu menuitem:hover {
        color: @tray_menu_item_hover;
        border: 0;
        background-color: @tray_menu_item_hover_background;
    }

    /*---------------*/
    /*-----CLOCK-----*/
    /*---------------*/

    #clock {
        color: @clock_idle;

        padding: 0px 6px;

        transition: color 0.3s;
    }

    #clock:hover {
        color: @clock_hover;

        transition: color 0.3s;
    }

    /*-----------------------------------------*/
    /*-----CUSTOM-WL-GAMMARELAY-BRIGHTNESS-----*/
    /*-----------------------------------------*/

    #custom-wl-gammarelay-brightness {
        color: @brightness_idle;

        padding: 0 6px;
        transition: color 0.3s;
    }

    #custom-wl-gammarelay-brightness:hover {
        color: @brightness_hover;

        transition: color 0.3s;
    }

    /*---------------------*/
    /*-----WIREPLUMBER-----*/
    /*---------------------*/

    #wireplumber {
        color: @sound_idle;

        padding: 0 6px;
        transition: color 0.3s;
    }

    #wireplumber:hover {
        color: @sound_hover;

        transition: color 0.3s;
    }

    /*-----GROUP END-----*/

    #group-end {
        margin-top: 4px;
        margin-bottom: 4px;
    }

    /*-----CUSTOM PIPE-----*/

    #custom-pipe {
        font-size: 6px;
        color: transparent;
    }

    /*-----BLUETOOTH-----*/

    #bluetooth {
        color: @bluetooth_idle;

        background-color: #0B80E8;

        border-radius: 2px;

        padding: 0 10px;

        transition: color 0.3s;
    }

    #bluetooth.off {
        background-color: grey;
    }

    #bluetooth:hover {
        color: @bluetooth_hover;
        transition: color 0.3s;
    }

    .bar_2k #bluetooth {
        /* Global font size + 3px */
        font-size: 21px;
    }

    .bar_1080p #bluetooth {
        /* Global font size + 3px */
        font-size: 18px;
    }

    /*-----NETWORK-----*/

    #network {
        color: @network_idle;

        border-radius: 2px;
        background-color: #4DCC90;
        
        transition: color 0.3s;
    }

    #network.wifi {
        /* padding: 0 10px 0 2px; */
    }

    #network.ethernet {
        padding: 0 6px;
    }

    #network.disconnected {
        /* padding: 0 6px 0 1px; */
        background-color: grey;
    }

    #network:hover {
        color: @network_hover;

        transition: color 0.3s;
    }

    /*-----CUSTOM POWER-----*/

    #custom-power {
        color: @power_idle;

        padding: 0 15px 0 8px;

        /* padding: 0 6px 0 6px; */
        
        transition: color 0.3s;
    }

    #custom-power:hover {
        color: @power_hover;

        transition: color 0.3s;
    }

    /*-----TOOLTIP-----*/

    tooltip {
        background-color: @tooltip_background;
    }

    tooltip label {
        color: @tooltip_text;
    }

''