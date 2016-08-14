require 'test_helper'

class PostTest < ActiveSupport::TestCase

  setup do
    @post = Post.new
  end

  test 'should not save post without title' do
    @post.title = nil
    @post.content = 'Example text'
    @post.published_at = DateTime.new
    @post.user = users(:francesco)
    assert_not @post.save, 'Saved post without title'
  end

  test 'should not save post without content' do
    @post.title = 'Example title'
    @post.content = ''
    @post.published_at = DateTime.new
    @post.user = users(:francesco)
    assert_not @post.save, 'Saved post without content'
  end

  test 'should not save post without published at' do
    @post.title = 'Example title'
    @post.content = 'Example content'
    @post.published_at = nil
    @post.user = users(:francesco)
    assert_not @post.save, 'Saved post without published_at'
  end

  test 'should not save post without user' do
    @post.title = 'Example title'
    @post.content = 'Example content'
    @post.published_at = DateTime.new
    @post.user = nil
    assert_not @post.save, 'Saved post without user'
  end

  test 'should save post with all required fields' do
    @post.title = 'Example title'
    @post.content = 'Example content'
    @post.published_at = DateTime.new
    @post.user = users(:francesco)
    assert @post.save, 'Not saved post with all required fields'
  end

  teardown do
    puts @post.errors.messages
  end

end
