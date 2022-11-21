require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.2.tgz"
  sha256 "6f7ca35b997cc9d75431765e11f675bddb634aaa9b63b4087181fa99b9f2aaaa"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "299246ba7e33159afc222842737bb95c017f04c53db43d3150cc1c22eeba3629"
    sha256 cellar: :any, big_sur:  "06301127715757d1ed00f4d1da772c6f1b250f0b2ac077b50d24d83900b5593a"
    sha256 cellar: :any, catalina: "d71016a1de5b9beebc416511ec63c816e44cb469109e4f1a118f326be987f117"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
