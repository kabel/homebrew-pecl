require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.2.tgz"
  sha256 "9965269ec8da48761873e943b770d7053e7579b2b858af97e582eadc7e6eaa11"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0d9e66de309ca194da12f01d202a2ff590d3fe412d16112fe3bc8c0eec8a650d" => :catalina
    sha256 "82f7b9253b83e3d7ce8e2a2c08db0ede5d2d2e54d3dbb269dbf62c79ff279460" => :mojave
  end
end
