require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "d0d004fa63490d958b7520827678268462bcb79a086aa8de0a4745361e10a065"
    sha256 cellar: :any_skip_relocation, monterey: "ef552e3f5881a168c75600bc399b59da655685134bd8a62fc170bfdc405faa2b"
    sha256 cellar: :any_skip_relocation, big_sur:  "0b8b91f1fac2da5e98fc3cddebfa88a96afc0397976d78550a1f8207c66b86c3"
  end
end
