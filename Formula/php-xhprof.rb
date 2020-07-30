require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.0.tgz"
  sha256 "034b3141411f3aaf44f91a0ec86a5f4c805a9372c4ef4f9c5ba38ef0b56f4fa2"
  license "Apache-2.0"

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
