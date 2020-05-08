require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.2.tgz"
  sha256 "9965269ec8da48761873e943b770d7053e7579b2b858af97e582eadc7e6eaa11"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fc9711214fe3d025c149faf8be3ef32c2f456d6ebef678e1a434b85c098d54e0" => :catalina
    sha256 "d331e64f12656f06104c71eab9024bb31b309dde942f97e705c34964b6f843e9" => :mojave
  end
end
