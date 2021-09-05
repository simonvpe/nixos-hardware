{ lib, ... }:

{
  imports = [
    ../../../common/cpu/intel
    ../../../common/pc
    ../../../common/pc/laptop
    ../../../common/pc/ssd
  ];

  services.xserver.libinput.touchpad.disableWhileTyping = lib.mkDefault true;
  services.thermald.enable = lib.mkDefault true;

  # fixes mic mute button
  # services.udev.extraHwdb = ''
  #   evdev:name:*:dmi:bvn*:bvr*:bd*:svnASUS*:pn*:*
  #    KEYBOARD_KEY_ff31007c=f20
  # '';
}
