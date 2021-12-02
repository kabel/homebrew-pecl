require_relative "../lib/php_pecl_formula"

class PhpAT80Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "eba21da702c35c6b797d561c87fc0c3999b506df4077ea52366b0a72e449b0ac"
    sha256 cellar: :any_skip_relocation, catalina: "f9d6f70d13fb54106872316593d1104b255665f4ac796086270c85cb885b7bf0"
  end
end
