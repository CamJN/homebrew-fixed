class TopNotch < Formula
  desc "Detect notched screens from the cli"
  homepage "https://github.com/CamJN/top-notch"
  url "https://github.com/CamJN/top-notch/archive/refs/tags/1.0.1.tar.gz"
  sha256 "c82852b67cf62f239639c8978d7eda46fc04c7e67d2325e4f1806b28fd33ec06"
  license "MIT"
  head "https://github.com/CamJN/top-notch.git", branch: "main"

  def install
    system "make", "OTHER_SWIFT_FLAGS=--disable-sandbox", "PREFIX=#{prefix}", "build"
    bin_path=`swift build --configuration release --show-bin-path`.strip
    bin.install "#{bin_path}/top-notch"
  end

  test do
    system "#{bin}/top-notch"
  end
end
