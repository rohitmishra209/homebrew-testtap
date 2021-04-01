require "language/node"
class ContentstackCli < Formula
  desc "Command-line tool (CLI) to interact with Contentstack"
  homepage "https://github.com/contentstack/cli"
  url "https://registry.npmjs.org/@contentstack/cli/-/cli-0.1.1-beta.5.tgz"
  sha256 "f9e96c14cd538999a4d9d580c828a059bac1ec86fbfedac5bba6ee0e1c68e388"
  license "MIT"
  livecheck do
    url :stable
  end
  depends_on "node"
  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    raise "Test not implemented."
  end
end