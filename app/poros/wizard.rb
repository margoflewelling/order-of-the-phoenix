class Wizard
  attr_reader :name,
              :house,
              :role,
              :patronus

  def initialize(attributes)
    @name = attributes[:name]
    @role = attributes[:role] if attributes[:role].present?
    @patronus = attributes[:patronus].capitalize if attributes[:patronus].present?
    @house = attributes[:house]
  end

end
