class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.326.0.tgz"
  sha256 "e918399f9873afb3986475caa98c2da22f9fc964472a17d95b11188d01febd3f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.326.0", shell_output("#{bin}/boss --version")
  end
end
