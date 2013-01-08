class Samples < ActiveRecord::Base
   attr_accessible :name, :email, :phone, :religion
   
  validates :name, :email, :phone, :presence=>true
  #validates :email,:uniqueness=>true
  #validates :phone, :numericality=>true
  #validates :name,:length=>{:within=>2..7}
  #validates :email, :confirmation => true
  #validates :name, :presence => true
  
   #validates :name, :format => { :with => /\A[a-zA-Z]+\z/,
    #:message => "Only letters allowed" }
  
  #validates :email, :exclusion => { :in => %w(www us ca jp),
   #:message => "Email %{value} is reserved." }
  #validates :terms_of_service, :acceptance => { :accept => 'yes' }
  
   #validates :name, :inclusion => { :in => %w(small medium large),
    #:message => "%{value} is not a valid size" }
  
   #validates :phone, :numericality => true
  #validates :name, :numericality => { :only_integer => true }
  
  #validates :email, :uniqueness => { :case_sensitive => true }
  
  
  #validates_each :name do |record, attr, value|
   # record.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  #end
  
  before_validation :ensure_login_has_a_value
 
  protected
  def ensure_login_has_a_value
    if name.nil?
      self.name = email unless email.blank?
    end
  end
  
  #validates_with GoodnessValidator
  
end
