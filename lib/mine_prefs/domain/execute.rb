module MinePrefs
  module Domain
    def self.Execute(command: nil, observer: nil)
      if command.valid?
        command.execute
        observer.command_succeeded(command)
      else
        observer.validations_failed(command.failed_validations)
      end
    end
  end
end
