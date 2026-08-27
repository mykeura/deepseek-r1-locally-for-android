# DeepSeek R1 Installation Guide for Android

```
    ____                                 __      ____ ___
   / __ \___  ___  ____  ________  ___  / /__   / __ <  /
  / / / / _ \/ _ \/ __ \/ ___/ _ \/ _ \/ //_/  / /_/ / /
 / /_/ /  __/  __/ /_/ (__  )  __/  __/ ,<    / _, _/ /
/_____/\___/\___/ .___/____/\___/\___/_/|_|  /_/ |_/_/
               /_/
```

Welcome to this guide for installing and running the DeepSeek R1 artificial intelligence model on an Android device. Throughout this document you will find detailed instructions to get it up and running using Termux and Arch Linux, so that by the end you can run the model locally on your device, without depending on an internet connection and keeping full control of the whole process.

If you would rather skip the manual installation, at the end of this document I explain how to use my automated installation script, which takes care of every step for you.

## Prerequisites

Before you begin, you need to have the Termux app installed, as it provides a Linux-based terminal environment inside Android. My recommendation is to download it from the F-Droid store, since the version available there is more up to date than the ones from other sources.

## 1. Steps to install DeepSeek R1 on Android 📱

With Termux installed, follow the steps below to get DeepSeek R1 running on your device.

### 1.1. Upgrade the Termux packages

To make sure you are working with the latest package versions, run the following command in Termux:

```bash
pkg update
```

### 1.2. Access your device's files from Termux

If you want Termux to read and write files on your device, run:

```bash
termux-setup-storage
```

This step is optional: if you do not need to access your files from the terminal, you can skip it and continue with the installation.

### 1.3. Install Proot Distro

Now install Proot Distro, a tool that lets you run Linux distributions on Android through Proot:

```bash
pkg install proot-distro
```

### 1.4. Install Arch Linux on Android

The next command downloads and installs a version of Arch Linux optimized for your processor's architecture, whether 32-bit or 64-bit ARM, the one used by most smartphones and tablets:

```bash
proot-distro install archlinux
```

### 1.5. Log into Arch Linux as root

To install Ollama and the AI models you need superuser privileges, so log into Arch Linux as root with:

```bash
proot-distro login archlinux
```

### 1.6. Upgrade the Arch Linux packages

Verify that your Arch Linux packages are up to date by running:

```bash
pacman -Syu
```

Notice that we do not use `sudo` here, because we are already logged in as the superuser.

### 1.7. Install Ollama on Arch Linux

Ollama will be the means through which we obtain the DeepSeek R1 model image. It is an AI model server that lets you download and run models without an internet connection. Install it with:

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

### 1.8. Start the Ollama server

With Ollama installed, start its server:

```bash
ollama serve &
```

If the server fails to start with that command, try again without the ampersand `&`.

### 1.9. Install and run DeepSeek R1

Finally, install and run the model with:

```bash
ollama run deepseek-r1:1.5b
```

After a few seconds, once the model has been downloaded and loaded, you can start chatting with it.

## 2. Automated installation

> **Important:** to perform the automated installation, your phone must be rooted.

If you prefer to save yourself the manual steps, I created a script that automates the whole process with the same functionality as the installation described above: it updates Termux, installs the required tools, sets up Arch Linux, installs and starts Ollama, and launches the DeepSeek R1 model.

First install Git in Termux so you can clone the repository:

```bash
pkg install git
```

Then clone the repository and enter the script's directory:

```bash
git clone https://github.com/mykeura/deepseek-r1-locally-for-android.git
cd deepseek-r1-locally-for-android
```

Since the script needs superuser privileges, install `tsu` to get the `sudo` command:

```bash
pkg install tsu
```

Finally, make the script executable and run it with `sudo`:

```bash
chmod +x install-deepseek.sh
sudo ./install-deepseek.sh
```

This option is ideal if you are looking for a quick, hassle-free installation: the script takes care of the entire process from start to finish.

## How to use DeepSeek R1 once installed

The next time you open Termux, you will need to log into Arch Linux and start the Ollama server before running the model. First enter Arch Linux, then start the server, and finally launch the model:

```bash
proot-distro login archlinux
ollama serve &
ollama run deepseek-r1:1.5b
```

With these simple steps you will have access to a powerful artificial intelligence model running locally and without the need for an internet connection.

## Why choose the 1.5b-parameter model?

The 1.5b-parameter model was chosen for its balance between performance and efficiency: it delivers accurate and fast results, and its size allows it to run on resource-constrained devices such as a mobile phone.

Keep in mind that the final performance will depend on your device's specifications: the more RAM and the better the processor, the better the performance you will get.

## Conclusion on installing DeepSeek R1 on Android

As a closing note, I must confess that I love running DeepSeek R1 locally using my favorite GNU/Linux distribution. And while the experience is not as smooth as using it from the Android app or its website, it is really nice to have this open source model available without needing to be connected to the internet.
