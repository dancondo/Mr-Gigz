import "bootstrap";

import formCheck from "./form_check"

import scrollLastMessageIntoView from "./scroll_last_message"
import highlightGig from "../components/highlight_gig"

import popOver from "./pop_over"

import '../plugins/flatpickr'
import '../plugins/tokenizer'


formCheck();
scrollLastMessageIntoView();
popOver();
highlightGig();
