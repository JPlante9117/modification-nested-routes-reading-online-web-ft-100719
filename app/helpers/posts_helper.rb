module PostsHelper

    def author_id_field(post)
        if post.author.nil?
            select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
        else
            hidden_field_tag "post[author_id", post.author_id
        end
    end

    def display_author_if_present(post)
        if post.author
            post.author.name
        end
    end
  
end
