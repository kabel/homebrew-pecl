require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.0.tgz"
  sha256 "cd532d9e0975fe0e584d823932890c0b8b4f8fdaffb7c453d74c4f3942d450a5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7e66985f552c81285b8399309a239bb04b446fee50fa1d8d082c8822de58a407" => :catalina
    sha256 "d2aba7e4b560795ddd469fca77e89080c69bf4d9c71d8f0fad59079e4626b7f1" => :mojave
  end
end
