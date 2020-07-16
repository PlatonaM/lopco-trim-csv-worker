#### Description

    {
        "name": "Trim column from csv",
        "description": null,
        "image": "trim-csv-worker",
        "data_cache_path": "/data_cache",
        "input": {
            "type": "single",
            "fields": [
                {
                    "name": "input_csv",
                    "media_type": "text/csv",
                    "is_file": true
                }
            ]
        },
        "output": {
            "type": "single",
            "fields": [
                {
                    "name": "output_csv",
                    "media_type": "text/csv",
                    "is_file": true
                }
            ]
        },
        "configs": {
            "delimiter": null,
            "column_num": null
        }
    }
