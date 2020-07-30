require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.0.tgz"
  sha256 "034b3141411f3aaf44f91a0ec86a5f4c805a9372c4ef4f9c5ba38ef0b56f4fa2"
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
