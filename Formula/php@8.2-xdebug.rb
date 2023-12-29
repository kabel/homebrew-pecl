require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.1.tgz"
  sha256 "4eb4ee270bbcc5f14195c38f6ee58580e007cf4886ce32e11430318ab5bc2315"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "c8f56e7b4de2dbf7eba23557f662775c01a3ffa38e36f2f91d774f5e69a0d6a0"
    sha256 ventura:  "9904bec8b469b65bbb05c83ce48bfd52b89e705ba064738ae0a51e768c7d364e"
    sha256 monterey: "ad5ea0e1835cd1117e94494f956a116c859a61ce2e8e5f1845c07a4921a455c3"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
