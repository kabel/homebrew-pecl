require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.62.0.tgz"
  sha256 "ceabf3c564cd3d61ca7a9a06ebdde777322e50701a454f1c5d8a5291afe59302"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "cab93ca791fa2ca4b877fcba1d7af1cc5dc4bb1d5ea3d4a9cf3a515c4537e721"
    sha256 cellar: :any_skip_relocation, ventura:  "1257856c9513a91cc8735ecd3931f0805874236133146ff63670d414d7e2f617"
    sha256 cellar: :any_skip_relocation, monterey: "5c00edf3a1bce978c2018454a15c09d85cc34cc636a87135eef0c148f2af01f8"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
