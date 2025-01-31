# DeepSeek-r1 installation guide locally for Android 🐋

![Deepseek R1](/images/deepseek-ai.webp)

Welcome to the Deepseek R1 model installation guide on Android devices.

This document will provide you with detailed instructions for installing and running the Deepseek R1 artificial intelligence model using Termux and Arch Linux. 

So by following this guide you will have the ability to run this fascinating model on your device locally, which will also allow you to use it without an internet connection.

## Prerequisites

Before starting with the installation, make sure you have Termux installed on your device. This is an Android application that provides a Linux-based terminal environment.

My recommendation is that you download it from the F-Droid store, as a more advanced version can be accessed from the F-Droid store.

## 1. Deepseek R1 installation steps on Android

After installing Termux, you should follow the steps below to install Deepseek R1 on your Android device having full control of the whole process.

But if you want to perform the installation in automatic. I invite you to read how to use my installation script which I talk about almost at the end of the document.

### 1.1. Upgrade packages in Termux

To ensure that you have the latest versions of packages, run the following command in Termux:

```bash
pkg update
```

### 1.2. Accessing mobile files from Termux

To allow Termux to access files on your device, run:

```bash
termux-setup-storage
```

_Note that this is an optional step. So if you do not want to access your files from Termux, you can skip this step._

### 1.3. Install additional tools

To improve the aesthetics and convenience of the environment. You can install neofetch and fish by running the following commands:

```bash
pkg install neofetch
pkg install fish
```

_Neofetch is a tool that displays information about your system, while fish is an interactive shell that offers an enhanced user experience._

### 1.4. Install Arch Linux on Adnroid

Through this command proot will install a version optimized for your processing, run:

```bash
proot-distro install archlinux
```

_ARM is a 32-bit and 64-bit processor architecture used in mobile devices such as smartphones and tablets._

### 1.5. Logging into Arch Linux as root

To log in as root to Arch Linux, use the following command:

```bash
proot-distro login archlinux
```

_To install ollama and the artificial intelligence models on the mobile you need to be root._

### 1.6. Upgrading Arch Linux packages

To make sure you have the latest versions of Arch Linux packages, run:

```bash
pacman -Syu
```

_In this case we do not use “sudo” as we are already superuser._

### 1.7. Installing Ollama on Arch Linux

Ollama will be the means through which we will obtain the Deepseek R1 model image. So to install it, run:

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

_What is ollama? Ollama is an artificial intelligence model server that allows you to download and run AI models without an Internet connection._

### 1.8. Starting the Ollama Server

Now that you have installed ollama. You need to start your server, run:

```bash
ollama serve &
```

_If you fail to start the server with this command. Try without the ampersand “&”._

### 1.9. Installing and running Deepseek R1

Finally, let's install and run the Deepseek R1 model with the following command:

```bash
ollama run deepseek-r1:1.5b
```

_After a few seconds the model will have loaded and you will be able to start chatting with it._

## 2. Automated Installation 🚀

> **Important:** To perform the automated installation, your phone must be rooted.

To make the installation process simpler, I have created a script that automates all the steps. Follow these steps to download the script from GitHub and run it:

### 2.1. Install Git

First, you need to install Git to clone the repository. Run the following command in Termux:

```bash
pkg install git
```

### 2.2. Clone the Repository

Next, clone the repository containing the installation script:

```bash
git clone https://github.com/mykeura/deepseek-r1-locally-for-android.git
```

### 2.3. Navigate to the Script Directory

Change to the directory where the script is located:

```bash
cd deepseek-r1-locally-for-android
```

### 2.4. Install tsu

To use the `sudo` command, you need to install `tsu`:

```bash
pkg install tsu
```

### 2.5. Run the Installation Script

Make the script executable and run it with `sudo`:

```bash
chmod +x install-deepseek.sh
sudo ./install-deepseek.sh
```

The script will take care of:
- Updating Termux.
- Installing the necessary tools.
- Configuring Arch Linux.
- Installing and running Ollama.
- Starting the Deepseek R1 model.

This option is perfect if you prefer a quick and hassle-free installation. The script will perform the entire process automatically, maintaining the same functionality as the manual installation.

Make the script executable and run it:

```bash
chmod +x install-deepseek.sh
./install-deepseek.sh
```

The script will take care of:
- Updating Termux.
- Installing the necessary tools.
- Configuring Arch Linux.
- Installing and running Ollama.
- Starting the Deepseek R1 model.

This option is perfect if you prefer a quick and hassle-free installation. The script will perform the entire process automatically, maintaining the same functionality as the manual installation.

## How to use Deepseek R1 once installed

The next time you start Termux, you will need to log into Arch Linux and start the Ollama server before running the model. Follow these steps:

1. Log in to Arch Linux:
```bash
proot-distro login archlinux
```

2. Start the Ollama server:
```bash
ollama server &
```

3. Run the Deepseek R1 model
```bash
ollama run deepseek-r1:1.5b
```

With these simple steps you will have access to a powerful artificial intelligence model locally and without the need of an internet connection.

## Why choose the 1.5b-parameter model?

The 1.5b parameter model has been chosen because of its balance between performance and efficiency.

This model is capable of delivering accurate and fast results, while its size allows it to run on resource-constrained devices such as a mobile device.

It should be added that the performance of the model will depend on the specifications of your device. So devices with more RAM and processor will provide better performance.

## Conclusion on installing Deepseek R1 on Android.

By way of conclusion, I can say that I love running Deepseek R1 locally using my favorite Gnu/Linux distribution.

And while the experience would not be as smooth as using it from the android app or its website. It's nice to be able to have this open source model, without the need to be connected to the internet.
