$ ->
  $('.delete-photo').click ->
    alert "deleting..."

  $('#upload-photos').fileupload
    dataType: "json"
    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#upload-photos').append(data.context)
        renderProgressBars()
        data.submit()
      else
        alert("#{file.name} is not a gif, jpeg, or png image file")
    progress: (e, data) ->
      if data.context
        completeProgressBars()
        console.log(data);
        data.context.find('.bar').css('width', '100%')
        location.reload(true);