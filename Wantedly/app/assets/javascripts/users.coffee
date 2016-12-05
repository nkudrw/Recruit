$ ->
  $('#skills')
    .on 'click', '.add, .cancel', (event) ->
      # 表示を切り替え
      toggleEditor $(this).closest('.skill')

# 表示モードと編集モードを切り替える。
toggleEditor = ($container) ->
  # 表示、非表示を切り替え
    $container.find('.viewer, .editor').toggle()
