class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.295.0.tgz"
  sha256 "5688fd33054c5c42937121c6285a571c70fb83cd790002aabb76eae8b16c076c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.295.0", shell_output("#{bin}/boss --version")
  end
end
