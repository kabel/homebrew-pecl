require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.3.tgz"
  sha256 "4b597525e29cb3c38ca9fdab0cd09ad754ba364a067e97252b40e0b943ab85ee"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "48f7df16e2746737e0794d491b131042922c73bb5ddd64a4a80a317b9aa5a8c6" => :catalina
    sha256 "b5a13688a50aa2a03b92f26f3eab777747c4289e7c439ced648df9487c61f5bd" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
