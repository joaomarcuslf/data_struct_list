require_relative 'data_struct_list/version.rb'

module DataStructList
  class Head
    attr_accessor :quant, :next, :prev
    def initialize
      @quant = 0
    end
  end

  class Node
    attr_accessor :hash, :next
    attr_reader :id

    def initialize(hash)
      @@id_quantify ||= 0
      @id = @@id_quantify
      @@id_quantify+=1
      @hash = hash
      @next = nil
    end
  end

  class Stack
    attr_reader :first, :last, :head
    def initialize
      @head = Head.new
      @last = nil
      @first = nil
    end

    def insert(hash)
      if @head.quant == 0 then
        @head.next = Node.new(hash)
        @first = @head.next
        @last = @head.next
        @head.quant += 1

      else
        @last.next =  Node.new(hash)
        @last = @last.next
        @head.quant += 1
      end

      return @last.id
    end

    def find(id)
      elm = @first

      until elm == nil
        if elm.id == id then break end
        elm = elm.next
      end

      return elm
    end

    def remove
      return nil if @head.quant == 0

      elm = @head.next
      @head.quant-=1

      until elm.next == @last
        if elm == @last then break end
        elm = elm.next
      end

      if @first == @last then
        @first = nil
        @last = nil
        @head.next = nil
        return nil
      end

      aux = @last
      @last = elm
      elm.next = nil
      aux = nil
    end
  end

  class SimpleLinkedList < Stack

    def remove(id)
      elm = @first
      aux = @first

      until elm == nil
        if elm.id == id then break end
        aux = elm
        elm = elm.next
      end

      if elm!=nil then
        aux.next = elm.next
        @head.quant -= 1

        if elm == @head.next
          @first = elm.next
          @head.next = @first
        end
        if @last == elm then @last = aux end
        elm = nil
      end
    end
  end

  class CycleSimpleLinkedList < SimpleLinkedList
    def find(id)
      if @first == nil then return @first end

      elm = @first

      until elm == @last.next
        if elm.id == id then break end
        elm = elm.next
      end

      return elm
    end

    def insert(hash)
      if @head.quant == 0 then
        @head.next = Node.new(hash)
        @first = @head.next
        @last = @head.next
        @head.quant += 1
        @first.next = @last

      else
        @last.next =  Node.new(hash)
        @last = @last.next
        @head.quant += 1
      end

      @last.next = @first

      return @last.id
    end

    def remove(id)
      elm = @first
      aux = @first

      until elm == nil
        if elm.id == id then break end
        aux = elm
        elm = elm.next
      end

      if elm!=nil then
        aux.next = elm.next
        @head.quant -= 1

        if elm == @head.next
          @first = elm.next
          @head.next = @first
        end
        if @last == elm then @last = aux end
        elm = nil
      end
    end
  end
end

