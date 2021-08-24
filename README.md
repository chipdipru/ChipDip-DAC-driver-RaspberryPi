# ChipDip DAC Driver installation for RaspberryPi OS 5.10

RasPi DSP Machine 1 (ADAU1701) - https://www.chipdip.ru/product0/9000827685

RasPi DSP Machine 2 (PCM5242) - https://www.chipdip.ru/product0/9000827686

<h2>First way. Update the system:</h2>
<pre><code>sudo apt update
sudo apt upgrade
</code></pre>
Open config file 
<pre><code>sudo nano /boot/config.txt</code></pre>
add line
<pre><code>dtoverlay=chipdip-dac</code></pre>

<h2>Second way. If you don't want to update the kernel:</h2>
<em><strong>1) Install git</em></strong>

<pre><code>sudo apt install git</code></pre>

<em><strong>2) Clone git repository</em></strong>

<pre><code>git clone https://github.com/chipdipru/ChipDip-DAC-driver-RaspberryPi</code></pre>

<em><strong>3) Make script "chipdip-dac-install.sh" executable</em></strong>

<pre><code>chmod +x ChipDip-DAC-driver-RaspberryPi/chipdip-dac-install.sh</code></pre>

<em><strong>4) Start script to install ChipDip DACs</em></strong>

<pre><code>ChipDip-DAC-driver-RaspberryPi/chipdip-dac-install.sh</code></pre>

<em><strong>5) Reboot system to complete installation</em></strong>

<pre><code>reboot</code></pre>

![scrot](https://user-images.githubusercontent.com/43340836/130599192-f126a41f-30d2-447b-b24f-f6614141064d.jpg)

![1701](https://user-images.githubusercontent.com/43340836/127169912-bf8f350f-007b-4d33-81f9-bb84d7495e81.jpg)

![5242](https://user-images.githubusercontent.com/43340836/127169976-00775eb4-d53f-477b-a28a-8270522b4a66.jpg)

![ADAU](https://user-images.githubusercontent.com/43340836/127170196-f0c22f81-57b9-458e-af7d-e01bbc6adfbd.jpg)
