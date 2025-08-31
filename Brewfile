tap "camjn/fixed", "git@github.com:CamJN/homebrew-fixed.git"
tap "getargv/tap", "git@github.com:getargv/homebrew-tap.git"
tap "oven-sh/bun"
tap "phusion/passenger"

# untap "homebrew/core"
# untap "homebrew/bundle"
# untap "homebrew/services"

# required by brew itself
brew "gh"
brew "mas"

# emacs
brew "emacs"
brew "aspell"
brew "bash-language-server"
brew "gopls"
brew "pyright"
brew "rust-analyzer"
brew "shellcheck"
brew "yaml-language-server"

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

# docker
brew "colima"
brew "docker"
brew "docker-buildx"
brew "docker-compose"
brew "docker-credential-helper"

# dev
brew "camjn/fixed/tiny_php"
brew "swiftly"
brew "dotnet"
brew "go"
brew "llvm"
brew "node"
brew "node@20" # passenger library
brew "openjdk"
brew "oven-sh/bun/bun"
brew "python@3.13"
brew "rustup"
brew "rbenv"
brew "rbenv-default-gems"
brew "bear"
brew "criterion"
brew "difftastic"
brew "doxygen"
brew "geckodriver"
brew "getargv/tap/libgetargv"
brew "git-delta"
brew "gpgme" # passenger dev
brew "hyperfine"
brew "imagemagick" # rails
brew "camjn/fixed/fakeapxs" # tiny_php
brew "mailpit"
brew "maven"
brew "nginx"
brew "openssl@3"
brew "passenger", link: false
brew "phusion/passenger/passenger-enterprise"
brew "pkgconf"
brew "postgresql@17", link: true
brew "swift-format"
brew "wasm-pack"
brew "wrk" # passenger testing

# general
brew "bat"
brew "batt" if ENV["HOMEBREW_PHYSICAL_PROCESSOR"] == 'arm64'
brew "camjn/fixed/pam-duress", args: ["HEAD"]
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
brew "wget"
brew "xz"
brew "yt-dlp"
brew "awscli"

mas "1Blocker", id: 1365531024
mas "Keynote", id: 409183694
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "Pixelmator Pro", id: 1289583905
mas "Reeder", id: 1529448980
# mas "Xcode", id: 497799835
# mas "Apple Configurator 2", id: 1037126344

cask_args appdir: "/Applications", require_sha: true, language: "en-CA"

# cask 'sketch' # cannot use latest version with my license... https://download.sketch.com/sketch-75-129697.zip
cask "1password-cli"
cask "firefox@developer-edition", args: { require_sha: false }
cask "tower"

if ENV["HOMEBREW_PHYSICAL_PROCESSOR"] == 'arm64'
  # cask "container"  # I'd prefer a formula... like swiftly
  brew "lume"
else
  # cask "vmware-fusion" # removed due to broadcom requiring a login
  cask "blender" # not often used
  cask "1password@7" # 1password 8 is electron crap
end
