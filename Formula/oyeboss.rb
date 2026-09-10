class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.274.0.tgz"
  sha256 "bb56278f4857855b26c7008efc029fbcf2a2a79d19c0736af3c1d7695e7b3667"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.274.0", shell_output("#{bin}/boss --version")
  end
end
