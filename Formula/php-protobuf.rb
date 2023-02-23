require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.22.0.tgz"
  sha256 "1cc1d1f08a3cd84f5747eba6aaa452e2975d968651fad15e77479498bc39c5d9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f886cc8c58877b9e6c019085b8017d274fc497551c289a9ab5c9d9d00a8db56e"
    sha256 cellar: :any_skip_relocation, monterey: "16a4f9dab4c80033484a8ea67d2a3cef96ea1116212e310e2d520c5ad16905d6"
    sha256 cellar: :any_skip_relocation, big_sur:  "4bc8813bafc7ec8d85b972f01e231af4838f4ddad21f0b3f2f37702d25f7bb0c"
  end
end
