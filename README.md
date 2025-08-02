This is from the first part of this guide:
https://www.thenegation.com/posts/nixos-do-colmena/

To build, do this:

```sh
nix-build ./do_image.nix
```

Output is in `result/`.

It's deliberately a minimal image to boot into NixOS. You'll have to enable
flakes, install Git, clone the config repo and switch to the config you want.

To upgrade, replace the Git commit ID in the URL, change the checksum so it does
not collide, run the above command (which will fail and print out the correct
checksum), then replace the checksum with the correct one.

