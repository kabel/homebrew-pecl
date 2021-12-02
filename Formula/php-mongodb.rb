require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.11.1.tgz"
  sha256 "838a5050de50d51f959026bd8cec7349d8af37058c0fe07295a0bc960a82d7ef"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "38cc2e70686eb863824fd6f7bd62aa3f0f2780d853756326f213653afacf3ce7"
    sha256 catalina: "c39dcdbd0604bd9885667dad4ed32f09ea3eca73a1fa56ebfe8e4da1ceb0ded5"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
