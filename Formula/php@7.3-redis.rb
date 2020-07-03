require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.0.tgz"
  sha256 "cd532d9e0975fe0e584d823932890c0b8b4f8fdaffb7c453d74c4f3942d450a5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fc9711214fe3d025c149faf8be3ef32c2f456d6ebef678e1a434b85c098d54e0" => :catalina
    sha256 "d331e64f12656f06104c71eab9024bb31b309dde942f97e705c34964b6f843e9" => :mojave
  end
end
