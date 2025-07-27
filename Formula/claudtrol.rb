class Claudtrol < Formula
  desc "Claude workflow CLI multiplexer"
  homepage "https://github.com/johnpaulashenfelter/claudtrol"
  url "https://github.com/johnpaulashenfelter/claudtrol/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2d726b32f554dd3caaa8b0dc156cbdec6daffe909db7a0d7284bd7fd3950c80f"
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
