# CU Boulder Drupal 9 Install Profile

All notable changes to this project will be documented in this file.

Repo : [GitHub Repository](https://github.com/CuBoulder/tiamat-profile)

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- ### Adds the "Calendar" CKEditor 5 plugin
  This update adds a "Calendar" item to CKEditor 5, allowing insertion of Google Calendar embeds via an embed code taken from Google Calendar. Equivalent to the `[googlecalendar]` Shortcode in D7 Express.
  
  CuBoulder/tiamat-theme#256
  
  Sister PR in: [ucb_ckeditor_plugins](https://github.com/CuBoulder/ucb_ckeditor_plugins/pull/25), [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/16)
---

- ### Removes "D9" from theme name and the theme, custom entities Composer package names
  CuBoulder/tiamat-theme#435
  
  Sister PR in: [tiamat-theme](https://github.com/CuBoulder/tiamat-theme/pull/452), [tiamat-custom-entities](https://github.com/CuBoulder/tiamat-custom-entities/pull/70), [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/13), [tiamat-project-template](https://github.com/CuBoulder/tiamat-project-template/pull/28), [tiamat10-project-template](https://github.com/CuBoulder/tiamat10-project-template/pull/8), [ucb_site_configuration](https://github.com/CuBoulder/ucb_site_configuration/pull/26)
---

- ### Update Filters
  Updated filters and profile to add shortcode, ucb_migration_shortcode to the install.
  
  Sister Repo: https://github.com/CuBoulder/tiamat-project-template/pull/27
---

- ### Adds Google Maps support in Map CKEditor plugin
  This update adds support for Google Maps embeds via an embed code taken from Google Maps.
  
  CuBoulder/tiamat-theme#258
  
  CuBoulder/ucb_ckeditor_plugins#14
  
  Sister PR in: [ucb_ckeditor_plugins](https://github.com/CuBoulder/ucb_ckeditor_plugins/pull/16), [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/9)
---

- ### Adds Map plugin for embedding Campus Maps
  This update adds the Map plugin to CKEditor, which allows a content editor to provide a link shared from the [CU Boulder Campus Map](https://www.colorado.edu/map/) and embeds a map widget on a page. Just as in the [CKEditor 4 Shortcode](https://websupport.colorado.edu/article/425-campus-map-shortcode) there are three size options to choose from for the widget. The Map plugin outputs web component-like syntax for easier migration and future changes (see `README.md` for the schemas). CuBoulder/ucb_ckeditor_plugins#13
  
  CuBoulder/tiamat-theme#258
  
  Sister PR in: [ucb_ckeditor_plugins](https://github.com/CuBoulder/ucb_ckeditor_plugins/pull/15), [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/8)
---

- ### Adds a global "Related articles" configuration form to CU Boulder Site Settings
  This update adds a "Related articles" configuration form to CU Boulder Site Settings, accessible via the menu or `/admin/config/cu-boulder/related-articles`. Here users with permission can exclude articles with specific categories or tags from appearing in "related articles" sections. CuBoulder/ucb_site_configuration#22
  
  This update also fixes a bug which caused warnings to appear when configuring a third-party service. CuBoulder/ucb_site_configuration#21
  
  Sister PR in: [ucb_site_configuration](https://github.com/CuBoulder/ucb_site_configuration/pull/23), [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/7)
---

- ### Adds two minor changes
  - Decreases the weight of the home link in the main menu to a very small number (`-999`) to ensure it always appears first on the left. Resolves CuBoulder/tiamat-theme#351
  - Increases the maximum image upload size from `2 MB` to `24 MB`. Resolves CuBoulder/tiamat-theme#353
  
  Sister PR in: [tiamat10-profile](https://github.com/CuBoulder/tiamat10-profile/pull/4)
---

- ### Change: Adds Devel, Redirect, Migrate_plus required modules #26
  Resolves #321 - Adds redirect, migrate_plus, devel and devel permissions to D9 and D10 project templates and profiles.
  
  Includes:
  
  - `tiamat-project-template`
  - `tiamat10-project-template`
  - `tiamat10-profile`
  - `tiamat-profile`
---

- ### chg: Bumping version compatability for D10 - not don't use with D10
  
---

- ### Refactors user roles
  Change summary:
  
  - Site Owner (site_owner) → Site Manager (site_manager)
  - Site Editor (site_editor) → Content Editor (content_editor)
  - \+ Site Owner (site_owner)
  - \+ Edit My Own Content (edit_own_content)
  - \+ Newsletter (newsletter)
  - \+ Webform Editor (webform_editor)
  - \+ Webform Submissions Viewer (webform_submissions_viewer)
  - \- Configuration Manager (configuration_manager)
  
  Resolves CuBoulder/tiamat-theme#329
---

- ### Adds image styles to profile
  Closes #152 in the Tiamat Theme.
  Adds necessary profile changes to allow new image styles.
---

- ### Changes dependencies to reflect CKEditor 5 plugin work moving to the new `ucb_ckeditor_plugins` module
  Resolves CuBoulder/ucb_ckeditor_plugins#8
  
  Sister PR in: [tiamat-project-template](https://github.com/CuBoulder/tiamat-project-template/pull/25), [tiamat10-project-template](https://github.com/CuBoulder/tiamat10-project-template/pull/1)
---

- ### Adds 'Invisible' to Toolbar on CKEditor Full HTML and WYSIWYG
  Resolves https://github.com/CuBoulder/tiamat-theme/issues/257 - Adds a button to apply an Invisible (screen reader only) wrap to selected text, disabling it from the view.
  
  Includes:
  
  ucb-ckeditor5-plugins => `issue/tiamat-theme-257`
  tiamat-profile => `issue/tiamat-theme-257`
---

## [20230323] - 2023-03-23

## [20230307] - 2023-03-08

-   ### issue/198 Add Tooltip to wysiwyg
    Profile updates for wysiwyg
    First PR contains the Tooltip plugin

* * *

-   ### Adds "Advanced" appearance settings and custom site logos

    This update:

    -   Adds an _Advanced_ view at the bottom of the _Appearance_ settings, collapsed by default and visible only to those with the _Edit advanced site settings_ permission.
    -   Moves all theme settings previously restricted to Drupal's default theme settings into the _Advanced_ view.
    -   Adds site-specific custom logos (CuBoulder/tiamat-theme#264) and places the settings for custom logos into the _Advanced_ view:
        -   Custom logo requires _white text on dark header_ and _dark text on white header_ variants.
        -   An image can be uploaded or a path can be manually specified for each.
        -   ~~A scale can be specified, which defaults to _2x_ (Retina) but also allows _1x_ (standard) or _3x_ (enhanced Retina)~~.
    -   Assigns the _Architect_ and _Developer_ user roles the _Edit advanced site settings_ permission.

    Sister PR in: [ucb_site_configuration](https://github.com/CuBoulder/ucb_site_configuration/pull/19), [tiamat-theme](https://github.com/CuBoulder/tiamat-theme/pull/270)

* * *

-   ### Hides administration items that a user doesn't have access to

    This update includes these changes across several repos:

    -   Hides inaccessible items from the Admin Toolbar by installing Admin Toolbar Links Access Filter
    -   Hides inaccessible items from "Add content" and "CU Boulder site settings"

    CuBoulder/tiamat-theme#240; Author @TeddyBearX

    This update to `tiamat-profile` also:

    -   Hides the "How-To" content type for users with the "Site editor", "Site owner", or "Architect" role (Resolves CuBoulder/tiamat-theme#221)
    -   Allows users with the "Site editor", "Site owner", "Architect", or "Developer" role to access the "Issue" and "Issue Archive" content types
    -   Resolves an issue where users with the "Site editor" role were unable to add content to menus by granting them the "Administer menus and menu links" permission

    Sister PR in: [ucb_admin_menus](https://github.com/CuBoulder/ucb_admin_menus/pull/6), [ucb_site_configuration](https://github.com/CuBoulder/ucb_site_configuration/pull/18)

* * *

-   ### Fixes not being able to modify image focal point settings

    The form display of the Image media entity was updated.

    Resolves CuBoulder/tiamat-theme#234; Author @TeddyBearX

* * *

## [20230209] - 2023-02-09

-   ### Adds Document and Audio Media types

    This update adds two new Media types to be used with the Media Library.

    Document supports:

    -   PDF
    -   DOC
    -   DOCX
    -   TXT
    -   RTF

    Audio supports:

    -   MP3
    -   WAV
    -   AAC

    Resolves CuBoulder/tiamat-theme#233; Author @TeddyBearX 

* * *

-   ### Limits images to a maximum of 2 MB in size
    Resolves CuBoulder/tiamat-theme#148

* * *

-   ### Additions to user roles

    -   Creates the Architect, Configuration Manager, and Layout Manager user roles
    -   Updates existing user roles to include newer content types and terms

    Resolves CuBoulder/tiamat-theme#209

* * *

[Unreleased]: https://github.com/CuBoulder/tiamat-profile/compare/20230323...HEAD

[20230323]: https://github.com/CuBoulder/tiamat-profile/compare/20230307...20230323

[20230307]: https://github.com/CuBoulder/tiamat-profile/compare/20230209...20230307

[20230209]: https://github.com/CuBoulder/tiamat-profile/compare/fa689b3f0b5ed84b046b809d6ea06d2b874ffaf1...20230209
