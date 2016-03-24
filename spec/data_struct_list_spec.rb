require 'rspec'
require_relative '../lib/data_struct_list.rb'

describe DataStructList do
  describe DataStructList::Stack do
  end

  describe DataStructList::SimpleLinkedList do
    before {
      @list_tester = DataStructList::SimpleLinkedList.new
    }
    context "when creating a new simple linked list" do
      it 'should show the quantity zero' do
        expect(@list_tester.head.quant).to eq(0)
      end
      it 'should insert a new node' do
        expect(@list_tester.insert({})).to eq(0)
        expect(@list_tester.head.quant).to eq(1)
      end
    end
    context "when seaching for an elm" do
      before {
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
        @list_tester.insert({})
      }

      it 'should be nil if id could\'nt be found or not nil if could' do
        expect(@list_tester.find(13)).to be_nil
        expect(@list_tester.find(3)).to_not be_nil
        expect(@list_tester.head.quant).to eq(10)
      end
    end
  end
end
