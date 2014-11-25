require './label_state'
class LabelStates
  attr_reader :label_states #atomic_propositions

  def initialize
    @label_states = {}
  end

  def label_states_list(label_states, aps)
    label_states.each do |state, labels|
      labels.delete_if { |label| !aps.include?(label)} if labels
      @label_states[state] = LabelState.new(state, labels)
    end
  end
end