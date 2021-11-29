require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.5.tgz"
  sha256 "f3b93619e038abe2bbed5f2898cd9c024d6ea1d34eace217ccafc0de7ad50e23"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "537ada7c55c361e1a77d2ddc71f59f63830f6403a79635e4cb8404b9a714b775"
    sha256 cellar: :any_skip_relocation, catalina: "90fd466dfaeafe2618484b4f566cddb32dd902bac03bc0d6fda1f738c4a86019"
    sha256 cellar: :any_skip_relocation, mojave:   "9f0bb54b8d93c419da45443772075d12559b78615e8fca7a5da5fffc2c44ca04"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
