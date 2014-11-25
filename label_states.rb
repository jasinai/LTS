require './label_state'
class LabelStates
  attr_reader :label_states #atomic_propositions

  def initialize
    @label_states = {}
  end

  def label_states_list(label_states)
    label_states.each { |state, label| @label_states[state] = LabelState.new(state, label) }
  end
end