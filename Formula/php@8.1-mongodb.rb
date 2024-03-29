require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.2.tgz"
  sha256 "84081b780d48af884d47f0339800c3666c664c66f0035c66d43a34a10fb67376"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "d9226c0f1eb55f50e5e9d9b46ab5d4ffb555b59d813e5c613d867b8ec62a3d42"
    sha256 cellar: :any, ventura:  "574c5da255fcf739669ff30987a2b6a5b8d923115140b332e9e6c95d352bc40d"
    sha256 cellar: :any, monterey: "4ff5e8404f813f42d5593346d56efb272f28d876bd583503d17fe58e61d63535"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
