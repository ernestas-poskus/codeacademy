class RecordInvalid < ActiveRecordError
  attr_reader :record # :nodoc:
    def initialize(record) # :nodoc:
      @record = record
      errors = @record.errors.full_messages.join(", ")
      super(I18n.t(:"#{@record.class.i18n_scope}.errors.messages.record_invalid", :errors => errors, :default => :"errors.messages.record_invalid"))
  end
end
  
  
 
  
def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end