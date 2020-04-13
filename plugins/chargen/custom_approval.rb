module AresMUSH
  module Chargen
    def self.custom_approval(char)

      # If you don't want to have any custom approval steps, just leave this blank.

      # Otherwise, do what you need to do.  Here's an example of how to add
      # someone to a role based on their faction:
      #
      #  faction = char.group("Faction")
      #  role = Role.find_by_name(faction)
      #
      #  if (role)
      #    char.roles.add role
      #  end
      #
      # See https://www.aresmush.com/tutorials/config/chargen.html for details.
      department = char.group("Department")
      if department == "Command"
        department = "Tactical"
      end
      department.nil? ? department_hyphen = "" : department_hyphen = department.sub(" ", "-")

      role = Role.find_one_by_name(department_hyphen)
      channel = Channel.find_one_by_name(department)

      if role
        Roles.add_role(char, role.name)
      end

      if channel && Channels.can_join_channel?(char, channel)
        Channels.join_channel(channel, char)
      end

    end
  end
end
