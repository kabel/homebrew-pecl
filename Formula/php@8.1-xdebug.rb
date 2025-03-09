require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.1.tgz"
  sha256 "4d96bcded78dbd271fb344c119171b625a8597cd67fc6899ec5e019549f1bb87"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "e85ada5a56312a943992f6e606f5471b0f49db212a28a9c227a703a93fdd25cf"
    sha256 ventura: "6ba30c8dc60673a89495410c111b3d9b0621519fe03405172375f7b3a9f57034"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
