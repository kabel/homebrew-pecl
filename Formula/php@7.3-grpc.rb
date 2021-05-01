require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.1.tgz"
  sha256 "2abefeea06491ac76862bacf16e78732ffbf4ffb0b0e4f74263d4f1a5c7745d6"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "217add198d3d8df1e0091737bc20709a4b5224b2160a9a0cdf8ffe1af7dc82fc"
    sha256 cellar: :any_skip_relocation, catalina: "917b2ddbdc9c4877cbe1cf949b6e006d900c479017bb79ffafd535c4016da187"
    sha256 cellar: :any_skip_relocation, mojave:   "43810eb98e53aa41d33964e04de35bf305c7fd0ae6389f329b028e7e147b9a71"
  end
end
