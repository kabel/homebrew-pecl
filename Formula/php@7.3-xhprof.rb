require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.1.tgz"
  sha256 "53bebeb3c177cd975549efc953160f98687f30be60993305248c70ce7b15158b"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "dd0ebb7d7ce038beabc2d20ac1bd36915abeab602a725a01e41d351d140f64c5" => :catalina
    sha256 "cce16da57ee1075471a201c05d280010a3c632f96df860ef1181c99c60b99525" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end
