class ActivitiesController < ApplicationController
    before_action :set_list
    before_action :set_activity, only: [:show, :edit, :update, :destroy]

      def index
        @activities = @list.activites
      end
    
      def new
        @activity = @list.activities.new
      end
    
      def show
        @activity = @list.activity.find(params[:id])
      end
    
      def edit
        @activity = @list.activities.find(params[:id])
      end
    
      def create
        @activity = @list.activities.new(activity_params)
        if @activity.save
          redirect_to list_path(@list)
        else
          render :new
        end 
      end
    
      def update
        @activity = @list.activities.find(params[:id])
        if @activity.update(activity_params)
          redirect_to list_activity_path([@list, @activity])
        else
          render :edit
        end
      end
    
      def destroy
        @list.activity.find(params[:id]).destroy
        redirect_to list_activities_ =path
      end
    
      private
    
      def activity_params 
        params.require(:activity).permit(:name, :image)
      end

      def set_list
        @list = List.find(params[:list_id])
      end

      def set_activity
        @activity = Activity.find(params[:id])
      end

end
