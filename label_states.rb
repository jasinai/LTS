require './label_state'
class LabelStates
  attr_reader :label_states

  def initialize
    @label_states = {}
  end

  def label_states_list(label_states, aps)
    label_states.each do |state, labels|
      labels.delete_if { |label| !aps.include?(label)} if labels
      @label_states[state] = LabelState.new(state, labels)
    end
  end

  def compose(label_states, other_label_states, states)
    label_states.each do |name, label_state|
      other_label_states.each do |name2, label_state2|
        new_name = "#{name} #{name2}"
        new_trueLabels = label_state.true_labels.concat(label_state2.true_labels).uniq
        @label_states[new_name] = new_trueLabels if states.include?(new_name)
      end
    end
  end
end