require "language/node"

class Colortext < Formula
  desc "Color Text"
  homepage "https://github.com/eks515/colortext"
  url "https://github.com/eks5115/colortext/archive/0.2.0.tar.gz"
  sha256 "cfe3889bff1d47e28b554c53ac8466d87ae682a1562d2b707b692e30772e0244"
  head "https://github.com/eks5115/colortext.git"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
    config = etc/"colortext"
    config.install "default.yaml"
  end

  test do
    system "true"
  end
end
