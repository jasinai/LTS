require './atomic_proposition'
class AtomicPropositions < Hash

  attr_reader :aps #atomic_propositions

  def initialize
    @aps = {}
  end

  def atomic_proposition_list(aps)
    aps.each { |ap_name| @aps[ap_name] = AtomicProposition.new(ap_name) }
  end
end