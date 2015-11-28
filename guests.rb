class Guest

  attr_reader :last_name, :party_number, :email_address, :check_in, :check_out

  def initialize(last_name, party_number, email_address, check_in, check_out)
    @last_name = last_name.capitalize
    @party_number = party_number.to_i
    @email_address = email_address.downcase
    @check_in = check_in
    @check_out = check_out
  end

end