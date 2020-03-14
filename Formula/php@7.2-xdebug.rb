require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.3.tgz"
  sha256 "a63f567f2238d75a2244c2a4bd6f5abee817280b3567f9006c99481488dc977c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c72a19533269a68c8886fdf468dfc6d0ae0c3e216c06e7078637b9f7965aa68c" => :mojave
    sha256 "9302e84b62b37702e2c83f4cf8a804226ff636abb3e10ffb9006f3ec60fa64b4" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
