class Codexcommits < Formula
  desc "Generate reviewed Conventional Commits with the Codex CLI"
  homepage "https://github.com/COKEiiii/codexcommits"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.0/codexcommits_macOS_arm64.tar.gz"
      sha256 "5edc0db78cd8e5f3167ea634a150f2836d5ee1d412a86852bf639885eb67e94a"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.0/codexcommits_macOS_x86_64.tar.gz"
      sha256 "7d54ce220d0d2dd34f3d49c674af38a6991d4126604a2fd994499cb8a8b54528"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.0/codexcommits_Linux_arm64.tar.gz"
      sha256 "5678be5f1214a8596bc4d3a221fa906925b40364e3e76aae66b1744364d770f2"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.0/codexcommits_Linux_x86_64.tar.gz"
      sha256 "864e7dcb19f959bbb8541c31da71638016222428f18c727cdc86f35bbf7a9250"
    end
  end

  def install
    bin.install "codexcommits"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codexcommits --version")
  end
end
