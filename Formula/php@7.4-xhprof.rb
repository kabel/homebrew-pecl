require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "eb8cd9e1c8670a04c17d27ff09b27e6cf6d1f6ebb92b1fe353ddb1ee0f69b869"
    sha256 cellar: :any_skip_relocation, monterey: "26f56f44b9d68a0e7a3974de41f6898ba260df9d4ea8aefa73a3e35549a6bf4c"
    sha256 cellar: :any_skip_relocation, big_sur:  "6d50142711e58ba9997a74a12c9b2eefeae32d98e49e16128fc38f166d17bc0e"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  source_dir "#{extension}-#{version}/extension"
end
