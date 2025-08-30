require_relative "../lib/php_pecl_formula"

class PhpAT83Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9335554733e616dce7d0239ada41f4422f055426ef3d06e2ac11e2133926760a"
    sha256 cellar: :any, ventura: "c236246cb7ea64559a13beca40ab492b29002a1f4238c200a29cd2997dfc7dc6"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
