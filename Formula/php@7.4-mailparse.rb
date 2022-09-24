require_relative "../lib/php_pecl_formula"

class PhpAT74Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "3075812e65b948e080369d3edefcf205e3f666eea019c7d8d45db6711d1239d1"
    sha256 cellar: :any_skip_relocation, big_sur:  "3f8ca62500d453dc9af96a9e784ecce6adfe35d435e0d843c832be0f94586987"
    sha256 cellar: :any_skip_relocation, catalina: "fe7e4e2d0e2a5dacf22aeccb419ca51d4d9ef3e42188672e54080b73045f7317"
  end
end
