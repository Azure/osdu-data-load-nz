import configparser
import requests

from utils import get_headers

# Read config file dataload.ini
config = configparser.RawConfigParser()
config.read("output/dataload.ini")

# Some constants, used by script
LEGAL_URL = config.get("CONNECTION", "legal_url")
LEGAL_TAG = config.get("REQUEST", "legal_tag")
DATA_PARTITION_ID = config.get("CONNECTION", "data-partition-id")


def verify_legal_tag_name():
    """
    Validate Legal Tag exists.
    """
    headers = get_headers(config)
    try:
        endpoint = f"{LEGAL_URL}/legaltags/{LEGAL_TAG}"
        print(endpoint)
        response = requests.get(endpoint, headers=headers)
        response.raise_for_status()
    except requests.exceptions.HTTPError as err:
        raise SystemExit(err)


def main():
    """
    Main Entry Function.
    """
    verify_legal_tag_name()


if __name__ == "__main__":
    main()
