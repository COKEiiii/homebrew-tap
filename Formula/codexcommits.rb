class Codexcommits < Formula
  desc "Generate reviewed Conventional Commits with the Codex CLI"
  homepage "https://github.com/COKEiiii/codexcommits"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.2/codexcommits_macOS_arm64.tar.gz"
      sha256 "ffc99e9bec4bfcfc274434ce5ddd4cdabf58648c23e8dfa6590ef9b1780220b5"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.2/codexcommits_macOS_x86_64.tar.gz"
      sha256 "391e246cfe1e280f37466acfe5622d99acea7dcc5e9c9db9a9dfc2c1d5462477"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.2/codexcommits_Linux_arm64.tar.gz"
      sha256 "8edb641f9427adb8827db599915ed06e770cbbfbef05d71bbe0881c28ada5ee0"
    else
      url "https://github.com/COKEiiii/codexcommits/releases/download/v0.2.2/codexcommits_Linux_x86_64.tar.gz"
      sha256 "e6494473933401a59bdafc7558cc0e61a4e95e1bece4e8b122890d2adc7ab4dc"
    end
  end

  def install
    bin.install "codexcommits"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codexcommits --version")
  end
end
