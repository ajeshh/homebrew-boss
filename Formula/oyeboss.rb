class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.273.0.tgz"
  sha256 "9da9672defe8d1fc3e40583d3bbb83877da5f402ac25793f0980d679586e91b9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.273.0", shell_output("#{bin}/boss --version")
  end
end
