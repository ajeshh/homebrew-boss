class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.306.0.tgz"
  sha256 "dbebd2335ca1843c1f732a6ac6b912d7a355802176ccc7cbbfc4c9d405ffc04c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.306.0", shell_output("#{bin}/boss --version")
  end
end
