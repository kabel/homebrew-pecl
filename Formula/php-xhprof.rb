require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b3207ac1023fb64ac257efa558d2113f11ef2f65b105aea46b22d2fd43e45b48"
    sha256 cellar: :any_skip_relocation, catalina: "bc8ae0e643cc9473c66b35802e38218055c57bac800c38930d967152f674eca9"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
