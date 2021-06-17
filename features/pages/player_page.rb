class PlayerPage
  def initialize

    @play_button = 'bmpui-id-56'
    @channel_list_button = 'bmpui-id-66'
    @channel_list = 'bmpui-id-36'
  end




  def click_play_button
    click_button(@play_button)
  end

  def is_channel_in_the_list(channel_name)
    click_button(@channel_list_button)

    list = find(:id, @channel_list).all('li')
    list_of_text = Array.new
    list.each do |item|

      list_of_text << item.text
    end



    list_of_text.include?(channel_name) ? puts('channel is there') : puts('channel is not there')


  end


end