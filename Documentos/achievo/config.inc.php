<?php
  //
  // ACHIEVO CONFIGURATION FILE
  //
  // Change this file to fit your needs before using Achievo.
  //


  // -------------------------------------------
  //           DATABASE CONFIGURATION
  // -------------------------------------------

  // The database to use. Default is mysqli.
  // mysql is currently the only officially supported database.
  // Experimental: If you want to use PostgreSQL, change this value to
  // "pgsql". For Oracle, use "oci8".
  $config_db["default"]["driver"] = "mysqli";



  // The database configuration. Specify the hostname of the database server,
  // the database to use and the user/password.
  //
  $config_db["default"]["host"] = "localhost";
  $config_db["default"]["db"]   = "achievo";
  $config_db["default"]["user"] = "achievo";
  $config_db["default"]["password"] = "5uochG93kyplttgL";
  $config_db["default"]["charset"] = "utf8";
  $config_db["default"]["collate"] = "utf8_general_ci";
  
  // -------------------------------------------
  //           LAYOUT CONFIGURATION
  // -------------------------------------------

  // In admin pages, Achievo shows you a number of records with previous and
  // next buttons. You can specify the number of records to show on a page.
  //
  $config_recordsperpage=25;

  // The theme defines the layout of Achievo. You can see which
  // themes there are in the directory themes. Users can choose their own
  // theme in the user preferences section.
  //
  $config_defaulttheme = "steelblue";

  // The language of the application. You can use any language for which
  // a language file is present in the languages directory.
  //
  $config_language="en";

  // The menu to use (For older themes this is 'achievo', for newer this
  //  is 'achievo_modern'
  $config_menu_layout = "modern";

  // This variable determines wether all manytoone dropdowns should have
  // the autocompletion feature (instead of dropdowns)
  //
  $config_manytoone_autocomplete_default = false;



  // -------------------------------------------
  //           SECURITY CONFIGURATION
  // -------------------------------------------

  // The method to use for user/password validation.
  // Currently supported are:
  // - "db"  : the passwords are stored in the Achievo database.
  // - "pop3": the passwords are validated against a pop3 server.
  // Note that if you validate passwords using pop3, you still have to add
  // useraccounts in Achievo. If you don't, users can login, but won't
  // have permission to do anything.
  //
  $config_authentication = "db";

  // If you set $config_authentication to "pop3", you must configure
  // which server to use:
  //
  $config_auth_mail_server = "localhost";

  // The Achievo administrator password.
  // Regardless of the authentication method chosen above, this password
  // will always allow you to login with userid 'administrator'. This is
  // useful when you have an empty or corrupt database.
  // Note that it has no effect when you use the 'user preferences' screen
  // to change the administrator password, since the administrator password
  // is fixed in this file.
  //
  // Note: As an extra security measure you could disable this once you have
  // set up the entire system and enable it only when you need it.
  // (disable it by putting // in front of it)
  //
  $config_administratorpassword = "admin";

  // If you set $config_auth_dropdown to true, the login screen will contain
  // a list of available usernames. If you set it to false, there will be
  // an input box to manually enter the userid. Use the dropdown only if
  // the number of users is small.
  //
  $config_auth_dropdown = false;

  // As an extra security measure, to prevent session highjacking, Achievo
  // will regenerate it's session id on each hit. This does not work
  // properly on some (usually older) PHP installations. If you experience
  // login trouble, set the next value to false.
  $config_session_regenerate = false;


  // -------------------------------------------
  //            MAIL CONFIGURATION
  // -------------------------------------------

  // Achievo can send out notifications and reminders to users. The
  // default sender for these mails is 'achievo@domain_of_your_server'.
  // Sometimes users will reply to these mails, so it's better to change
  // this to the mail address of the administrator or human resource manager.
  // Example: $config_mail_sender = "ivo@achievo.org".
  // If you leave out the @domain part, the domainname of the server is
  // appended automatically.
  //
  $config_mail_sender = "achievo";


  // -------------------------------------------
  //            TIME REGISTRATION
  // -------------------------------------------

  // The number of projects/phases to show in the 'recent projects/phases'
  // dropdown. Note: The more you specify here, the slower time registration
  // and planning gets (due to some javascript issues).
  //
  $config_numberofrecentprojects = 10;

  // The ammount of time that a user can book on a day before it is
  // considered overtime. (visualization only, true overtime is
  // calculated based on employee contracts.)
  //
  $config_overtimethreshold = 480;

  // Default view in time registration. Can be "week" or "day"
  //
  $config_timereg_defaultview = "day";

  // Number of lines of the 'remark' field for time entry. Defaults to a
  // single line. (Regardless of this setting, the actual amount of text
  // that can be entered is unlimited.)
  $config_timereg_remark_lines = 1;

  // Allow registration of time in the future. By default, this is false, so
  // only time actually spent can be registered.
  $config_timereg_allowfuture = false;

  // Resolution for time registration. By default, time can be registered in
  // steps of 15 minutes. You can increase or decrease this.
  // You can specify a resolution in minutes or in hours.
  // Examples: 1m, 5m, 10m, 20m, 30m, 1h, 2h etc.
  //
  $config_timereg_resolution = "15m";

  // This variable indicates whether the user may directly register
  // time on each day in a week when he is in weekview.
  // If set to false, the user must first go to the dayview of a day,
  // before he may register time.
  //
  $config_timereg_week_bookable = true;

  // This variable indicates wheter users may lock their time
  // registration for weeks in which they have not entered
  // all hours.
  //
  $config_timereg_incompleteweeklock = false;

  // The next value indicates how many weeks back the timereg_check cron
  // script searches for incomplete time registrations.
  //
  $config_timereg_checkweeks = 5;

  // The next value indicates if a fake startingpoint should be used by
  // the overtime_balance node if no balance-records can be found to
  // determine a new balance record. Possible values:
  // String date: a date in the format YYYY-MM-DD.
  // boolean true: the date is set to the 31st of dec of the former year.
  // boolean false: no startingpoint is used.
  //
  $config_timereg_overtime_balance_use_startingpoint = false;


  // -------------------------------------------
  //             PROJECT MODULE
  // -------------------------------------------
  // This variable indicated whether contacts in the project module are
  // obligatory
  $config_project_contact_obligatory = false;

  // Use autocompletion for project selection?
  //
  $config_project_selection_autocomplete = false;

  // Fill this config with a path relative to the achievo directory.
  // When you add a project the skel will be copied to the destionation directory
  // also a path relative to the achievo directory. And sends a mail when the skel
  // is copied.
  // To disable this feature leave the dir_skel and dir_destination configs empty.
  // See also atk/utils/class.atkfileutils.inc function atkCopyDirRec
  $config_project_dir_skel = '';
  $config_project_dir_destination = '';
  // You can specify which field of the project node you want to use for the
  // directoryname.
  $config_project_dir_name_template = '[abbreviation]';
  $config_project_formatmail = 'html';
  $config_project_sendto = 'sendto@domein.nl';

  // -------------------------------------------
  //             PIM MODULE
  // -------------------------------------------
  // If you don't want a pim, set an URL in the config below to let PIM
  // redirect to the specified url. If not set or empty this feature is
  // disabled.
  $config_pim_redirect_to = "";



  // -------------------------------------------
  //             DOCMANAGER MODULE
  // -------------------------------------------
  // If you a docmanager to other nodes add the node and file location here
  $config_docmanageroptions = array(
        "project.project"=>array("dir"=>"./documents/project/", "url"=>"documents/project/"),
        "quotation.quotation"=>array("dir"=>"./documents/quotations/", "url"=>"documents/quotations/"),
        );


  // -------------------------------------------
  //            GENERAL SETTINGS
  // -------------------------------------------
  // Startday is
  // 6 = saturday
  // 0 = sunday
  // 1 = monday (ISO)
  // 3 = wednesday
  $config_startday = 1;

  // First week contains has 3 valid options
  // 1 = Starts on 1 january
  // 4 = First week with 4 days (ISO)
  // 7 = First full week
  $config_firstweekcontains = 4;


  // -------------------------------------------
  //            EXTERNAL MODULES
  // -------------------------------------------

  // Use the module function if you want to use Achievo modules.
  // Specify the module name as first parameter, and the path where
  // it can be found as the second parameter.
  //
  // module("somemodule","../achievo_modules/somemodule/");


  // -------------------------------------------
  //            END OF CONFIGURATION
  // -------------------------------------------

  // Leave this line in place, it configures the backend of Achievo.
  // Also, you should not change the atkconf.inc file, since that would
  // break Achievo.
  //

  include "atkconf.inc";

?>
