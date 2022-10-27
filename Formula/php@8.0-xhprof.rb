require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.7.tgz"
  sha256 "378dd13f29185f8e5e9c0cc81e360e1ed71a4ac3eb3cc4e8d85e732da0300426"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "f88c51a58c7bb6e2a3c27b966fa7f14b92cdff392a80b81dab9fa8d000ae2933"
    sha256 cellar: :any_skip_relocation, big_sur:  "3608f56c62e100f0e8b1b543183959bdd3040f9d7966e83194f507591693a07c"
    sha256 cellar: :any_skip_relocation, catalina: "ad4bf1c09d088a8d67b4009b35720523739cdcd3bc1e89eee1c1becaac7d6da4"
  end

  source_dir "#{extension}-#{version}/extension"
end
