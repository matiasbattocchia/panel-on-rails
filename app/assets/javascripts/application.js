//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap
//= require twitter/typeahead

var compañías = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('val'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: [{ val: 'dog' }, { val: 'pig' }, { val: 'moose' }],
  // remote: '/compañías.json'
});

compañías.initialize();

$('.typeahead').typeahead({highlight: true}, {
  // name: 'aseguradoras',
  displayKey: 'val',
  source: compañías.ttAdapter()
});
