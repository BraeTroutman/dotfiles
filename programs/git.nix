{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "btroutma@redhat.com";
        name = "BraeTroutman";
      };
      init.defaultBranch = "main";
    };
  };
}
