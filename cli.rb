# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/node"
class Cli < Formula
  desc "Contentstack Command-line Interface (CLI)"
  homepage ""
  url "https://github.com/contentstack/cli/archive/refs/tags/v0.1.1-beta.1.tar.gz"
  sha256 "391a27478f957005cbfb7bcbee2d7f251f2a32acc65fb287b6069b8405573d66"
  license "MIT"

  def install
    # system "make", "install"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
