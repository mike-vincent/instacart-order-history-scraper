class InstacartOrderHistory < Formula
  desc "Export your Instacart order history"
  homepage "https://mike-vincent.github.io/instacart-order-history/"
  url "https://raw.githubusercontent.com/mike-vincent/instacart-order-history/master/instacart-order-history"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  resource "manpage" do
    url "https://raw.githubusercontent.com/mike-vincent/instacart-order-history/master/man/man1/instacart-order-history.1"
    sha256 :no_check
  end

  def install
    bin.install "instacart-order-history"
    resource("manpage").stage do
      man1.install "instacart-order-history.1"
    end
  end

  test do
    assert_match "instacart-session-id", shell_output("#{bin}/instacart-order-history --help")
  end
end
