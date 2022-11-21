require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.2.tgz"
  sha256 "6f7ca35b997cc9d75431765e11f675bddb634aaa9b63b4087181fa99b9f2aaaa"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "015f429e1720bf4ad9a12b9dbb8993dc06556bd1bb9b0b711499b96ef25628ca"
    sha256 cellar: :any, big_sur:  "5d08138844ad30d8e2421cb5d9e48f559b7a9c6267f7f23388d560a816fa3523"
    sha256 cellar: :any, catalina: "46053e1e1fda3377286a808e77c99d73c514672a44ca17678ba97b69ceea5dba"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
