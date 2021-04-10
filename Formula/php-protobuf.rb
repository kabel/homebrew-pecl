require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.8.tgz"
  sha256 "8d36414a81ac731f5c010def3b33b62ca881df99f9b9b1f3e019d9fd93dd7bd8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "2158d8252af6c7d8606057bb518165c1aa547995d8d51bc558be76c069e545fc"
    sha256 cellar: :any_skip_relocation, catalina: "fa6a2dafd0523907a022ba68b52dc38dfde096df08b55a13382ebc4689d5bc60"
    sha256 cellar: :any_skip_relocation, mojave:   "1753a617ebc9f1a0b53879df6fa303080b1cf7385a423b4a5a6379ff49fa3e12"
  end
end
