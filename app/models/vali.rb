class GoodnessValidator < ActiveModel::Validator
def validate(name)
    if name.first_name == "Evil"
      name.errors[:base] << "This person is evil"
    end
  end
end