class Codexcommits < Formula
  desc "Generate reviewed Conventional Commits with the Codex CLI"
  homepage "https://github.com/COKEiiii/codexcommits"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.1/codexcommits_macOS_arm64.tar.gz"
      sha256 "3ff9b16b8b5fb33f6cf44c5bb416a8f46eb857049812b91a2cf6a09b934fddaf"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.1/codexcommits_macOS_x86_64.tar.gz"
      sha256 "5fc1fcd290acfb815fd71633b33cb83072f4dd8f6463fe0554847489018893a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.1/codexcommits_Linux_arm64.tar.gz"
      sha256 "7e3b1a240b4583e19e08797e3f8d33465f061725fab7c1047a7de6a5558f8761"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.1/codexcommits_Linux_x86_64.tar.gz"
      sha256 "7b20cece6957591d61ae58bca070f41ac3d81f40101e54796676debc1d5bfdad"
    end
  end

  def install
    bin.install "codexcommits"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codexcommits --version")
  end
end
