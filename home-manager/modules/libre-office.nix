{ pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    libreoffice-qt
    hunspell
    hunspellDicts.us_EN
  ];
}
