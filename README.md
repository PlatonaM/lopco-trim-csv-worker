#### Description

    {
        "name": "Trim CSV",
        "image": "platonam/lopco-trim-csv-worker:latest",
        "data_cache_path": "/data_cache",
        "description": "Trim columns from a Comma-Separated Values file.",
        "configs": {
            "delimiter": null,
            "columns": null
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

See the [-f option](https://man7.org/linux/man-pages/man1/cut.1p.html) on how to set the `columns` configuration.
