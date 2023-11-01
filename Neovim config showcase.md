[[It Thougts]]
# Introduction
Today, I'm super excited to dive into my personal neovim configuration built with Lua. Just so you know, I'm running this on Linux Mint at work and Manjaro when I'm chilling at home. But depending on your OS or distribution, your mileage might vary just a bit.

My current setup? Well, it's a refined fork from the Purple school channel – shout out to them! (Check the description for the base video link).

I remember starting my neovim journey with a configuration from the didjitalize channel. To be frank, it was a tough nut to crack, especially for vim newbies like me – wasn't the smoothest ride.

Then, I stumbled upon astronvim. Oh boy, it had an impressive build and some killer hotkeys! But here's the deal-breaker – it was sluggish with large files and sometimes failed to highlight the middle of files unless you painstakingly scrolled from the top. And guess what? NvChad had a similar hiccup.

Working with Vue on Astro was another challenge. Even after setting up the Vue language server, the highlighting and "go to definition" features were MIA. NvChad, though friendlier with Vue, shared the indexing issue with astro.

Now, I've heard good things about Lunar Nvim and I'm itching to try it out. I gave Lunar's build a whirl just for this video. The plus? Super smooth installation without trashing your previous nvim build. The catch? Its settings are a bit intricate, especially if you're coming from astro or nvchad backgrounds.

So, after all these experiments, here I am with my own build. What's special?

1. Lightning-fast file indexing.
2. Intuitive editing – especially if you're transitioning from astrovim.
3. Beginner-friendly with simple hotkeys.

Alright! Enough chit-chat. Let's dive right into the build!

For those eager to replicate this, I've laid down all the installation steps in my git repository. Just clone it into your "nvim" folder, fire up "nvim", and you're all set!

# Mappings
Once you boot up, you'll be greeted with a default dashboard showcasing my ASCII art. Here, you'll also find a few quick actions to get you started.

But let's delve a bit deeper. Want to pull up a neat file tree? Just hit `Space + e` to bring up NeoTree. Navigating? Stick to the classic Vim way with `h`, `j`, `k`, and `l`. To open a file, you have choices! Either go with `w` or `o`.

Alright, let's deep dive into some essential hotkeys!

**Default Hotkeys Overview:**

1. **NeoTree**: 
    - `Space + e`: Opens NeoTree on the left
    - `Space + o`: Shows the git status in a floating NeoTree.
2. **Navigation**:
    - The control keys combined with `h`, `j`, `k`, and `l` switch between vim windows.
    - `Space + /`: A quick toggle for commenting out lines.
3. **Window Splits**:
    - `|`: Vertical split.
    - `\`: Horizontal split.
4. **Others**:
    - `Space + w`: Save current file.
    - `Space + c`: Close the current buffer and shift to the one on the right.
    - `Space + x`: Close all buffers but not current
    - `Space + s`: Show current file place in Tree.
    - `jj` in Insert mode: Quick escape to normal mode.
    - `Space + h`: Clear search highlights.
5. **Buffer Navigation**:
    - `Tab`: Cycles to the next buffer and reveals NeoTree.
    - `Shift + Tab`: Cycles to the previous buffer and reveals NeoTree.
    - `Shift + H` and `Shift + L`: Also cycles through buffers and reveals NeoTree.
6. **Terminal**:
    - `F7`: Toggles terminal in floating mode.
7. **Telescope**:
    - `Space + f + f`: Find file by name (without gitignore)
    - `Space + f + w`: Find text in files (without gitignore)


These are just the basics to get you started. The beauty of Vim and its configurations like this one is the depth of customization. Feel free to dive into the configuration, tweak it, and make it truly yours.

# **Killer Feature in Nvim**:

One of the standout features in Nvim that I absolutely love is the quick navigation capability. Ever found yourself scanning the screen for a word? With the "leap plugin", you don't have to anymore. Just press 's', begin typing the word, and watch the magic unfold as you're instantly taken there. But that's not all. For those of you who like a touch of AI assistance while coding, Nvim's got you covered. By using the Codeium plugin, you get an AI sidekick right within your editor. Just type `:Codeium Auth`, and you're all set to receive smart suggestions and much more.

# **End of the Video**:

That brings us to the end of this guide. I genuinely hope you found it enlightening. If you've never considered Nvim before, I urge you to give it a shot. It's not just about the features or the customization, but the significant productivity boost you'll experience. It truly can revolutionize your coding workflow. Until next time, happy coding!






