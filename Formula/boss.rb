class Boss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.237.0.tgz"
  sha256 "ce19057a927d2cbaed0fcc071ca4447f3d759dae3b2c196894c3e5dfb066661a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.237.0", shell_output("#{bin}/boss --version")
  end
end
