class Xfetch < Formula
  desc "A fast, customizable system information fetch tool for the terminal"
  homepage "https://github.com/xfetch-cli/xfetch"
  license "MIT"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.2/xfetch-1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "8379ceaab87463dcccd9862efc6ecfbb2d0478a415e0b703eba74eb5b8a04252"
    end
    on_intel do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.2/xfetch-1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "6a7688586559506189ad4bb16b92ff135852ddf21ccdd6a91ba3881f8cf9a560"
    end
  end

  def install
    bin.install "xfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfetch --version")
  end
end
