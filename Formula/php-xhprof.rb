require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.2.tgz"
  sha256 "13bd1c3f6b0d834ebaa4eef924039f90c8dc1a24e2d92e851de12035d3662a43"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "bb6f311b186a2362767e7509a51e9596925df632f5c4463c8d9c2cf7aeb35137" => :catalina
    sha256 "f02abd8f188c265ac0451a86e449b572d4deeeb7f053e0f45e04613de7ba247c" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
