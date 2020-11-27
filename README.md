#### Description

    {
        "name": "Trim CSV",
        "image": "platonam/lopco-trim-csv-worker:dev",
        "data_cache_path": "/data_cache",
        "description": "Trim a column from a Comma-Separated Values file.",
        "configs": {
            "delimiter": null,
            "column_num": null
        },
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
        }
    }
