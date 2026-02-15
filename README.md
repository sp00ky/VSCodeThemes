# Base16 Dark Ashes (Kelly)

Local custom VS Code theme cloned from **Base16 Dark Ashes**.

## Included customization

- `editor.background`: `#3F454B`
- `editorGutter.background`: `#3F454B`

## Use locally

1. Open this folder in VS Code.
2. Run **Developer: Install Extension from Location...**
3. Pick this folder.
4. Select **Base16 Dark Ashes (Kelly)** in **Preferences: Color Theme**.

## Rider theme

JetBrains Rider plugin assets are in:

- `rider-theme/META-INF/plugin.xml`
- `rider-theme/themes/base16-dark-ashes-kelly-rider.theme.json` (UI)
- `rider-theme/themes/base16-dark-ashes-kelly-rider.xml` (editor)

Build and install:

1. Run `cd rider-theme && ./scripts/build-plugin.sh`
2. In Rider: **Settings > Plugins > Gear > Install Plugin from Disk...**
3. Pick `rider-theme/dist/base16-dark-ashes-kelly-rider-theme.zip`
4. Restart Rider and select **Base16 Dark Ashes (Kelly)** in **Appearance**
