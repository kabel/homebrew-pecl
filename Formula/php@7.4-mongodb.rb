require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "f2404f81bcf9ff19b1ab11cca1c7351977974e32e39a578fd70b4c075a92016c"
    sha256 mojave:   "136690626a316ad99f3215d201e50004aac95c26b2eb1739dcf06ec97aad9f29"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
