<h1 align="center">
  <img src="Static/Logo.png" alt="naabu" width="800px">
  <br>
</h1>

# Features

- Enumerate subdomains using various tools and crt.sh.
- Bruteforce subdomains with extensive [wordlist](https://wordlists-cdn.assetnote.io/data/automated/httparchive_subdomains_2024_01_28.txt) containing more than 2 million entries.
- Perform port scanning and HTTP/HTTPS accessibility checks.
- Check if HTTP accessible subdomains redirect to HTTPS.

## Upcoming Features
- Automatically fetch screenshots and HTML content of subdomains.
- Integrate with other tools for further analysis and processing.

# Installing SubLog
```python
git clone https://github.com/MoxitPanchal/SubLog.git
```
# Using SubLog
1. Navigate to the SubLog directory:
```python
cd SubLog
```
2. Set executable permissions:
```python
sudo chmod +x *.sh
```
3. Run `setup.sh` to install dependencies:
```python
./setup.sh
```
4. Add Go binaries to PATH:
```sh
export PATH=$PATH:~/go/bin
```
5. Run `SubLog.sh`:
```sh
./SubLog.sh <domain>
```
# Example Usage
```sh
./SubLog.sh google.com
```
To use custom wordlist for bruteforce, `-w` option can be used.
```sh
./SubLog.sh -w /path/to/custom-wordlist.txt google.com
```
# Contribution
SubLog was created with the aim of simplifying the everyday task of subdomain enumeration. By leveraging various tools and techniques, SubLog provides a comprehensive approach to discovering subdomains associated with a domain. 
If you have any questions, suggestions, or feedback, feel free to reach out to me:

- Email: [edu.moxit@gmail.com](mailto:edu.moxit@gmail.com)
- LinkedIn: [Moxit Panchal](https://www.linkedin.com/in/moxit-panchal-545303225/)

I'm open to collaboration and always eager to hear from fellow developers and security enthusiasts!

---
Made with 🖤 by Moxit.
