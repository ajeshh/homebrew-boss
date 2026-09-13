class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.325.0.tgz"
  sha256 "aaa12821d385db0f6e9c96722d8a3c6df78f0166181ea611b95987b3b6b3c4e7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.325.0", shell_output("#{bin}/boss --version")
  end
end
