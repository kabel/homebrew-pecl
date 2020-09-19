require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.7.tgz"
  sha256 "390ea712e90e942ed2c3bd8716efe7e31965e0480ac96d44f9d0dce022d7909a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "bedb19ed3ae09ca2ed21584688a23171f29ae7b6f548f780246b18ac17d0d58f" => :catalina
    sha256 "632cf0a17fb8a6a5f5308828b61182d4532a83a95bf25a3766ff1f2114c5c920" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
