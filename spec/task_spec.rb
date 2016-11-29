require('rspec')
require('task')

describe('Task') do
  describe('#description') do
    it('lets you give it a description') do
      new_task = Task.new("scrub the zebra")
      expect(new_task.description()).to(eq("scrub the zebra"))
    end
  end
end
