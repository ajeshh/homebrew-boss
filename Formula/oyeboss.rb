class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.275.0.tgz"
  sha256 "e413a2934d94976c13fea3d21931fa658ead2ddf1726e1482ca07aa81c27e974"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.275.0", shell_output("#{bin}/boss --version")
  end
end
