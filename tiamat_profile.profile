<?php

/**
 * @file
 * Enables modules and site configuration for a test profile.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function tiamat_profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['#submit'][] = 'tiamat_profile_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function tiamat_profile_form_install_configure_submit($form, FormStateInterface $form_state) {
  $site_mail = $form_state->getValue('site_mail');
  ContactForm::load('feedback')->setRecipients([$site_mail])->trustData()->save();
}

/**
 * Implements hook_modules_installed().
 *
 * @param $modules
 * Install syslog and uninstall dblog if site is not local
 * Install default content for the site
 */
function tiamat_profile_modules_installed( $modules ){
  if( in_array('tiamat_profile', $modules )){
    $installer = \Drupal::service('module_installer');
    // install or uninstall modules once the profile has installed
    $installer->install([
      'ucb2021_base_site_info',
      'ucb_custom_paragraphs',
      'ucb_custom_page_types'
    ]);
    \Drupal::logger('tiamat_profile')->notice('Installed Site Info Footer');
    \Drupal::logger('tiamat_profile')->notice('Installed Custom Paragraph Types');
    \Drupal::logger('tiamat_profile')->notice('Installed Custom Page Types');
  }
}