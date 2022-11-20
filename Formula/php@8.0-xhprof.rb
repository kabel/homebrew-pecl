require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "768908a83372fcb9b704060fca5936ce67d43c9239ce2815e536b360e6d34c56"
    sha256 cellar: :any_skip_relocation, big_sur:  "8e76014d5202deccf5fbb7d6cfcf7f863d51b67e3a8bebc2d829a3f0ed869191"
    sha256 cellar: :any_skip_relocation, catalina: "93a39f13116269e2c64f7bf51350d8693e6af2c3685431ebe3ba3882bca506b0"
  end

  source_dir "#{extension}-#{version}/extension"
end
