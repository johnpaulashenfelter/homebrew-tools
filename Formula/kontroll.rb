class Kontroll < Formula
  desc "Keyboard layout switcher for ZSA keyboards"
  homepage "https://github.com/zsa/kontroll"
  url "https://github.com/zsa/kontroll/releases/download/1.0.4/kontroll-1.0.4-macos-universal"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    bin.install "kontroll-1.0.4-macos-universal" => "kontroll"
  end

  test do
    system bin/"kontroll", "--version"
  end

  livecheck do
    url "https://github.com/zsa/kontroll/releases/latest"
    regex(%r{href=.*?/tag/(\d+(?:\.\d+)+)}i)
  end
end
