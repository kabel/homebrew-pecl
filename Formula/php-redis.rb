require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.2.tgz"
  sha256 "9965269ec8da48761873e943b770d7053e7579b2b858af97e582eadc7e6eaa11"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7e66985f552c81285b8399309a239bb04b446fee50fa1d8d082c8822de58a407" => :catalina
    sha256 "d2aba7e4b560795ddd469fca77e89080c69bf4d9c71d8f0fad59079e4626b7f1" => :mojave
  end
end
