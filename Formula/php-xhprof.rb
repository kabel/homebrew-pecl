require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "809eb25f5afb27b93cccdb396b2e93b8c43903965812229754323a02b26b19de"
    sha256 cellar: :any_skip_relocation, catalina: "0d024140a85b88acf8769a80d04c7002aaa0c02a4f2069e5d0ecf3a821f6f601"
    sha256 cellar: :any_skip_relocation, mojave:   "eefb931b62ca063f7490f75cb6a28bf59a62a85ce5ff3b14f2a8593e2d53b221"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
