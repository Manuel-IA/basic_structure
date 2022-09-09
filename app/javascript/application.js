// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"

document.addEventListener('DOMContentLoaded', function() {
  const elems = document.querySelectorAll('.sidenav')
  M.Sidenav.init(elems, {})
  const elemsDropdown = document.querySelectorAll('.dropdown-trigger')
  M.Dropdown.init(elemsDropdown, {})
  const elemsSelect = document.querySelectorAll('select')
  M.FormSelect.init(elemsSelect, {})
})
