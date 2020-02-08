# frozen_string_literal: true

RSpec.describe JsonplaceholderApi do
  it 'has a version number' do
    expect(JsonplaceholderApi::VERSION).not_to be nil
  end

  it 'returns expected posts' do
    client = JsonplaceholderApi::Client.new
    posts = client.posts.all
    posts_json = posts.to_json
    post = posts_json[0]
    expect(post['userId']).not_to be_nil
    expect(post['title']).not_to be_nil
    expect(post['body']).not_to be_nil
  end

  it 'returns expected spesific post' do
    client = JsonplaceholderApi::Client.new
    post = client.posts.find(1)
    post_json = post.to_json
    expect(post_json['userId']).not_to be_nil
    expect(post_json['title']).not_to be_nil
    expect(post_json['body']).not_to be_nil
  end

  it 'returns expected post comments' do
    client = JsonplaceholderApi::Client.new
    post = client.posts.find(1)
    comments = post.comments
    comments_json = comments.to_json
    first_comment = comments_json[0]
    expect(first_comment['postId']).not_to be_nil
    expect(first_comment['id']).not_to be_nil
    expect(first_comment['name']).not_to be_nil
    expect(first_comment['email']).not_to be_nil
  end
end
