require_relative "../lib/php_pecl_formula"

class PhpAT72Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.1.tgz"
  sha256 "53bebeb3c177cd975549efc953160f98687f30be60993305248c70ce7b15158b"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c461660a60b88ce9da811ce669e7f789bacee9ac27407cc7b78e4eb05dc70a7c" => :catalina
    sha256 "cadf2523b47f7d5fe6e526abe85f54476a0affe7539e2c6f150b512260a281b3" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
