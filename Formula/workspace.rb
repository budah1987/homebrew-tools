class Workspace < Formula
  desc "cmux workspace launcher — yazi + claude code + lazygit panes"
  homepage "https://gist.github.com/budah1987/4bf9a1235637b7e80b8673ba083a7337"
  url "https://gist.githubusercontent.com/budah1987/4bf9a1235637b7e80b8673ba083a7337/raw/workspace.sh"
  sha256 "583a3d15d404df6d5c69611063073ee714115fa2e975dab4fda558ee7d6d69b3"
  version "1.1.0"
  license "MIT"

  depends_on "lazygit"

  def install
    bin.install "workspace.sh" => "workspace"
  end

  def caveats
    <<~EOS
      workspace also requires these tools (install separately):
        - cmux (https://cmux.dev)
        - yazi (brew install yazi)
        - claude code (https://claude.ai/claude-code)
    EOS
  end

  test do
    assert_match "Welcome to workspace", shell_output("#{bin}/workspace 2>&1 || true")
  end
end
