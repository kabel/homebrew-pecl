require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.0.tgz"
  sha256 "cd532d9e0975fe0e584d823932890c0b8b4f8fdaffb7c453d74c4f3942d450a5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9dc4237aef4aa5d3c6b3cc52baa715eabcf583db1f355d00ce1d72765d34a18d" => :catalina
    sha256 "ee2f9f69214d2e2fcbd2214be84322df3c91f2ac59c3a30e9ffece105e53306c" => :mojave
  end
end
