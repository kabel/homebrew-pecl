require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.9.tgz"
  sha256 "1dd421b25e0351e8074dec0b41ee67c5ca3a9f181ee90629e0222a12cd6f8774"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "b2ba278b534a2431b55d375c5dea39b29d19b5c3f57c658ed45b191f3aee857b"
    sha256 cellar: :any_skip_relocation, monterey: "31d7580bac5f18fe32d9a734777527918732ef9106bb8d054df6b76669f33c77"
    sha256 cellar: :any_skip_relocation, big_sur:  "c810ffd7ea43b90f16d1cd94934fd369ffdf3f96df2dabf4b36e7b6c0a1434c0"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  source_dir "#{extension}-#{version}/extension"
end
