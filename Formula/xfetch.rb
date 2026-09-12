class Xfetch < Formula
  desc "A fast, customizable system information fetch tool for the terminal"
  homepage "https://github.com/xfetch-cli/xfetch"
  license "MIT"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v0.9.0/xfetch-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "9fa7072b66ce4fd2d08ddf95748f82890d147616113c481a6651456158c0d815"
    end
    on_intel do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v0.9.0/xfetch-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "92bbe1a90ab246f8db6334a63577dabbf55a068a47802ea7e5382091d8f61061"
    end
  end

  def install
    bin.install "xfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfetch --version")
  end
end
