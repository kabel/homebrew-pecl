require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.2.tgz"
  sha256 "9965269ec8da48761873e943b770d7053e7579b2b858af97e582eadc7e6eaa11"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0a78923d2600998394f57754f04133d18e5fbada9e603cf51f5734e18459422c" => :catalina
    sha256 "461ca871465e425d3d8fe1bd8a56642ce9ade4e3682150debf092d519a3d12b5" => :mojave
  end
end
