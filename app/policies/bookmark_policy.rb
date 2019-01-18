class BookmarkPolicy
  attr_reader :user, :bookmark

  def initialize(user, bookmark)
    @user = user
    @bookmark = bookmark
  end

  def create?
    user.present?
  end

  def edit?
    update?
  end

  def update?
    user.present? && (user.id == bookmark.user)
  end

  def destroy?
    user.present? && (user.id == bookmark.user)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
