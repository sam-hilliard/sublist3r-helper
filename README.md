# sublist3r_helper

`sublist3r_helper.sh` is a bash script designed to enhance the functionality of the `sublist3r` tool by enabling it to process a list of domains from a file. This wrapper script automates the process of running `sublist3r` for each domain listed in a file, allowing bug hunters and security researchers to efficiently test multiple domains during reconnaissance while staying in scope.

## Purpose

The purpose of `sublist3r_helper.sh` is to streamline the process of enumerating subdomains for multiple domains using `sublist3r`. This tool facilitates reconnaissance activities, helping security professionals identify potential attack surfaces and stay within the defined scope of their assessments.

## Usage

### Prerequisites

Ensure that `sublist3r` is installed on your system. You can install it using `pip`:

```bash
pip install sublist3r
```

### Running sublist3r_helper.sh

To use `sublist3r_helper.sh`, provide a file containing a list of domains (one per line) as an argument. The script will process each domain, run `sublist3r`, and save the results in separate output files.

```bash
./sublist3r_helper.sh domain_list.txt
```

### Example domain_list.txt File

```
example.com
anotherdomain.com
yetanotherdomain.com
```

### Sample Output

For each domain in `domain_list.txt`, the script will generate an output file named `<domain>.sublist3r.out` containing the enumerated subdomains.

Example:

```bash
Enumerating subdomains for: example.com
[Sublist3r output for example.com]
=========================================
Enumerating subdomains for: anotherdomain.com
[Sublist3r output for anotherdomain.com]
=========================================
Enumerating subdomains for: yetanotherdomain.com
[Sublist3r output for yetanotherdomain.com]
=========================================
```

## Notes

- Ensure you have `sublist3r` installed and accessible in your PATH.
- Output files are named based on the domain and saved in the current directory.
- Each output file contains the subdomains enumerated for the corresponding domain.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
