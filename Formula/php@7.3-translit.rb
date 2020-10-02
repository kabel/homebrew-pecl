require_relative "../lib/php_pecl_formula"

class PhpAT73Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1f167da0f0c3e7b67dd878edf3d91fe80d515c8a72abb91911163aaa8567a5cd" => :catalina
    sha256 "1dc19a8641a94de2a114f3b653a1873c4dfa899ca2404c3156affbf8e1de0d28" => :mojave
  end
end
