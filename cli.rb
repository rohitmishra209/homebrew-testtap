# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/node"
class Cli < Formula
  desc "Contentstack Command-line Interface (CLI)"
  homepage ""
  url "https://registry.npmjs.org/@contentstack/cli/-/cli-0.1.1-beta.5.tgz"
  sha256 "f9e96c14cd538999a4d9d580c828a059bac1ec86fbfedac5bba6ee0e1c68e388"
  license "MIT"

  def install
    # system "make", "install"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
