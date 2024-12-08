require_relative "../lib/php_pecl_formula"

class PhpAT81Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "b4c42a2ea4ad9924d9a90c2519b55cc1722f5b3d58aace28087582e17f5eaab2"
    sha256 cellar: :any_skip_relocation, ventura:  "e776ddbc230d25eb0a11aa468ebeaca471d903cfae2f0d87cfaf55da8b7b01d4"
    sha256 cellar: :any_skip_relocation, monterey: "04e189af5277e99150e678cc555093de20d5b42239d9cc93715cbce846b06363"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
