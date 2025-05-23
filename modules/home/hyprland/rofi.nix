{ lib, config, pkgs, ... }: 
{
    # packages.pkgs.rofi

    home.file.".config/rofi/config.rasi".text = ''
    /*
    * * * * * * * * * * * * * * * * * * * * * * * * *
    * Author: Eduardo de Sá Coêlho Ribeiro Costa   	*
    * Github: edudscrc							   	*
    *											   	*
    * Rofi Version: 1.7.8-dirty						*
    * * * * * * * * * * * * * * * * * * * * * * * * *
    */

    /*-----Configuration-----*/

    configuration {
        modes: "drun";
        font: "Jetbrains Mono 12";
        drun-display-format: "{name}";
    }

    /*-----Global-----*/

    * {
        color0: #1A1525;
        color1: #E77B2A;
        color2: #A55EF0;
        color3: #4DCC90;
        color4: #ED45B8;
        color5: #CC81F1;
        color6: #8AE849;
        color7: #D8D8D8;
        color8: #1F192B;
        color9: #E6964F;
        color10: #B888EA;
        color11: #81CEA9;
        color12: #EE66C3;
        color13: #D5A6F2;
        color14: #A8DE82;
        color15: #F2F2F2;

        fg-highlight: @color1;

        bg-entry: @color0;
        fg-entry: @color1;
        fg-placeholder: #E77B2A50;

        bg-listview: @color0;
        fg-element: @color4;

        bg-element-selected: @color8;
        fg-element-selected: @color3;
        border-color-element-selected: @color3;

        bg-inputbar: @color8;

        border-color: #2A233D;

        // border-radius
        br: 10px;

        border-size-window: 2px;
        border-size-element-selected: 2px;

        spacing: 0;
    }

    /*-----Main Window-----*/

    window {
        transparency: "real";
        background-color: transparent;

        padding: 0;

        children: [mainbox];

        border: @border-size-window;
        border-color: @border-color;

        border-radius: @br;

        width: 20%;
    }

    /*-----Main Box-----*/

    mainbox {
        children: [inputbar, listview];
        orientation: vertical;
    }

    /*-----Input Bar-----*/

    inputbar {
        children: [entry];

        background-color: @bg-inputbar;
    }

    entry {
        color: @fg-entry;
        placeholder-color: @fg-placeholder;
        background-color: @bg-entry;

        placeholder: "Cracking crème brûlée";

        text-transform: bold;

        border-radius: @br;

        padding: 12px;
        margin: 10px;
        
        vertical-align: 0.5;

        border: 0;
    }

    /*-----List View-----*/

    listview {
        scrollbar: false;

        // border: 0 0 0 2px;  // Removes the dashed line
        border: 0;
        lines: 8;   // 8 elements "per page"

        background-color: @bg-listview;

        padding: 10px;
    }

    element {
        children: [element-icon, element-text];
        spacing: 10px;

        border-radius: @br;
    }

    element-icon {
        vertical-aling: 0.5;

        margin: 0 0 0 10px;
    }

    element-text {
        vertical-align: 0.5;
        text-transform: bold;

        border-radius: @br;

        color: @fg-element;
        highlight: @fg-highlight;

        padding: 5px;
        margin: 10px 10px 10px 0;
    }

    element selected.normal {
        background-color: @bg-listview;

        border: @border-size-element-selected;
        border-color: @border-color-element-selected;
    }

    element-text selected {
        color: @fg-element-selected;
        text-transform: bold;
    }

    element normal.normal,
    element alternate.normal {
        background-color: transparent;
    }
    '';   
}