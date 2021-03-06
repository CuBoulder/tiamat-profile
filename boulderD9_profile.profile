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
function ucb2021_profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['#submit'][] = 'ucb2021_profile_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function ucb2021_profile_form_install_configure_submit($form, FormStateInterface $form_state) {
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
function ucb2021_profile_modules_installed( $modules ){
  if( in_array('boulderD9_profile', $modules )){
    $installer = \Drupal::service('module_installer');
    // install or uninstall modules once the profile has installed
    $installer->install([
      'ucb_d9_content_entities',
      'ucb2021_base_site_info',
      'ucb_default_content'
    ]);
    \Drupal::logger('boulderD9_profile')->notice('Installed CU Entity Schemas');
    \Drupal::logger('boulderD9_profile')->notice('Installed CU Site Info Footer');
    \Drupal::logger('boulderD9_profile')->notice('Installed CU Default Content');
  }
}
