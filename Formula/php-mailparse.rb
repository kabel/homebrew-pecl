require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.6.tgz"
  sha256 "a69f1605583eabdb59c2cd4c17334b3267398a1d47e1fd7edb92d8bef9dee008"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "90daf8fbf4ca99ae4e0c0323b0d8570cf1c269ec4f2946e29dc2b7f530c21c1a"
    sha256 cellar: :any_skip_relocation, ventura:  "06ed04dd0975467f2f2a3b325530e4cfee73e21f7e7a6dcfd047e1b536f136f8"
    sha256 cellar: :any_skip_relocation, monterey: "6f5410c528b555effee31917a1fe374e3ed5235d6e7f0f6c9bcc14929efafbdf"
  end
end
