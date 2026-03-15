class Workspace < Formula
  desc "cmux workspace launcher — yazi + claude code + lazygit panes"
  homepage "https://gist.github.com/budah1987/4bf9a1235637b7e80b8673ba083a7337"
  url "https://gist.githubusercontent.com/budah1987/4bf9a1235637b7e80b8673ba083a7337/raw/workspace.sh"
  sha256 "d520d9d70b7d35370cb0acc3b10f2e5d6b29e70ad41b9606462a8717bad85a8f"
  version "1.0.0"
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
    assert_match "Your projects", shell_output("#{bin}/workspace 2>&1 || true")
  end
end
