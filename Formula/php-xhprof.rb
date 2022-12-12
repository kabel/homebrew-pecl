require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "d71b7a7bb98be4fe3d288418a4fcd1b6dd00be4e180703cefdac6802bc5a55a5"
    sha256 cellar: :any_skip_relocation, monterey: "78f5dc082dc1c8684aa1b9694df587eca2b1094c4123eee880f81d829bb59868"
    sha256 cellar: :any_skip_relocation, big_sur:  "13377938dbf07ac88991274cc35374f7685282929b4e7510c7a091a1ad223959"
  end

  source_dir "#{extension}-#{version}/extension"
end
