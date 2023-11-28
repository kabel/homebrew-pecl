require_relative "../lib/php_pecl_formula"

class PhpAT82Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.9.tgz"
  sha256 "1dd421b25e0351e8074dec0b41ee67c5ca3a9f181ee90629e0222a12cd6f8774"
  license "Apache-2.0"

  deprecate! date: "2025-12-08", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end