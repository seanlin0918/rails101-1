class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.find(group_params)
        @group.save
        redirect_to group_path
    end
end
