{ pkgs, ...}:
{
  dconf = {
    enable = true;
    settings = {
      ########## Gnome Settings ##########
      "org/gnome/shell" = {
        disable-user-extensions = false; # enables user extensions
        enabled-extensions = [
		"gsconnect@andyholmes.github.io"
		"blur-my-shell@aunetx"
        ];
        last-selected-power-profile = "power-saver";
      };

      # Configure individual extensions
      "org/gnome/shell/extensions/blur-my-shell" = {
        brightness = 0.75;
        noise-amount = 0;
      };
      # You need quotes to escape '/'
      # Enable Dark Mode
      "org/gnome/desktop/interface" = {
        clock-show-weekday = true;
      	color-scheme = "prefer-dark";
      };
      # Give me my window buttons
      "org/gnome/desktop/wm/preferences" = {
 	button-layout = ":minimize,maximize,close";     
      };
    
      "org/gnome/Console" = {
        audible-bell = false;
      };
      "org/gnome/contol-center" = {
      	last-panel = "wifi";
      	window-state = "(980, 640, false)";
      };
      #Night Light Settings
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-automatic = true;
      	night-light-temperature = 2907;
      	night-light-schedule-from = 20.0;
      	night-light-schedule-to = 6.0;
      };
      "org/gnome/settings-daemon/plugins/power" = {
        power-saver-profile-on-low-battery = true;
      };
      "org/gnome/desktop/interface" = {
        show-battery-percentage = true;
      };
      # Turn off machine with power button
      "org/gnome/settings-daemon/plugins/power" = {
        power-button-action = "interactive";
        sleep-inactive-battery-type = "suspend";
        sleep-inactive-battery-timeout = 1200;
        sleep-inactive-ac-type = "suspend";
        sleep-inactive-ac-timeout = 1200;
        idle-dim = true;
      };
      "org/gnome/desktop/session" = {
        idle-delay = 300;
      };
      "org/gnome/system/location" = {
        enabled = false;
      };
      ########## Gnome Settings ##########
      ########## GTK Settings ##########
      
      "org/gtk/gtk4/settings/file-chooser" = {
	date-format = "regular";
	location-mode = "path-bar";
	show-hidden = false;
	sidebar-width = 140;
	sort-column = "name";
	sort-directories-first = true;
	sort-order = "ascending";
	type-format = "category" ;
	view-type = "list";
	window-size = "(857, 372)";
      };
      "org/gtk/settings/file-chooser" = {
	date-format = "regular";
	location-mode = "path-bar";
	show-hidden = false;
	show-size-column = true;
	show-type-column = true;
	sidebar-width = 157;
	sort-column = "name";
	sort-directories-first = false;
	sort-order = "ascending";
	type-format = "category";
	window-position = "(26, 23)";
	window-size = "(1203, 936)";
      }; 
      ########## GTK Settings ##########
    };
  };
}
