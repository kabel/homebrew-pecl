require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f88c51a58c7bb6e2a3c27b966fa7f14b92cdff392a80b81dab9fa8d000ae2933"
    sha256 cellar: :any_skip_relocation, big_sur:  "3608f56c62e100f0e8b1b543183959bdd3040f9d7966e83194f507591693a07c"
    sha256 cellar: :any_skip_relocation, catalina: "ad4bf1c09d088a8d67b4009b35720523739cdcd3bc1e89eee1c1becaac7d6da4"
  end

  source_dir "#{extension}-#{version}/extension"
end
