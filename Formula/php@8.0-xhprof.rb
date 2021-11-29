require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  license "Apache-2.0"

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
