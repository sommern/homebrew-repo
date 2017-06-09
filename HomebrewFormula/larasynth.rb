class Larasynth < Formula
  desc "Larasynth can learn to turn the knobs of your synthesizer for you."
  homepage "https://github.com/sommern/larasynth"
  url "https://github.com/sommern/larasynth/releases/download/v0.2.3/larasynth-source-0.2.3.tar.gz"
  sha256 82aecbefe3db0163a7a7aa913b77ee1b5046acbcc92e6671e00aea46ac872606

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
