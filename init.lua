-- init script content
-- This file will be run once after deployment to configure the Application Solution. 
print("Begin initialization.")


default_dashboard_config = '{
  "allow_edit": true,
  "columns": 3,
  "datasources": [
    {
      "name": "00:11:22:33:44:55 Timeseries",
      "settings": {
        "method": "GET",
        "name": "00:11:22:33:44:55 Timeseries",
        "refresh": 3,
        "url": "/v1/data/00:11:22:33:44:55",
        "use_thingproxy": false
      },
      "type": "JSON"
    }
  ],
  "panes": [
    {
      "col": {
        "3": 3,
        "4": -7,
        "5": 4
      },
      "col_width": "1",
      "row": {
        "3": 1,
        "4": 1,
        "5": 1
      },
      "title": "Temperature Metrics",
      "widgets": [
        {
          "settings": {
            "max_value": 100,
            "min_value": "-100",
            "title": "temp",
            "units": "Fahrenheit",
            "value": "datasources[\"00:11:22:33:44:55 Timeseries\"][\"values\"][0][5]"
          },
          "type": "gauge"
        }
      ],
      "width": 1
    },
    {
      "col": {
        "3": 2,
        "4": 3,
        "5": 1
      },
      "col_width": 1,
      "row": {
        "3": 1,
        "4": 1,
        "5": 5
      },
      "title": "On time",
      "widgets": [
        {
          "settings": {
            "animate": true,
            "size": "regular",
            "title": "ontime",
            "units": "",
            "value": "datasources[\"00:11:22:33:44:55 Timeseries\"][\"values\"][0][4]"
          },
          "type": "text_widget"
        }
      ],
      "width": 1
    },
    {
      "col": {
        "3": 1,
        "4": 4,
        "5": 4
      },
      "col_width": "1",
      "row": {
        "3": 1,
        "4": 1,
        "5": 13
      },
      "title": "SWITCH 1",
      "widgets": [
        {
          "settings": {
            "animate": true,
            "size": "regular",
            "title": "usrsw1",
            "value": "datasources[\"00:11:22:33:44:55 Timeseries\"][\"values\"][0][6]"
          },
          "type": "text_widget"
        }
      ],
      "width": 1
    },
    {
      "col": {
        "3": 2,
        "4": 3,
        "5": 1
      },
      "col_width": 1,
      "row": {
        "3": 5,
        "4": 5,
        "5": 9
      },
      "title": "LED D1",
      "widgets": [
        {
          "settings": {
            "title": "led",
            "value": "datasources[\"00:11:22:33:44:55 Timeseries\"][\"values\"][0][3]"
          },
          "type": "indicator"
        }
      ],
      "width": 1
    },
    {
      "col": {
        "3": 1
      },
      "col_width": 1,
      "row": {
        "3": 5
      },
      "title": "SWITCH 2",
      "widgets": [
        {
          "settings": {
            "animate": true,
            "size": "regular",
            "title": "usrsw2",
            "value": "datasources[\"00:11:22:33:44:55 Timeseries\"][\"values\"][0][5]"
          },
          "type": "text_widget"
        }
      ],
      "width": 1
    }
  ],
  "plugins": [],
  "version": 1
}'


local ex, err = to_json(default_dashboard_config)
if ex ~= nil then
    print(ex)
    local got = Keystore.set{key='dashboard.0', value=ex}
    if got.code ~= nil then
        print("End initialization. Init was successful!")
    end
else
    print("Initialization ERROR!")
end