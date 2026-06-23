class Boss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://github.com/ajeshh/bossbuild"
  url "https://registry.npmjs.org/bossbuild/-/bossbuild-0.97.0.tgz"
  sha256 "0ad80ef43726ff97e25bbd8a836d53757305611659e69bc6bf88ffae6a463ee1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.97.0", shell_output("#{bin}/boss --version")
  end
end
