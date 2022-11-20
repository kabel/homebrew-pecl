require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "ff295ac309ae7e113572f3021e8da7d6a5af9b769aa62247a8e22e31756f88a6"
    sha256 cellar: :any_skip_relocation, big_sur:  "116b3ab08ed7b5fc46d06af9e8a7b93dca28c1fac374c74f9c93b58a892c13a6"
    sha256 cellar: :any_skip_relocation, catalina: "ccb85eee30ae655e06f969988de627b3710caeec4b1f68e9347a4237a5866d45"
  end

  source_dir "#{extension}-#{version}/extension"
end
