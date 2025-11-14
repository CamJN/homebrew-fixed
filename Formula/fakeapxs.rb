class Fakeapxs < Formula
  desc "Shim apxs for use with macOS versions after Sierra"
  homepage "https://github.com/CamJN/fakeapxs"
  url "https://github.com/CamJN/fakeapxs/archive/refs/tags/v0.2.tar.gz"
  sha256 "e27b6543dad983670dab64800182fd47c23e08800bad1ddb1c307eab9b29f803"
  license "Apache-2.0"
  revision 1
  head "https://github.com/CamJN/fakeapxs.git", branch: "main"

  # RUBOCOP: Disabled because homebrew is stupid
  uses_from_macos "httpd" # rubocop:disable FormulaAudit/UsesFromMacos,Style/DisableCopsWithinSourceCodeDirective

  def install
    inreplace "fakeapxs", "config_vars.mk >", "#{pkgshare}/config_vars.mk >"
    inreplace buildpath/"libtool", "/usr/local", prefix
    inreplace "apr-config", "/usr/local/opt/fakeapxs", opt_prefix

    ["apr-config", "apu-config", "fakeapxs"].each do |file|
      chmod "ugo+x", buildpath/file
      bin.install file
    end

    libexec.mkpath
    libexec.install buildpath/"libtool"
    chmod "ugo+x", libexec/"libtool"

    pkgshare.install "config_vars.mk"
  end

  test do
    system bin/"fakeapxs", "-q", "APU_CONFIG"
  end
end
