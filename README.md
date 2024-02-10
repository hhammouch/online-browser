# Online Browser Installer

This Bash script enables you to quickly install various web browsers using Docker containers. It provides a simple menu interface for selecting the browser you want to install.

## Features

- Installation of multiple web browsers including Chromium, Firefox, Opera, and Mullvad Browser.
- Easy-to-use menu interface for browser selection.
- Docker-based installation ensures easy deployment and isolation.

## Preview

![Online Browser Installer](https://i.imgur.com/IotR4oS.png)

## Usage

### Running in Google Cloud Shell

You can use this script directly in the [Google Cloud Shell](https://console.cloud.google.com/welcome) by running the following command:

```bash
curl -sLkO hammou.ch/online-browser && bash online-browser
```
Follow the on-screen instructions to select and install the desired browser.

### Cloning the Repository

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/yourusername/online-browser-installer.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd online-browser-installer
    ```

### Running the Script

3. Make the script executable:

    ```bash
    chmod +x install_browser.sh
    ```

4. Run the script:

    ```bash
    ./install_browser.sh
    ```

### Selecting a Browser

5. Follow the on-screen instructions to select and install the desired browser.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/hhammouch/online-browser/tree/main?tab=MIT-1-ov-file) file for details.
