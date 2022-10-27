require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.7.tgz"
  sha256 "378dd13f29185f8e5e9c0cc81e360e1ed71a4ac3eb3cc4e8d85e732da0300426"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "ed1d55c5c7fbd79d9ce30e283948a3061140aa4084d36cb7f560fcd140239402"
    sha256 cellar: :any_skip_relocation, big_sur:  "46d94e6ff5fce13213e17d21531f3d39611bb4929a7e0da1da7cc7ed15effba0"
    sha256 cellar: :any_skip_relocation, catalina: "9fac99d557482c2d27212e01084f64637fd31d57d257899448c1f48d43348f36"
    sha256 cellar: :any_skip_relocation, mojave:   "deefbcb055fb39639194e1b5d980e15ea9ef4a455d73e8c12b274fd917af0e0b"
  end

  source_dir "#{extension}-#{version}/extension"
end
