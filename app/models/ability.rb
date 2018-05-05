#je gère mes autorisation ici
class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    can :read, [Project, ReleaseCourier,Courier]


    #pour le président
    if user.skin == :President
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour le CST
    if user.skin == :CST
      #can :access, :rails_admin
      #can :dashboard
      #can :manage, :all
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'ET1
    if user.skin == :ET1
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'ET2
    if user.skin == :ET2
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'EJ1
    if user.skin == :EJ1
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'EJ2
    if user.skin == :EJ2
      can [:crud], Project
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end
    #pour l'assistante du présidente
    if user.skin == :Assistante_PR
      can [:crud], Courier
      can [:crud], ReleaseCourier
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end

    #pour l'assistante du CST
    if user.skin == :Assistante_CST
      can [:crud], Courier
      can [:crud], ReleaseCourier
      can [:crud], Archive
      can [:crud], ArchiveCourier
      can [:crud],ArchiveProject
      can [:crud], ArchiveReleaseCourier
    end


  end
end