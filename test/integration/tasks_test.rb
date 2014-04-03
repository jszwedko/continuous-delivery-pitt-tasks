require 'test_helper'

class TasksTest < ActionDispatch::IntegrationTest
  test "view task" do
    t = Time.now
    task = Task.create(title: 'Buy milk', description: 'From the grocer')

    get "/tasks/#{task.id}"

    assert_select('#title', /Buy milk/)
    assert_select('#description', /From the grocer/)
  end
end
