require_relative "../lib/php_pecl_formula"

class PhpAT82Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "9001e805f1cfc76cc4b6dbada65bd14c4dac36018a0e46bd92f674d7ab3d6bb8"
    sha256 cellar: :any_skip_relocation, ventura:  "37a31e19ada11bfdb7bebefdb20abc3f06c470876319361ffc58294c2388538d"
    sha256 cellar: :any_skip_relocation, monterey: "e5767de6f8c7b9751292393052054e7fe28f945f3f5b1170c5b39be1e166aa4f"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
