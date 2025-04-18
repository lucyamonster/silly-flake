{ lib, config, pkgs, ... }: let
	cfg = config.lucy-flatpak;
in {
  # Module options
  options.lucy-flatpak.enable = lib.mkEnableOption "Enable Lucy's Flatpak";

  # Configuration - Enable Flatpak for all users and automatically add Flathub
  config = lib.mkIf cfg.enable {
    services.flatpak = {
      enable = true;
      packages = [
        "org.mapeditor.Tiled"
        "dev.vencord.Vesktop"
        "app.zen_browser.zen"
        "org.signal.Signal"
        "io.missioncenter.MissionCenter"
        "com.github.KRTirtho.Spotube"
      ];
    };
  };
}
