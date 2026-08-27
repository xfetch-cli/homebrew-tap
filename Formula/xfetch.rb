class Xfetch < Formula
  desc "A fast, customizable system information fetch tool for the terminal"
  homepage "https://github.com/xfetch-cli/xfetch"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v0.8.0/xfetch-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "cb0ef1f7faa60783f159c0bf057dd3865ff3409e08b9776d51fd2dc26781fb72"
    end
    on_intel do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v0.8.0/xfetch-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0ce866f81e91a4f455494cb5148ae227329fd22123a30f02d768fbe0e3b7d3a"
    end
  end

  def install
    bin.install "xfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfetch --version")
  end
end
