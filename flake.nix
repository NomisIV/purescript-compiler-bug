{
  description = "A flake describing all the development dependencies for lesslie";

  # NOTE[sg]: Spago is broken on master, and this is the lastest working commit (from 2023-08-08). See here for more info about spago: https://hydra.nixos.org/job/nixpkgs/trunk/spago.x86_64-linux
  # NOTE[sg]: There is always this: https://github.com/thomashoneyman/purescript-overlay/tree/main
  inputs.nixpkgs.url = "github:nixos/nixpkgs/4e6868b1aa3766ab1de169922bb3826143941973";

  outputs = {
    self,
    nixpkgs,
  }: let
    pkgs = import nixpkgs {system = "x86_64-linux";};

    # purs = pkgs.stdenvNoCC.mkDerivation {
    #   name = "purs";
    #   src = pkgs.fetchzip {
    #     url = "https://github.com/drathier/purserl/releases/download/v0.15.14-caching-64/linux64.tar.gz";
    #     sha256 = "sha256-ciHzREh5XeddFKfnU0/l0b8VgHzxCv2il33GSOULLf4=";
    #   };
    #   buildInputs = with pkgs; [gmp zlib];
    #   nativeBuildInputs = with pkgs; [autoPatchelfHook];
    #   installPhase = ''
    #     install -m755 -D $src/purs $out/bin/purs
    #   '';
    # };
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = with pkgs; [
        nil
        zsh
        docker-compose
        nodejs
        nodePackages.npm
        elixir
        elixir-ls
        erlang-ls
        spago
        purescript
        nodePackages.purescript-psa
        nodePackages.purescript-language-server
        nodePackages.typescript-language-server
        vscode-langservers-extracted
        ripgrep
        gh
        ripgrep
        python3
        python3Packages.python-lsp-server
      ];
    };

    formatter.x86_64-linux = pkgs.alejandra;
  };
}
