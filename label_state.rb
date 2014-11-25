class LabelState
  attr_accessor :state_name, :true_labels

  def initialize(state_name, true_labels)
    @state_name = state_name
    @true_labels = true_labels
  end
end