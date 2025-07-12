class PrettyGitUi < Formula
  desc "Terminal UI for git operations"
  homepage "https://github.com/mmrakt/pretty-git-ui"
  url "https://github.com/mmrakt/pretty-git-ui/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "450e352be52c37b5afb468993804174b3d7f826585623f0c3812ab40381c5286"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "pretty-git-ui", shell_output("#{bin}/pretty-git-ui --version")
  end
end
