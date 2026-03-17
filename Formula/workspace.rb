class Workspace < Formula
  desc "cmux workspace launcher — file explorer + AI agent + git + live preview"
  homepage "https://gist.github.com/budah1987/4bf9a1235637b7e80b8673ba083a7337"
  url "https://gist.githubusercontent.com/budah1987/4bf9a1235637b7e80b8673ba083a7337/raw/workspace.sh"
  sha256 "ef3ddf2fdb568da42c9986d2ad2861de2555cad1915f4d092ed43f9785aa4902"
  version "3.0.0"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "imagemagick"
  depends_on "lazygit"
  depends_on "poppler"
  depends_on "resvg"
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
