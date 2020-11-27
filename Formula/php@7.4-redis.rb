require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c373fbd35bc34d9fe3b7c26081ba3eb5d27f7ca7cc3bccf7ab6369ad32007afe" => :catalina
    sha256 "d2e5e2ad3ea4413c31011ce5cbb4f192f2d1f32849571a07461ef96b3f892690" => :mojave
  end
end
