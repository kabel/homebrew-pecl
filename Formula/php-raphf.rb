require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c7410a1d40c8906864beb47a20a1f72bb4930843c93fb379b2eddb61309e1662" => :mojave
    sha256 "b1fe7dbd2e50ab81c65b855de83142a88148b0375fe351dc6fccb33c06b274f1" => :high_sierra
  end
end
