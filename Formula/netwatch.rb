class Netwatch < Formula
  desc "Callback system when the network changes"
  homepage "https://github.com/CamJN/netwatch"
  url "https://github.com/CamJN/netwatch/archive/refs/tags/v0.2.tar.gz"
  sha256 ""
  license ""
  head "https://github.com/CamJN/netwatch.git", branch: "main"

  depends_on "bash"

  def install
    inreplace "bin/netwatch", "/usr/local", prefix

    file = "bin/netwatch"
    chmod "ugo+x", buildpath/file
    bin.install file

    etc.install "etc/netwatchrc"
  end

  def caveats
    <<~EOS
        To configure netwatch for all users, edit the script at #{etc}/netwatchrc.
        To configure netwatch for your user only, create a script at ~/.netwatchrc.
        To disable individual netwatch scripts, remove the line that sources ~/.netwatchrc from #{etc}/netwatchrc.
    EOS
  end

  service do
    run opt_bin/"netwatch"
    run_type :immediate
    keep_alive true
    log_path var/"log/netwatch.log"
    error_log_path var/"log/netwatch.err.log"
    working_dir var
  end

  test do
    system "#{bin}/netwatch", "-h"
  end
end
