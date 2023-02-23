# CU Boulder Drupal 9 Install Profile

All notable changes to this project will be documented in this file.

Repo : [GitHub Repository](https://github.com/CuBoulder/tiamat-profile)

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- ### Hides administration items that a user doesn't have access to
  This update includes these changes across several repos:
  - Hides inaccessible items from the Admin Toolbar by installing Admin Toolbar Links Access Filter
  - Hides inaccessible items from "Add content" and "CU Boulder site settings"
  
  CuBoulder/tiamat-theme#240; Author @TeddyBearX
  
  This update to `tiamat-profile` also:
  - Hides the "How-To" content type for users with the "Site editor", "Site owner", or "Architect" role (Resolves CuBoulder/tiamat-theme#221)
  - Allows users with the "Site editor", "Site owner", "Architect", or "Developer" role to access the "Issue" and "Issue Archive" content types
  - Resolves an issue where users with the "Site editor" role were unable to add content to menus by granting them the "Administer menus and menu links" permission
  
  Sister PR in: [ucb_admin_menus](https://github.com/CuBoulder/ucb_admin_menus/pull/6), [ucb_site_configuration](https://github.com/CuBoulder/ucb_site_configuration/pull/18)
---

- ### Fixes not being able to modify image focal point settings
  The form display of the Image media entity was updated.
  
  Resolves CuBoulder/tiamat-theme#234; Author @TeddyBearX
---

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

[Unreleased]: https://github.com/CuBoulder/tiamat-profile/compare/20230209...HEAD

[20230209]: https://github.com/CuBoulder/tiamat-profile/compare/fa689b3f0b5ed84b046b809d6ea06d2b874ffaf1...20230209
