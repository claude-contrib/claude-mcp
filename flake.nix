{
  description = "claude-services — Claude Code MCP plugin marketplace";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          name = "claude-services";

          packages = with pkgs; [
            nodejs_22 # MCP servers run via npx
            jq # JSON manifest validation (mirrors CI)
            git
            gh # GitHub CLI
          ];
        };
      }
    );
}
