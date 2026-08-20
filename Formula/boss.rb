class Boss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.179.0.tgz"
  sha256 "8dec4d1b3de380a8402285f1ee2f80035d84a94cbb9a2d1259b44e9602838ba8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.179.0", shell_output("#{bin}/boss --version")
  end
end
