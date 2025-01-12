import requests
from bs4 import BeautifulSoup
import sys

def scrape_all_text(url):
    try:
        response = requests.get(url)
        response.raise_for_status()  # Raise an HTTPError for bad responses

        soup = BeautifulSoup(response.text, 'html.parser')

        page_text = soup.get_text(separator="\n", strip=True)

        print(page_text)

    except requests.exceptions.RequestException as e:
        print(f"An error occurred while requesting the URL: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py <website_url>")
    else:
        website_url = sys.argv[1]
        scrape_all_text(website_url)
