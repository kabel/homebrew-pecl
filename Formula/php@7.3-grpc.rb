require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.38.0.tgz"
  sha256 "4bec8f981b7b074ed78bc42ef229dcfb6c5fe3782f29bc4980b4da00866d47f9"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "217add198d3d8df1e0091737bc20709a4b5224b2160a9a0cdf8ffe1af7dc82fc"
    sha256 cellar: :any_skip_relocation, catalina: "917b2ddbdc9c4877cbe1cf949b6e006d900c479017bb79ffafd535c4016da187"
    sha256 cellar: :any_skip_relocation, mojave:   "43810eb98e53aa41d33964e04de35bf305c7fd0ae6389f329b028e7e147b9a71"
  end
end
