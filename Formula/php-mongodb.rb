require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.0.tgz"
  sha256 "eeb6268d34bd0b4a3dcc60dde4e484f5cf4fa2439ca3d9f024c0000e99ee7240"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "a1015fb73adfacc52d24d1ed88b474b1288d1410075e42ea4491a6e18b8f1f14"
    sha256 cellar: :any, monterey: "ab50bdc2cd4c18b124fe52034320b43a3f0ddba45af64a56c5fe123e46745051"
    sha256 cellar: :any, big_sur:  "fed9a4642138f677a99cb2b2a818258bb889464b7102d802a61f362616241688"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
