class ApplicationService
  include ActiveModel::Attributes

  def errors
    @errors = ||= ActiveModel::Errors.new(self)
  end
end
