require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.6.tgz"
  sha256 "a69f1605583eabdb59c2cd4c17334b3267398a1d47e1fd7edb92d8bef9dee008"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "04db5eb157a38428948a5c75641ad3f0348e1574c327baa7bd2e75b336efe332"
    sha256 cellar: :any_skip_relocation, ventura:  "6dae4146c38c35b52e5974d4e51384dd60f49bcd05284befbf4f98d32640a7de"
    sha256 cellar: :any_skip_relocation, monterey: "ec94823d2138f6d9a1b2499cd79afdd204c2bf3aaf91e91d6a08729753f13ee1"
  end

  deprecate! date: "2023-11-26", because: :unsupported
end
