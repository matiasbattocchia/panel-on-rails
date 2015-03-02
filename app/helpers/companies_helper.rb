module CompaniesHelper
  def company_path(company)
    "/compañías/#{company.id}"
  end

  def active_path(path)
    request.path.match(/#{path}/) ? 'active' : 'sad'
  end
end
