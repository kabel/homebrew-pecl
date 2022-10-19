require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.50.0.tgz"
  sha256 "2e0bebc351d9cb07ef1d3685f3c4f976d297bbf946479c5e4be4ecaaa3500927"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "5b6c09448fc0e788309c6f5bf55e150bdda72dff340768a1a4c85e88305896b0"
    sha256 cellar: :any_skip_relocation, big_sur:  "0992fa1a646d5e5e4dc51a7d826b2fcb36a0b82fd96e915ab945aa167d0187af"
    sha256 cellar: :any_skip_relocation, catalina: "7549283f49ce873c52f93402d7fb57569b1a383f65b35b657dcf170315ad3867"
  end
end
