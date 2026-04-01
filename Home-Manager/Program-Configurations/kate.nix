{pkgs, lib, inputs, ...}: {
 programs.kate = {
   enable = true;
   config = {
     "editor" = {
       "indentation-width" = 2;
       "tab-width" = 2;
       "indentation-mode" = "spaces";
     };
   };
 };
}
