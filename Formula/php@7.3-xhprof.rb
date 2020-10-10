require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.2.tgz"
  sha256 "13bd1c3f6b0d834ebaa4eef924039f90c8dc1a24e2d92e851de12035d3662a43"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "831ea8b30328f19b4947c7d7374baf32706fe51829c72cb2cfede7923ccfaa08" => :catalina
    sha256 "435993d1392f0b1f5d537e5fbab256e765d062f8c224baa904846e2f0ad006a7" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
