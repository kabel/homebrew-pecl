require_relative "../lib/php_pecl_formula"

class PhpAT80Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 2
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "b87bd6e5dc1605edf6ca9278ce25b15999191768b282e42d617ebf6c5b2c2613"
    sha256 cellar: :any_skip_relocation, mojave:   "96349350be7d6975345d9d9fa02567a3e8da9e0cbfe3e681c448465674c00af1"
  end
end
