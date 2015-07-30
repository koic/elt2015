$ ->
  # NOTE reflow しないと他のページに遷移したあとにエラーになってしまうため
  $(document).foundation('tab', 'reflow')
  $(document).foundation('topbar', 'reflow')
