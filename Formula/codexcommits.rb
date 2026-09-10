class Codexcommits < Formula
  desc "Generate reviewed Conventional Commits with the Codex CLI"
  homepage "https://github.com/COKEiiii/codexcommits"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.0/codexcommits_macOS_arm64.tar.gz"
      sha256 "4d0d8070d22a30fe5fd5b737796cf53ead88b14e535eaaa74f899872b2ec084e"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.0/codexcommits_macOS_x86_64.tar.gz"
      sha256 "1e450958b61a2ca1edd230b9bb8c17d2f7cc6bbd2e2d07f45cb3ac0772607c0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.0/codexcommits_Linux_arm64.tar.gz"
      sha256 "39bdeb8eb1b28ebad321cc118e40dc660f78c0d74854f58e34c5b17d40d82479"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.3.0/codexcommits_Linux_x86_64.tar.gz"
      sha256 "4fcf3186647dfc0983bf2d42813afd7bdd357c3cb6ac897efee315145d1fed39"
    end
  end

  def install
    bin.install "codexcommits"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codexcommits --version")
  end
end
