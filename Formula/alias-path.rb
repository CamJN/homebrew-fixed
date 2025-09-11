class AliasPath < Formula
  desc "print the POSIX path to the original of a Finder alias file from the OS X command line"
  homepage "https://github.com/CamJN/aliasPath"
  url "https://github.com/CamJN/aliasPath/archive/refs/tags/1.0.0.tar.gz"
  sha256 "f3d34b070d804631f2537ddc379059fba126a14e9a42cc1f59961489e66cbbe0"
  license "BSD-2"
  head "https://github.com/CamJN/aliasPath.git", branch: "main"

  def install
    system "make", 'OTHER_SWIFT_FLAGS=--disable-sandbox', "PREFIX=#{prefix}", "build"
    bin_path=`swift build --configuration release --show-bin-path`.strip
    bin.install "#{bin_path}/aliasPath"
  end

  test do
    system "#{bin}/aliasPath"
  end
end
