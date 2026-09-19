class Xfetch < Formula
  desc "A fast, customizable system information fetch tool for the terminal"
  homepage "https://github.com/xfetch-cli/xfetch"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.0/xfetch-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5bd0754c2552ad9564aeb4a613b212c53aaaf3357a83ca7b6e6e9e7e6c30f2a7"
    end
    on_intel do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.0/xfetch-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ebb894ff6f8863deb532a5f100a33397977e0f7b82efba309808754bd1e917c"
    end
  end

  def install
    bin.install "xfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfetch --version")
  end
end
