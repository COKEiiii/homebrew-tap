class Codexcommits < Formula
  desc "Generate reviewed Conventional Commits with the Codex CLI"
  homepage "https://github.com/COKEiiii/codexcommits"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.1/codexcommits_macOS_arm64.tar.gz"
      sha256 "14645a449cca274f2e304e2fffa47ac7ff4a42b19b93718cac0c082ab0bbfbbf"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.1/codexcommits_macOS_x86_64.tar.gz"
      sha256 "e7d290b8036e542a7fad64f7f663743a9d1999e2a554c8ae8bcdada3fd8f2662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.1/codexcommits_Linux_arm64.tar.gz"
      sha256 "6a0ab6e67f3347a008397cdfe3a3c9e7ab00da7534abeeb634d2f39afda21188"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.1/codexcommits_Linux_x86_64.tar.gz"
      sha256 "b780038744024e0cc3c5eb364945ed67737080d1013510af8bf6c79c8788f2d7"
    end
  end

  def install
    bin.install "codexcommits"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codexcommits --version")
  end
end
