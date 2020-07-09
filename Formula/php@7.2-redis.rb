require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.1.tgz"
  sha256 "7c29e49c5cbc6b54ccccc00b44fac4d3ed9895e5718fcf62a5b06281dda8809d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9dc4237aef4aa5d3c6b3cc52baa715eabcf583db1f355d00ce1d72765d34a18d" => :catalina
    sha256 "ee2f9f69214d2e2fcbd2214be84322df3c91f2ac59c3a30e9ffece105e53306c" => :mojave
  end
end
