require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.0.tgz"
  sha256 "cd532d9e0975fe0e584d823932890c0b8b4f8fdaffb7c453d74c4f3942d450a5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8c1d0e199c7d85550a1f0f25c9eae728be9f5b326bb8e7dd73b298e0197a262c" => :catalina
    sha256 "ab9cc46f02b7889230f72ae94fb412a475269b363ceea1d10ad4074a1ad08085" => :mojave
  end
end
