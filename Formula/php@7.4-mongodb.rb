require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "f2404f81bcf9ff19b1ab11cca1c7351977974e32e39a578fd70b4c075a92016c"
    sha256 mojave:   "136690626a316ad99f3215d201e50004aac95c26b2eb1739dcf06ec97aad9f29"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
