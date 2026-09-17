# Catholic Brothers for Christ — Announcement Night Evite

A single-page evite with three tabs: **Event & RSVP**, **About Us**, and **ExSpiritus** (conference info + register button). It's a plain static site — `index.html` is the whole thing — so it deploys to Vercel in minutes with no build step.

## 1. Before you deploy — one important step

The RSVP form uses [FormSubmit](https://formsubmit.co), which needs no signup — it's already wired to send submissions to `normaduane@gmail.com`. There's just one thing to do:

1. **Activate the form.** The very first submission ever sent to that address (from anyone, including you) triggers a one-time email titled "Action Required: Activate FormSubmit on..." — click the **Activate Form** button in it once, and every RSVP after that lands in the inbox normally.
2. **So: submit the form yourself right after you publish**, before sharing the link with guests. That way activation uses your own test RSVP, not a real donor's.
3. To send RSVPs to a different address instead, open `index.html`, search for `normaduane@gmail.com` inside the `FORMSUBMIT_ENDPOINT` line near the bottom of the file, and swap in the new address.

The **Register** button on the ExSpiritus tab already links to your live RegFox page — if that URL ever changes, search `index.html` for `register-btn` and update the `href`.

**Keep the `photos/` folder and `logo.svg` in the same directory as `index.html`** when you push to GitHub — the page references them by relative path (`photos/brotherhood.jpg`, `logo.svg`, etc.), so if they're moved the images won't load.

## 2. Put it on GitHub

From this folder, run:

```bash
git init
git add .
git commit -m "Announcement night evite"
```

Then create a new empty repository on GitHub (github.com → New repository — don't initialize it with a README), and push:

```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```

## 3. Deploy on Vercel

**Easiest way (no install needed):**
1. Go to [vercel.com/new](https://vercel.com/new) and sign in (you can use your GitHub account).
2. Click **Import** next to the repo you just pushed.
3. Leave all settings as default (it's a static site — no framework, no build command needed) and click **Deploy**.
4. Vercel gives you a live URL like `https://your-repo-name.vercel.app` — that's your shareable evite link.

**Or from the command line**, using `deploy.sh` in this folder:

```bash
chmod +x deploy.sh
./deploy.sh
```

This installs the Vercel CLI if needed, logs you in, and deploys. Run `./deploy.sh` again any time you update `index.html` to push a new version live.

## 4. Custom domain (optional)

In the Vercel dashboard → your project → **Settings → Domains**, you can attach a domain like `announcement.catholicbrothersforchrist.org` if you have one.

## 5. Send the invite

Once deployed, share the Vercel link by email or text — it opens straight to the Event & RSVP tab, with About Us and Ex Spiritus one click away.
