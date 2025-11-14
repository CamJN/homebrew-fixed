class Netwatch < Formula
  desc "Callback system when the network changes"
  homepage "https://github.com/CamJN/netwatch"
  url "https://github.com/CamJN/netwatch/archive/refs/tags/0.1.tar.gz"
  sha256 "21b5ac7bd4abc3c034a4bae0cb1b5bb600f78d1b8fc7d361c88d5ea941410dab"
  license ""
  head "https://github.com/CamJN/netwatch.git", branch: "main"

  depends_on "bash"

  def install
    inreplace "bin/netwatch", "/usr/local", prefix

    file = "bin/netwatch"
    chmod "ugo+x", buildpath/file
    bin.install file

    var.mkpath

    etc.install "etc/netwatchrc"
  end

  def caveats
    <<~EOS
      To configure netwatch for all users, edit the script at #{etc}/netwatchrc.
      To configure netwatch for your user only, create a script at ~/.netwatchrc.
      To disable the running of user supplied netwatch scripts, remove the line that sources ~/.netwatchrc from #{etc}/netwatchrc.
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
