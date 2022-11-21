require_relative "../lib/php_pecl_formula"

class PhpTranslit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  revision 2
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8c04c8a5b21094794b57fb6f4f9c903d7347a10ff26b7a142da06c6bf2f3fa0b"
    sha256 cellar: :any_skip_relocation, monterey: "9af1cd0cfc7c07d842ce34cb84cf93fe254a73c71e8dc8d0919d2dbae1ebdb68"
    sha256 cellar: :any_skip_relocation, big_sur:  "4d620e085865651dee1476bcfabefb8b8a9228c40d00e6fca5c66a5d42131fba"
    sha256 cellar: :any_skip_relocation, catalina: "7b35b5f60323bff9b2c5379ea7f360d9e72e08afc5923338c236d323c9fc3230"
  end
end
