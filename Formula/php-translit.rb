require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  revision 1
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "76ee8f0043fbe00dc2286e63ec9d2bac17070373a652044863d5bc6a1eee4b4d" => :catalina
    sha256 "3a025ef4f8a78dfa54fba6ed480d436b794f2565cb9e6196974c58758a07fafc" => :mojave
  end
end
