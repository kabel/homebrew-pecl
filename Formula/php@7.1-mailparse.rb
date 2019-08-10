require_relative "../lib/php_pecl_formula"

class PhpAT71Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.3.tgz"
  sha256 "bfaeae61342c147bcb66b9a90949722e04b65548e6a9d1eb4896aeb62409d302"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f4241bedaf01366a50a638946239eb28bfd0857598cb130fa8f021d39504d876" => :mojave
    sha256 "cb6f58ccf2657a3ad7a6e6ffdb7d5539338ed97bab57c8b1f76dc4d52d6f2d96" => :high_sierra
  end

end
