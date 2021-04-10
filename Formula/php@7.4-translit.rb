require_relative "../lib/php_pecl_formula"

class PhpAT74Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "bea357284607b265d0dbd311c1d93ebaea9ef9107f4f44eab99b62a49bc27bf0"
    sha256 cellar: :any_skip_relocation, mojave:   "5fe1ae70271aa8ca8e142c189775a08dbcbe80ba3a4bbce50a3e903d522a1ab2"
  end
end
