class Claudtrol < Formula
  desc "Claude workflow CLI multiplexer"
  homepage "https://github.com/johnpaulashenfelter/claudtrol"
  url "https://github.com/johnpaulashenfelter/claudtrol/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5b1b4fb8eebf4ccdf6d60cecf38a837e299376da69151daef35b13fbff16abfa"
  license "MIT"

  if ! command -v bun &> /dev/null; then
    echo "❌ Bun is required. Install it from https://bun.sh or run 'brew install bun'"
    exit 1
  fi

  def install
    bin.install "claudtrol"
  end

  test do
    system "#{bin}/claudtrol", "--help"
  end
end
