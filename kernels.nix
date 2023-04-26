{pkgs, ...}: {
  kernel.python.minimal = {
    enable = true;
    extraPackages = ps: [ps.matplotlib ps.scipy ps.pandas];
  };
}
