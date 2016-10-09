# Exposing the Neutrino EK: All the Naughty Bits

This repo contains the reference materials (mostly commented code) associated with my BSides Las Vegas 2016 talk entitled "Exposing the Neutrino EK: All the Naughty Bits."

**NOTE: This repo includes commented ActionScript (AS) code that was extracted from malicious software.  Please do not attempt to compile and execute this code without taking proper precautions.  If you are not familiar with running malicious code within a virtual malware analysis machine, you might want to simply review the code using a text editor vs. a proper Adobe Flash IDE.**  --  *You've been warned*

NOTE 2: I took over 2 months to post this code to GitHub.  I intended to clean up the code, add more comments, etc.  But that never happened.  Sadly (or... luckily?), [Neutrino seems to have closed up shop](http://malware.dontneedcoffee.com/2016/10/rig-evolves-neutrino-waves-goodbye.html).  As such, I decided to post the code now so that anyone interested could review while awaiting the next new wave of EKs.  Hope this helps!

---

# The Talk

``The Angler Exploit Kit (EK) is now dead. In the wake of Angler's death, Neutrino has taken the lion's share of the EK market. As such, Neutrino has evolved into one of the most critical threats to users of the Information Superhighway. Try as we might, we simply cannot avoid our users from being redirected to EK landing pages. The simple question is: WHY DAMNIT?! This talk focuses on the ins and outs of the new king of the hill: Neutrino. We will discuss the modern EK along with Neutrino's dominance. We will then break down exactly how Neutrino works: We'll start with compromised site redirection methods, rock some landing page de-obfuscation, have fun reversing Flash, and end with exploit + shellcode analysis. If you'd like to know exactly how this little bastard does its dirty work, bring your butt to the talk!``

## The Video

You can find the recorded presentation on YouTube:

[Exposing the Neutrino EK: All the Naughty Bits - Ryan Chapman](https://www.youtube.com/watch?v=gqmHd_mZ2P0 "Exposing the Neutrino EK: All the Naughty Bits - Ryan Chapman")
https://www.youtube.com/watch?v=gqmHd_mZ2P0

---

# Tools

The bulk of this repo's content is based on [FlashDevelop](http://www.flashdevelop.org/ "FlashDevelop") projects.  Thus, you will most likely want to download the latest copy of the tool in order to open these projects.

[FlashDevelop Website](http://www.flashdevelop.org/ "FlashDevelop Website")

Of course, you can always just view the `.as` files in a text editor.

All ActionScript code was extracted using [Free Flash Decompiler (FFDec)](https://www.free-decompiler.com/flash/).  I suggest grabbing this bad boy and playing around with it to become familiar with how to extract AS from .SWF files.

---

# The Files

My research began with a dump from [Malware-Traffic-Analysis.net](http://malware-traffic-analysis.net/2016/07/13/index.html) (http://malware-traffic-analysis.net/2016/07/13/index.html).  When you hit this link, check out the [2016-07-13-Neutrino-EK-dump-malware-and-artifacts.zip](http://malware-traffic-analysis.net/2016/07/13/2016-07-13-Neutrino-EK-dump-malware-and-artifacts.zip) file.  In this file, look for the `2016-07-13-EITest-flash-redirect-from-hemmox.xyz.swf` and `2016-07-13-EITest-Neutrino-EK-flash-exploit.swf` artifacts.  These were my starting points.

Based on this foundation, I created FlashDevelop projects in the following order:
 1. `eitest_redirect` - AS code extracted from the `2016-07-13-EITest-flash-redirect-from-hemmox.xyz.swf` file from malware-traffic-analysis.net.  This is the EITest campaign redirect code that links to an HTML page, which then links to the first stage of the Neutrino exploit (see below).
 2. `Neutrino_Stage1` - AS code extracted from the `2016-07-13-EITest-Neutrino-EK-flash-exploit.swf` file.  This is the first stage of the exploit.  This SWF extracts a secondary SWF into memory and then passes important arguments to the secondary SWF for further processing.
 3. `Neutrino_Stage2` - AS code extracted from the secondary stage, which is the SWF file extracted into memory by `2016-07-13-EITest-Neutrino-EK-flash-exploit.swf`.  This is the *real* Neutrino payload.
 4. `flash_exploit1` - The `2016-07-13-EITest-Neutrino-EK-flash-exploit.swf` file, the real Neutrino "bad boy," extracts multiple SWF exploits into memory to exploit the host.  I chose the first SWF-based exploit for analysis, the source code of which resides in this project.
