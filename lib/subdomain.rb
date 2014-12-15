class Subdomain
  def self.matches?(request)
    case request.subdomain
    when 'www', 'ftp','admin', nil
      false
    else
      true
    end
  end
end
