require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.0.tgz"
  sha256 "0d9f670b021288bb6c9b060979f191f1da773d729100673166f38b617e24317e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "38cc2e70686eb863824fd6f7bd62aa3f0f2780d853756326f213653afacf3ce7"
    sha256 catalina: "c39dcdbd0604bd9885667dad4ed32f09ea3eca73a1fa56ebfe8e4da1ceb0ded5"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
