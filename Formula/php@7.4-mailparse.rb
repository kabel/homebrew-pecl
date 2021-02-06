require_relative "../lib/php_pecl_formula"

class PhpAT74Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.1.tgz"
  sha256 "c70f2650f81f7e234e5e2c8b079f3db04f38c269cf906c7846242fe9df92ce0a"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "18bb600a0ee86e80a39f514ebf10adff16d722bfa540d78730136c683718b23e" => :catalina
    sha256 "434ee441970354a9b6ec3e3c3f84010a0eb8df63efc2ee0c2e9aa0cdcdf512f0" => :mojave
  end
end
