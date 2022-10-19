require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.50.0.tgz"
  sha256 "2e0bebc351d9cb07ef1d3685f3c4f976d297bbf946479c5e4be4ecaaa3500927"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "8a6298eacf09c64e20b66863bff22018f1dce171c9743461e699b79cf21ab5af"
    sha256 cellar: :any_skip_relocation, big_sur:  "57dbe7b72371085978eabe19c8ff2204467b050eb7e5442bfcd642a61b49515e"
    sha256 cellar: :any_skip_relocation, catalina: "f2a7dbe7d7325c0bc7de371f347ecb0778bf35d25439260f284c95c44a0be6c3"
  end
end
