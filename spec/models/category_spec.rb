require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'with children relation' do
    let(:parent){create :category}
    let(:child){create :category}
    let(:relation){create :category_tree, parent: parent, child: child}

    it 'should set parent-child relation' do
      relation
      is_asserted_by{ parent.children == [child] }
      is_asserted_by{ child.parents == [parent] }
    end
  end
end
