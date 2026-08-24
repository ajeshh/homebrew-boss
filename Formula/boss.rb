class Boss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.215.0.tgz"
  sha256 "98769b10e0e885326eecfe99f1554e51cc5032554a958834f24d2fee7ef30347"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.215.0", shell_output("#{bin}/boss --version")
  end
end
