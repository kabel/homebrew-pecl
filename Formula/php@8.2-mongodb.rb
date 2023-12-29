require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.2.tgz"
  sha256 "84081b780d48af884d47f0339800c3666c664c66f0035c66d43a34a10fb67376"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5174ab0943a6101de1d634e6f55aab36cd66c9d4076bff7a1663dab1e135212e"
    sha256 cellar: :any, ventura:  "fe0ebd51d24c9e48a84db97589fd7b0135bdf298ace9fac0fb7d2df8bc125fb2"
    sha256 cellar: :any, monterey: "5ea573a279142f73f0e4f5ccba468c327a5c412821daa5844f24003102301e3d"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
