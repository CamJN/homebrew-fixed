class SegmentDumper < Formula
  desc "A tool to list the sections and segments from a mach-o binary"
  homepage "https://github.com/CamJN/segment_dumper"
  url "https://github.com/CamJN/segment_dumper/archive/refs/tags/0.1.4.tar.gz"
  sha256 "a1b6359a79034de5a4406d6027a532162fc9d517def53cfa197a82420f370c55"
  license "MIT"
  head "https://github.com/CamJN/segment_dumper.git", branch: "main"

  depends_on "rust" => :build

  def install
    system 'cargo', 'install', '--root', prefix, '--path', '.', '--no-track'
  end

  test do
    system "#{bin}/segment_dumper", "#{bin}/segment_dumper"
  end
end
