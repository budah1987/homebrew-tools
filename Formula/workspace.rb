class Workspace < Formula
  desc "cmux workspace launcher — yazi + claude code + lazygit panes"
  homepage "https://gist.github.com/budah1987/4bf9a1235637b7e80b8673ba083a7337"
  url "https://gist.githubusercontent.com/budah1987/4bf9a1235637b7e80b8673ba083a7337/raw/workspace.sh"
  sha256 "b1868faaa860a8659208e1ca3708a8c707073792cd07e77db9d6ae8a42a2b6ba"
  version "1.3.0"
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
