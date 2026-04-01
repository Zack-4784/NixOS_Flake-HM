{pkgs, lib, inputs, ...}: {
  xdg.configFile."katerc".text = ''
    [Kate Document Defaults]
    indentation-mode=spaces
    indentation-width=2
    tab-width=2
  '';
}
