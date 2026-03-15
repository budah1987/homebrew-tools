class Workspace < Formula
  desc "cmux workspace launcher — yazi + claude code + lazygit panes"
  homepage "https://gist.github.com/budah1987/4bf9a1235637b7e80b8673ba083a7337"
  url "https://gist.githubusercontent.com/budah1987/4bf9a1235637b7e80b8673ba083a7337/raw/workspace.sh"
  sha256 "6fff46a793ae9f7710d73afbbf9664ffe173d2981a9615284a8e4909e8e8324f"
  version "2.1.0"
  license "MIT"

  depends_on "lazygit"
  depends_on "yazi"

  def install
    bin.install "workspace.sh" => "workspace"
  end

  def caveats
    <<~EOS
      workspace also requires these tools (install separately):
        - cmux (https://cmux.dev)
        - claude code (https://claude.ai/claude-code)
    EOS
  end

  test do
    assert_match "workspace", shell_output("#{bin}/workspace --help 2>&1")
  end
end
