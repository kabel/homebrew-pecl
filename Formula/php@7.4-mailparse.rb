require_relative "../lib/php_pecl_formula"

class PhpAT74Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.2.tgz"
  sha256 "b0647ab07ea480fcc13533368e38fdb4f4bb45d30dce65fc90652a670a4f4010"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "18bb600a0ee86e80a39f514ebf10adff16d722bfa540d78730136c683718b23e"
    sha256 cellar: :any_skip_relocation, mojave:   "434ee441970354a9b6ec3e3c3f84010a0eb8df63efc2ee0c2e9aa0cdcdf512f0"
  end
end
