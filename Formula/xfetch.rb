class Xfetch < Formula
  desc "A fast, customizable system information fetch tool for the terminal"
  homepage "https://github.com/xfetch-cli/xfetch"
  license "MIT"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.1/xfetch-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "61802e0b1694a0fded8894be8ce773e0093dcceb6ada932ce0f7b8193607b775"
    end
    on_intel do
      url "https://github.com/xfetch-cli/xfetch/releases/download/v1.0.1/xfetch-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "e3965ae0b127404a857fd256d5882a569976ec2072634ec859ca29a9976fbb80"
    end
  end

  def install
    bin.install "xfetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfetch --version")
  end
end
