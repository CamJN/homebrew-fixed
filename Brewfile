tap "camjn/fixed", "https://github.com/CamJN/homebrew-fixed"
tap "cirruslabs/cli", "https://github.com/cirruslabs/homebrew-cli"
tap "getargv/tap", "https://github.com/getargv/homebrew-tap"
tap "oven-sh/bun"
tap "phusion/passenger"

# untap "homebrew/core"
# untap "homebrew/bundle"
# untap "homebrew/services"

# required by brew itself
brew "gh"
brew "mas"

# bash
brew "bash"
brew "bash-completion@2"
brew "bash-git-prompt"
brew "bundler-completion"
brew "gem-completion"
brew "maven-completion"
brew "rails-completion"
brew "rake-completion"
brew "ruby-completion"
brew "rustc-completion"

# emacs
brew "aspell"
brew "bash-language-server"
brew "dockerfile-language-server"
brew "emacs"
brew "gopls"
brew "jdtls"
brew "pyright"
brew "rust-analyzer"
brew "shellcheck"
brew "superhtml"
brew "typescript-language-server"
brew "yaml-language-server"

# docker
brew "colima"
brew "docker"
brew "docker-buildx"
brew "docker-compose"
brew "docker-credential-helper"

# dev
brew "bear"
brew "camjn/fixed/fakeapxs" # tiny_php
brew "camjn/fixed/tiny_php"
brew "criterion"
brew "difftastic"
brew "dotnet"
brew "doxygen"
brew "geckodriver"
brew "getargv/tap/libgetargv"
brew "git-delta"
brew "go"
brew "gpgme" # passenger dev
brew "hyperfine"
brew "imagemagick" # rails
brew "llvm"
brew "mailpit"
brew "maven"
brew "nginx"
brew "node"
brew "openjdk"
brew "openssl@3"
brew "oven-sh/bun/bun"
brew "passenger", link: false
brew "phusion/passenger/passenger-enterprise"
brew "pkgconf"
brew "postgresql@18", link: true
brew "python@3.13"
brew "rbenv"
brew "rbenv-default-gems"
brew "rustup"
brew "swift-format"
brew "swiftly"
brew "wasm-pack"
brew "wrk" # passenger testing

# general
brew "awscli"
brew "bat"
brew "camjn/fixed/alias-path"
brew "camjn/fixed/pam-duress", args: ["HEAD"]
brew "camjn/fixed/segment-dumper"
brew "camjn/fixed/top-notch"
brew "dnsmasq"
brew "dust"
brew "eza"
brew "fd"
brew "ffmpeg"
brew "getargv/tap/getargv"
brew "gnupg"
brew "google-authenticator-libpam"
brew "htmlq"
brew "hyfetch"
brew "jless"
brew "nmap"
brew "pigz"
brew "pinentry-mac"
brew "pngcrush"
brew "ripgrep"
brew "transmission-cli"
brew "tree"
brew "trurl"
brew "wget"
brew "wireshark"
brew "xz"
brew "yt-dlp"

mas "1Blocker", id: 1365531024
mas "Keynote", id: 361285480
mas "Numbers", id: 361304891
mas "Pages", id: 361309726
mas "Pixelmator Pro", id: 1289583905
mas "Reeder", id: 1529448980
mas "Xcode", id: 497799835
# mas "Apple Configurator 2", id: 1037126344

cask_args appdir: "/Applications", require_sha: true, language: "en-CA"

# cask 'sketch' # cannot use latest version with my license... https://download.sketch.com/sketch-75-129697.zip
cask "1password-cli"
cask "firefox@developer-edition", args: { require_sha: false }
cask "tower"

if ENV["HOMEBREW_PHYSICAL_PROCESSOR"] == "arm64"
  # remove once lima's macos support improves
  brew "cirruslabs/cli/tart"
else
  cask "1password@7" # 1password 8 is electron crap
end
