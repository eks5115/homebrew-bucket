class Colortext < Formula
  desc "Color text"
  homepage "https://github.com/eks515/colortext"
  url "https://github.com/eks5115/colortext/archive/0.0.1.tar.gz"
  sha256 "026e723be87f55e24bfdbb0a799ca12ce123a90422190577b09539e0c3d85f94"
  head "https://github.com/eks5115/colortext.git"

  option "with-short-names", "link as \"ct\" instead"

  def install
    bin.install "colortext.sh" => build.with?("short-names") ? "ct" : "colortext"
  end

  test do
    system "which", build.with?("short-names") ? "ct" : "colortext"
  end
end