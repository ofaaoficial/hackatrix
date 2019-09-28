<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hackatrix - ofaaoficial</title>
    <link rel="stylesheet" href="{{ asset('js/mapbox/mapbox-gl.css') }}">
</head>
<body>
<style>
    #map {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100vh;
    }

    .marker {
        width: 50px;
        height: 50px;
        background-color: red;
        border-radius: 50%;
        display: block;
        cursor: pointer;
    }
</style>
<div id="map"></div>
<script src="{{ asset('js/mapbox/mapbox-gl.js') }}"></script>
<script src='{{ asset('js/mapbox/mapbox-gl-languajes.js')}}'></script>

<script>
    /**
     * token
     * @type {string}
     */
    mapboxgl.accessToken = 'pk.eyJ1Ijoib2ZhbWFkbyIsImEiOiJjazBzdnlwMXYwNzUyM2NyMWQ1YmxxamI5In0.H9XRkwAYBwyJTp70IJA8Rg';


    /**
     * verify support of navegator
     *
     */

    if (!mapboxgl.supported()) alert('Este navegador no soporta Mapbox');

    /**
     object with basic informacion to start
     */
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [0, 0],
        zoom: 3
    });


    /**
     * change language
     */
    map.addControl(new MapboxLanguage({
        defaultLanguage: 'es'
    }));


    /**
     * Control para geolocaliar al usuario
     */
    map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true,
        },
        trackUserLocation: true,
    }));

    /**
     * add control to fullscreen
     */
    map.addControl(new mapboxgl.FullscreenControl());

    /**
     *  add control to navegation.
     */
    map.addControl(new mapboxgl.NavigationControl());


    /**
     * center according to user coordinates
     */
    navigator.geolocation.getCurrentPosition(res => {
            console.log(res);
            map.flyTo({
                center: [res.coords.longitude, res.coords.latitude],
                zoom: 10
            });
        },
        err => {
            alert(err);
        });


    /**
     * add marks
     */

    // let Marcadores = [
    //     {
    //         name: 'Marcador 1',
    //         coordenates: [
    //             -74.1351985,
    //             4.528169599999999
    //         ]
    //     },
    //     {
    //         name: 'Marcador 2',
    //         coordenates: [
    //             -74.1351999, 4.598169595999999
    //         ]
    //     },
    // ];

    let Marcadores = @json($marks);


    Marcadores.forEach(a => {
        let el = document.createElement('div');
        el.className = 'marker';

        el.addEventListener('click', () => {
            alert('data');
        });



        new mapboxgl.Marker(el)
            .setLngLat([a.latitude, a.longitude])
            .addTo(map);
    })

    /**
     * show buildings on 3D
     */

    // The 'building' layer in the mapbox-streets vector source contains building-height
    // data from OpenStreetMap.
    map.on('load', function () {
        // Insert the layer beneath any symbol layer.
        var layers = map.getStyle().layers;

        var labelLayerId;
        for (var i = 0; i < layers.length; i++) {
            if (layers[i].type === 'symbol' && layers[i].layout['text-field']) {
                labelLayerId = layers[i].id;
                break;
            }
        }

        map.addLayer({
            'id': '3d-buildings',
            'source': 'composite',
            'source-layer': 'building',
            'filter': ['==', 'extrude', 'true'],
            'type': 'fill-extrusion',
            'minzoom': 15,
            'paint': {
                'fill-extrusion-color': 'red',

                // use an 'interpolate' expression to add a smooth transition effect to the
                // b    uildings as the user zooms in
                'fill-extrusion-height': [
                    "interpolate", ["linear"], ["zoom"],
                    15, 0,
                    15.05, ["get", "height"]
                ],
                'fill-extrusion-base': [
                    "interpolate", ["linear"], ["zoom"],
                    15, 0,
                    15.05, ["get", "min_height"]
                ],
                'fill-extrusion-opacity': .6
            }
        }, labelLayerId);
    });


</script>
</body>
</html>