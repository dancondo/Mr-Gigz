import flatpickr from  'flatpickr';
import { Portuguese } from "flatpickr/dist/l10n/pt.js"
import 'flatpickr/dist/themes/dark.css'

flatpickr('.datepicker', {
  "locale": Portuguese,
  altInput: true,
  enableTime: true
});
