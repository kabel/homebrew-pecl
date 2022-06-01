require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.1.tgz"
  sha256 "86b02122323e203454835eb371de4dbe4f6e4e57dd084a04203eebf9eb04ff8d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "9e70c23beb64138af65ff449e896550c07d29e4ccdf14c926f04f3e8edf36fa8"
    sha256 cellar: :any_skip_relocation, big_sur:  "3fe48ce9b38c0fb472ebeb78e0400eb3e8b84f60638dfe18edd92e23c471514a"
    sha256 cellar: :any_skip_relocation, catalina: "a3eb7112e71c076ec8ef93537029c2d25a083db0feb8d84537971e40ca0d4708"
  end
end
