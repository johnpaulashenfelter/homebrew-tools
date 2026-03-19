class Claudtrol < Formula
  desc "Claude workflow CLI multiplexer"
  homepage "https://github.com/johnpaulashenfelter/claudtrol"
  url "https://github.com/johnpaulashenfelter/claudtrol/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "cd82854c2530f1fcde54ce346c5f4c8fe55ea6d2f1101abe169630535e2be1cf"
  license "MIT"

  def install
    bin.install "claudtrol"
  end

  def caveats
    <<~EOS
      ⚠️  claudtrol requires Bun to run commands like 'prune' and 'usage'.

      If you don't already have it, install it via:
        brew install bun
        OR
        curl -fsSL https://bun.sh/install | bash

      Learn more: https://bun.sh
    EOS
  end

  test do
    system "#{bin}/claudtrol", "--help"
  end
end
