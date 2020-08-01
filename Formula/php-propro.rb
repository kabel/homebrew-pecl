require_relative "../lib/php_pecl_formula"

class PhpPropro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  license "BSD-2-Clause"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ad7b9120607f6b5262d78b36733c54923d4a7364d5bc258f957f0114abaf884a" => :mojave
    sha256 "0ed3ceb52739e251325487003cc99302c38101c8e71ebd9a527baba413dbf8eb" => :high_sierra
  end
end
