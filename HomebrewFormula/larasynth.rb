class Larasynth < Formula
  desc "Larasynth can learn to turn the knobs of your synthesizer for you."
  homepage "https://github.com/sommern/larasynth"
  url "https://github.com/sommern/larasynth/releases/download/v0.2.2/larasynth-source-0.2.2.tar.gz"
  sha256 "b791d139f630f69f14a858e50e31db1b4aef960f51d223cbeb27a107bc0e9b54"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "lara"
  end
end
