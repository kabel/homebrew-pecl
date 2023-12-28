require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "7fe207158a1feb0c59766f09bca77836651ee9b0b094307d4a7966da4744b11c"
    sha256 cellar: :any_skip_relocation, ventura:  "dff75fd73158fd0fd385319f9903b28e26b736c0420208d1713c95ec5ce6e08e"
    sha256 cellar: :any_skip_relocation, monterey: "0441906c6674f225081565f82be42afeddde2cb669f78b903b55072e2b9f62cc"
  end
end
