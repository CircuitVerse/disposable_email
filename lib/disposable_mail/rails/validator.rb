class UndisposableValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :undisposable, **options) if DisposableMail.include?(value)
  end
end
