class ActivitiesController < ApplicationController
    before_action :set_list
    before_action :set_activity, only: [:show, :edit, :update, :destroy]

      def index
        @activities = @list.activites.all
      end
    
      def new
        @activity = @list.activities.new
      end
    
      def show
      end
    
      def edit
      end
    
      def create
        @activity = @list.activities.new(activity_params)
        if @activity.save
          redirect_to list_path(@list)
        else
          render :show # there is an issue with saving, this needs to be #new when you fix it
        end 
      end
    
      def update
        if @activity.update(activity_params)
          redirect_to list_path(@list)
        else
          render :edit
        end
      end
    
      def destroy
        @activity.destroy
        redirect_to list_path(@list)
      end
    
      private
    
      def activity_params 
        params.require(:activity).permit(:name, :image, :list_id)
      end

      def set_list
        @list = List.find(params[:list_id])
      end

      def set_activity
        @activity = Activity.find(params[:id])
      end

end
