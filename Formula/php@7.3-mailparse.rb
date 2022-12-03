require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "d59aca217ba7f3779e191691d0b6dba2ae33a893663ccf3b1e6eea0c8d286cfd"
    sha256 cellar: :any_skip_relocation, catalina: "43bf9726b8625cd1ec864b56a01199d79f11ab249b616bd817ffeb305c6d3e75"
    sha256 cellar: :any_skip_relocation, mojave:   "7f5db8434d151494cd07dbcbc57b189e1a77568424ae3360cb6a80f70cd97215"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
