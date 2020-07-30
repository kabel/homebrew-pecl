require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.0.tgz"
  sha256 "034b3141411f3aaf44f91a0ec86a5f4c805a9372c4ef4f9c5ba38ef0b56f4fa2"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "42984afd57fd4de0737771890b5d440d36c968fdffb29538931111c832571a60" => :catalina
    sha256 "15bdf917922dde6576aeb632cab5d2bb98111ac063037c5c3c2f16afb4d0505e" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
