class Claudtrol < Formula
  desc "Claude workflow CLI multiplexer"
  homepage "https://github.com/johnpaulashenfelter/claudtrol"
  url "https://github.com/johnpaulashenfelter/claudtrol/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "a7371cbe79dd414622adecd96ffb9f9aba08bb62547f362ca550e8de40254b79"
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
