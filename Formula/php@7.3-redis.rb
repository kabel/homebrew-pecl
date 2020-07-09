require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.1.tgz"
  sha256 "7c29e49c5cbc6b54ccccc00b44fac4d3ed9895e5718fcf62a5b06281dda8809d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8c1d0e199c7d85550a1f0f25c9eae728be9f5b326bb8e7dd73b298e0197a262c" => :catalina
    sha256 "ab9cc46f02b7889230f72ae94fb412a475269b363ceea1d10ad4074a1ad08085" => :mojave
  end
end
