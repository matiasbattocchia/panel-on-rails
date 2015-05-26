// $(document).ready(function() {
var chart = c3.generate({
    size: {
      height: 240,
      width: 500,
    },
    bindto: '#chart',
    data: {
      json: $.map($('#chart').data('evolution'), function(a) {
        return {Año: a.anio, Producción: a.produccion};
      }),
      keys: {
        x: 'Año',
        value: ['Producción'],
      },
    },
    axis: {
      x: {
        tick: {
          fit: true,
        }
      }
    },
});

  var companies = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('DenominacionCorta'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 10,
    prefetch: '/aseguradoras.json',
  });

  companies.initialize();

  $('.typeahead').typeahead({highlight: true, minLength: 3}, {
    displayKey: 'DenominacionCorta',
    source: companies.ttAdapter(),
    restrictInputToDatum: true,
    templates: {
      suggestion: function(context) { return '<p>' + context.DenominacionCorta + '</p>'; }
    }
  }).on('typeahead:selected', function(e, datum) {
    $('input[name=código]').val(datum.CiaId);
    e.target.form.submit();
  });


  // {"i_pro_imp_produccion":"515870.85","id_com_compania":501,"id_geo_provincia":6,"id_pro_ramo_produccion":103,"id_tie_anio":2012}
  var datos = function() {
    var obj = {};
    $.each($('#container').data('production'), function(i, a) {
      obj['AR' + (a.provincia_id > 9 ? '' : '0') + a.provincia_id] = {produccion: a.produccion, fillKey: function(a) { if (a > 1000000) {return 'mucho'} else if (a > 100000) {return 'algo'} else {return 'poco'} }(parseInt(a.produccion))};
    });
    return obj;
  }

  var map = new Datamap({
    element: document.getElementById('container'),
    geographyConfig: {
      dataUrl: '/argentina.topo.json',
      popupTemplate: function(geography, data) {
        return '<div class="hoverinfo">' + geography.properties.name + (data ? '<br>' + '$' +  data.produccion : '');
      },
    },
    scope: 'provincias',
    fills: {
      defaultFill: '#cccccc',
      poco: '#9eed4e',
      algo: '#649632',
      mucho: '#2c4216',
    },
    data: datos(),
    setProjection: function(element) {
      var projection = d3.geo.mercator() //.equirectangular()
        .center([-19, -45])
        // .center([-34.36, -58.22])
        .scale(460)
        // .translate([element.offsetWidth / 2, element.offsetHeight / 2]);
        //34° 36' S, 58° 22

       var path = d3.geo.path().projection(projection);
       return {path: path, projection: projection};
    }
  });

// var width = 960,
//     height = 1160;

// var svg = d3.select("body").append("svg")
//     .attr("width", width)
//     .attr("height", height);

// d3.json("/argentina.topo.json", function(error, uk) {
//   if (error) return console.error(error);

//   svg.append("path")
//       .datum(topojson.feature(uk, uk.objects.provincias))
//       .attr("d", d3.geo.path().projection(d3.geo.mercator()));
// });
// });

