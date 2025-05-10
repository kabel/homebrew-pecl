require_relative "../lib/php_pecl_formula"

class PhpAT82Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.6.0.tgz"
  sha256 "7c5eaa693e49f43962fa8afa863c51000dc620048dcf9442453c27ca151e291e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "8898e9e9fe4cfd54cf6e90ba01e7cf4744f8468690e2bf6c0f7f628e1ce4f706"
    sha256 cellar: :any_skip_relocation, ventura: "2912a63aaf0519daac64f9d19e640526f3029ba33d658b1419f2802def076009"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
