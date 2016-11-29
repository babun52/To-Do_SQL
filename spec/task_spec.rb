require('rspec')
require('task')

describe('Task') do
  describe('#description') do
    it('lets you give it a description') do
      new_task = Task.new("scrub the zebra")
      expect(new_task.description()).to(eq("scrub the zebra"))
    end
  end
  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('adds a task to the array of the saved tasks') do
      new_task = Task.new("wash the lion")
      new_task.save()
      expect(Task.all()).to(eq([new_task]))
    end
  end
end
