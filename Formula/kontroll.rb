class Kontroll < Formula
  desc "Keyboard layout switcher for ZSA keyboards"
  homepage "https://github.com/zsa/kontroll"
  url "https://github.com/zsa/kontroll/releases/download/v1.4.0/kontroll-macos-universal"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "1.4.0"
  license "MIT"

  def install
    bin.install "kontroll-macos-universal" => "kontroll"
  end

  def caveats
    <<~EOS
      🔐 kontroll is a standalone binary for managing ZSA keyboard layers.
      This formula installs the latest release from:
        https://github.com/zsa/kontroll
    EOS
  end

  test do
    system "#{bin}/kontroll", "--version"
  end

  livecheck do
    url :github_latest
  end
end
