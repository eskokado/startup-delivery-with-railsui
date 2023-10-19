module Manager
  class GoalsController < InternalController
    before_action :set_goal,
                  only: %i[show edit update
                           destroy]

    def index
      @goals = Goal.all
    end

    def show; end

    def new
      @goal = Goal.new
    end

    def edit; end

    def create
      @goal = Goal.new(goal_params)

      respond_to do |format|
        if @goal.save
          format.html do
            redirect_to manager_goal_path(@goal),
                        notice: 'Goal was successfully created.'
          end
        else
          format.html do
            render :new,
                   status: :unprocessable_entity
          end
        end
      end
    end

    def update
      respond_to do |format|
        if @goal.update(goal_params)
          format.html do
            redirect_to manager_goal_path(@goal),
                        notice: 'Goal was successfully updated.'
          end
        else
          format.html do
            render :edit,
                   status: :unprocessable_entity
          end
        end
      end
    end

    def destroy
      @goal.destroy

      respond_to do |format|
        format.html do
          redirect_to manager_goals_path,
                      notice: 'Goal was successfully destroyed.'
        end
      end
    end

    private

    def set_goal
      @goal = Goal.find(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:name,
                                   :description)
    end
  end
end