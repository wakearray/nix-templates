# Nix Powered Dev Environments: Rust + Bevy
Original writeup by Grayson found [here](https://blog.graysonhead.net/posts/nix-flake-rust-bevy/) or [here](https://web.archive.org/web/20240628031939/https://blog.graysonhead.net/posts/nix-flake-rust-bevy/ "WayBackMachine backup link") written on 2023-06-20

Start using this flake:
```sh
nix flake new --template github:wakearray/nix-templates/feature/automation-improvements#rust-bevy ./new_directory_here
```
- `nix build` will always compile in release mode.
- Dynamic linking in Nix with Rust is unreliable, but will work within the dev environment to speed up compile times, so:
  - `cargo build` and `cargo run` will compile with dynamic linking
  - `nix build` and `nix run` will compile without dynamic linking to guarantee successful compilation

Once downloaded you can use the `init.sh` script to:
- Initialize git
- Update the `flake.lock` file
- Make an initial commit

If using with Nix on a non NixOS machine, see [here](https://blog.graysonhead.net/posts/nix-flake-rust-bevy/#non-nixos-systems).
