randomString = (length=8) ->
  id = ""
  id += String.fromCharCode(97 + Math.floor(Math.random() * 26)) while id.length < length
  id.substr 0, length

$ ->
  $('#encode-button').on 'click', ->
    plaintext = $('#plaintext').val()
    number_of_junk = $('#length').val()
    cyphertext = ""
    for i in [0..plaintext.length-1]
      cyphertext = cyphertext + randomString(number_of_junk - 1) + plaintext[i]
    $('#cyphertext').val(cyphertext)