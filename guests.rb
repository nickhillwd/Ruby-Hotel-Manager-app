class Guest

  attr_reader :last_name, :party_number, :email_address

  def initialize(last_name, party_number, email_address)
    @last_name = last_name.capitalize
    @party_number = party_number.to_i
    @email_address = email_address.downcase
  end

end