import "bootstrap";

import formCheck from "./form_check"

import scrollLastMessageIntoView from "./scroll_last_message"


$(function () {
  $('[data-toggle="popover"]').popover()
})


console.log('hello from webpack!')

formCheck();
