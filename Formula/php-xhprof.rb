require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "9b2258bd355448f2ab804d37fcdca07a43481122ef77cd5b1eb7001be02c2a2a"
    sha256 cellar: :any_skip_relocation, monterey: "2c7420517f6b664a0afcec0ddb701cc68a6437073e801e14312a438c76a21012"
    sha256 cellar: :any_skip_relocation, big_sur:  "94105d1683d5220aa7b98d36acdfd8ac35c17b4bbd0d3c28f6b1497f58322ed3"
  end

  source_dir "#{extension}-#{version}/extension"
end
