#!/usr/bin/perl
#############################################################################################
#Script Name : Constants.pm
#############################################################################################
use strict;
use warnings;
use Cwd;

#use FindBin;
#use lib $FindBin::Bin;

my $conLib;
BEGIN {  $conLib = getcwd;  }
use lib $conLib;

package Constants;

#use base 'Exporter';
use Exporter;
use vars qw( @ISA @EXPORT_OK %EXPORT_TAGS @EXPORT );
#BEGIN {
our @ISA = qw( Exporter );
#    use Exporter;
#}

use constant FILE_NAMES => {	accountSettingsScript => 'Account_Setting.pl',
				backupScript => 'Backup_Script.pl',
				checkForUpdateScript => 'Check_For_Update.pl',
				editSupportedFilesScript => 'Edit_Supported_Files.pl',
				jobTerminationScript => 'Job_Termination_Script.pl',
				loginScript => 'Login.pl',
				logoutScript => 'Logout.pl',
				operationsScript => 'Operations.pl',
				readMeFile => 'readme.txt',
				restoreScript => 'Restore_Script.pl',
				restoreVersion => 'Restore_Version.pl',
				schedulerScrpt => 'Scheduler_Script.pl',
				statusRetrivalScript => 'Status_Retrieval_Script.pl',
				viewLogScript => 'View_Log.pl'
			};

#print "File Name: ".FILE_NAMES->{accountSettingsScript}."\n\n";

use constant CONST => {		
		
		#------------------Menu Choice---------------------#
			AskDefAcc	=>	'1) Default encryption key',
			AskPvtAcc	=>	'2) Private encryption key',
			DisplayVer	=>	'1) Display versions for your file',
			BackupKillOp	=>	'1) Kill backup job',
			RestoreKillOp	=>	'2) Kill restore job',
			KillBothOprOp	=>	'3) Kill both backup and restore job',
			StatBackOp	=>	'1) Backup Job',
			StatRstOp	=>	'2) Restore Job',
			AskMirrorType	=> '1) mirror',
			AskRelativeType	=> '2) relative',
			Product => 'ForLinux',
			Version => '2.10  ',
		#------------------EVS Operations ---------------------#	
			LinkBucketOp => 'LinkBucket',
			NickUpdateOp => 'NickUpdate',
			ListDeviceOp => 'ListDevice',
			BackupOp => 'Backup',
			CreateBucketOp => 'CreateBucket',
			RestoreOp => 'Restore',
			ValidateOp => 'Validate',
			GetServerAddressOp => 'GetServerAddress',
			AuthListOp => 'Authlist',
			ConfigOp => 'Config',
			GetQuotaOp => 'GetQuota',
			PropertiesOp => 'Properties',
			CreateDirOp => 'CreateDir',
			SearchOp => 'Search',
			RenameOp => 'Rename',
			ItemStatOp => 'ItemStatus',
			VersionOp => 'Version',
			VerifyPvtOp => 'VerifyPvtKey',			
			validatePvtKeyOp => 'validatePvtKey',
		#------------------ A -----------------------------#
			AskIfProxy	=>	'Are you using Proxy(y/n)?',
			AccountSet	=>	'Your Account is ready to use now.',
			LogoutSuccess	=>	'is logged out successfully.',
			LoginAlready	=>	'Account is already logged in.',
			AccCongiguringMsg => 'Encryption key not set. Setting the encryption key to default...',
			LoginSuccess	=>	'is logged in successfully.',
			AccountConfig	=>	'Account is configured successfully.',
			AlreadyConfig	=>	'Your account details are:',
			AccLogin	=>	'account using '.FILE_NAMES->{loginScript}.' and try again.',
			AnotherRestoreJob => 'Another Restore job is in progress.',
			LogoutInfo => 'No user is logged in.',
			askfForLogin	=> 'Do you want to login as ',
			alreadyLoginUser	=> 'is already logged in',
			askServicePath	=> 'Enter location for idrive to store service files/supporting files :',
			aboutServicePath => 'NOTE: Service Path, a location where idrive creates and manages its service files and folders.',
			AlreadyLoginUser => ' is already logged in. Logout using '.FILE_NAMES->{logoutScript}.' and try again.',
			Account => 'Account',
			adoptLinkMess => 'Select from existing Backup Locations',
		#--------------------- B -----------------------------#
			BucketLength => 'Reason: Length must be between 4 to 64 characters ',
			BackupLocInvalidDedup => 'Invalid Backup Location: ',
			BackupLocRetryDedup => 'Unable to set Backup Location. Your maximum retry attempt reached. Please try Again.',
			BackupLocNoteDedup => '[Note: Backup location should contain only letters, numbers, space and characters(.-_)]',
			MkBackupDir	=>	'Backup Location created successfully',
			BckupSchRunning	=>	'Backup_Script.pl: Starting Scheduler job.',
			BckPathMissing	=>	'Backup set file path is missing in config file.',
			BckFileMissing	=>	'Backup set file not found, verify the config file parameters.',
			BckStartTm	=>	'Backup Start Time  : ',
			BckEndTm	=>	'Backup End Time  : ',
			BckUsrCancl	=>	'Backup failed. Reason: Operation cancelled by user.',
			BckCanclForChld	=>	'Backup failed. Reason: Operation cancelled.',
			BckContnt	=>	'Backupset content :',
			BeforeScript	=>	'before running this script',
			BothRunning	=>	'Schedule Backup and Restore Jobs are in progress.',
			BackupSetEmpty => 'Backup set file is empty. ',
			BackupScriptName => 'Backup_Script.pl',	
			backupDeviceIdFile => 'backupDeviceId.txt',	
		#------------------- C ----------------------------#
			operationNotCompleted => 'Could not complete operation. ',
			EvsCmplCheck	=>	'Checking for compatible idevsutil command line utility...',
			AskPvtAgain		=> 'Confirm your encryption key: ',
			ConfirmPvt		=> 'Confirming encryption key...',
			InputEmptyErr	=>	'Cannot be empty. Enter again: ',
			CrtUserDir		=>	'Creating user directory...',
			FileOpnErr	=>	'Could not open file ',
			FileCrtErr	=>	'Could not create ',
			ExcldMsg	=>	'considered to exclude from backup set, Reason : ',
			ForkErr	=>	'Cannot fork() child process : ',
			CrtEncFile	=>	'createEncodeFile :',
			ConfMissingErr	=>	'Configuration File does not exist. Please run '.FILE_NAMES->{accountSettingsScript}.' and try again.',
			CheckPreq	=>	'Checking Prerequisite...',
			CanContain => 'Username should contain a-z, 0-9 and underscore.',
			WrongCutOff => 'Scheduled time and cut off time should have minimum 5 minutes of difference.',
			CalCulate => 'Calculating..',
			CheckVerMsg	=> 'Checking for new updates...',
			ConfigEmailIDMess	=> 'Configured e-mail address(es): ',
			cuttoffNeeded	=> 'Do you want to have cut off time for your',
			configurationFile => 'CONFIGURATION_FILE',
		#---------------------D -----------------------------#
			wantTo		=> 	'Do you want to:',
			Instruct	=>	'Dear User, Please provide your details below',
			NotExist	=>	'does not exist.',
			AskRetainLogs	=>	'Do you want to Retain Logs(y/n)?',
			AskRestoreVer	=>	'Do you want to restore any specific version(y/n)?',
			PvtAccTypeMsg	=>	'Dear user, Your account type is PRIVATE',
			DefAccTypeMsg	=>	'Dear user, Your account type is DEFAULT.Ignoring and removing pvt-key from CONFIGURATION..',
			DirCrtMsg		=>	'User directory has been created successfully.',
			AskLogin	=>	'Do you want to login(y/n)?',
			editQuery	=>	'Do you want to edit(y/n)?',
			reallyEditQuery =>      'Do you really want to edit(y/n)?',
			notificationQuery	=>	'Do you want to enable email notification (y/n)?',
			schAddQuery	=>	'Do you want to add a new one  (y/n)?',
			defaultRestLocMess	=> 'Considering Default Restore Location as',
			doUwant2Change 	=> 'Do you want to change (y/n)?',
			defaultServicePath => 'Your default service path is : ',
			displayUserMessage => sub {return  join(' ',@_)},
			notExists => 'does not exists',
			changeServicePath => 'Do you want to change your service path (y/n)?',
			noSufficientPermission => 'does not have sufficient permissions',
			viewLogMessage => 'Select option to view logs for: ',
			viewMoreLogs => 'Do you want to view more logs(y/n).',
		#---------------------E -----------------------------#
			setEncKeyMess => 'Encryption key is set sucessfully...',
#			emailNotConfig	=> 	'Could not configure email address.',
			selectDevice => 'Enter the S.No. to select your Backup Location [Press Enter to go back to main menu]:',#suggested by deepak
			emailNotConfig => 'No Email Id is configured.',
			AskUname	=>	'Enter your username: ',
			AskPword	=>	'Enter your password: ',
			AskProxyIp	=>	'Enter Proxy Server IP: ',
			AskProxyPort	=>	'Enter Proxy Port: ',
			AskProxyUname	=>	'Enter Proxy username if exists: ',
			AskProxyPass	=>	'Enter Proxy password if exists: ',
			EnterChoice		=>	'Enter your choice: ',
			AskPvtSetAcc	=> 'Enter the encryption key: ',
			AskPvt		=>	'Set your encryption key: ',
			AskEmailId	=>	'Enter your e-mail ID(s) [For multiple e-mail IDs use (,) or (;) as separator] [Optional]: ',
			AskBackupLoc	=>	'Enter your Backup Location [Optional]',
			AskRestoreLoc	=>	'Enter your Restore Location [Optional]: ',
			AskRestoreLocRepet =>   'Please enter Restore Location to continue: ',
			AskRestoreFrom	=>	'Enter your Restore From Location [Optional]: ',
			AskFilePath	=>	'Enter your File Path :',
			AskLogout	=> 	'Do you want to logout ',
			Exit	=>	'Exiting',
			AskOption	=> 'Menu Options:',
			ErrFlContnt	=>	'Error file content:',
			EmlIdMissing	=>	'Email address not provided in CONFIGURATION file.',
			EnterAgn	=> 'Enter Again : ',
			EvsChild => 'for EVS',
			LogChild => 'for Output Parsing',
			EmptyEmailId => 'Email address cannot be empty.',
			EmailEmpty	=>	'Email address feild is empty.',
			existingSchJob	=> 'You have an existing scheduled',	
			enterChoiceSchJob	=> 'Please select options to run Schedule ',
			emailNotificationSetting => 'Your email notification settings are : ',
			emailNotificationStatus	 => 'Email notification status : ',
			emailIDs		=> 'Email address(es) are: ',
			emailNotificationDisable => 'Do you want to Disable Email Notification (y/n)?',
			emailIDChange		=> 'Do you want to Change Email ID(s) (y/n)?',
			emailIDRequired		=> 'Enter your e-mail ID(s) [For multiple e-mail IDs use (,) or (;) as separator]: ',
			emailChangeMax		=> 'Maximum attempt to change Email address(es) reached. You Email address(es) remains:',
			emailUpdateMax		=> 'Maximum attempt reached, could not update Email address.',
			existsServicePath 	=> 'Your previous service path is',
			errorServicePath	=> 'Error in creating service path : ',
			AskServicePath		=> 'Enter your service path [This location will be used to maintain the temporary data used by your scripts] [Optional]: ',
			existingEmail	=> 'Existing email address(es) are: ',
			logChoice => 'Enter the S.No. to view log: ',
			startDate => 'Enter start date (MM/DD/YYYY): ',
			endDate => 'Enter end date (MM/DD/YYYY): ',
			useBWinput => 'Enter bandwidth throttle value [1-100]:',
			errorDisplayLog => 'Error in display log.',
		#------------------- F ----------------------------#
			FulExcld  => "full exclude= ",
			NotFound	=>	'File Not Found: ',
			GetSrvAdrErr	=>	'Failed to execute getServerAddress. Please check the credentials.',
			SendMailErr	=>	'Failed to send mail.',
			KilFail	=>	'Failed to kill ',
			CreateFail => 'Failed to create',
			updateFail => 'Failed to Update.',
			failedMailNotifyGet	=> 'Failed to get email notification settings.',
			failedMailNotifySet	=> 'Failed to set email notification settings.',
			fileDisplaySummary	=> 'fileSummary.txt',	
			fileEditSuccessfully => 'Operation completed successfully',	
			moreDetailsReferLog => 'For more details refer the log mentioned below or run "'.FILE_NAMES->{viewLogScript}.'" and follow the instructions.',
		#------------------- G ----------------------------#
			GetServAddr	=>	'getServerAddr : ',
			DirCreateQuery => 'Location doesn\'t exist. Do you want create(y/n)?',
		
		
		#------------------- H ----------------------------#
		
		#------------------- I ----------------------------#
			InvalidIP	=> 	'Invalid IP Address',
			InvalidPort	=> 	'Invalid port number',
			InvalidChoice	=>	'Invalid choice.',
			InvalidVersion	=>	'Invalid version.',
			EvsPermissionErr=>	'idevsutil file does not have executable permission. Please give it executable permission',
			EvsMissingErr	=> 	'EVS binary is missing. Please re-configure your account using '.FILE_NAMES->{accountSettingsScript}.' script and try again.',
			#EvsMissingErr	=>	' idevsutil file does not exist. Please run Account setting script to configure your account.',
			#EvsMissingErr	=>	'idevsutil file does not exist in current directory. Please copy idevsutil file to current directory',
			InvalidUnamePwd	=>	'Invalid username or Password',
			InvalidEmail	=>	'Invalid e-mail address(es):',
			StatCount	=>	'In STATUS count : ',
			InvalidOp	=>	'invalid operation type.',
			NotRng	=>	'is not running.',
			IsRng	=>	'is running.',
			IsAbvl	=> 'is available',
			NoFileEvsMsg	=> 'Invalid Restore From Location. Reason: path does not exist.',
			StatSize	=> 'In Status size : ',
			InvLocInput	=> 'Invalid Location. ',
			InvUname	=> 'Invalid username. Please try again.',
			InvRestoreLoc => 'Invalid Restore Location: ',
			InvBackupLoc => 'Invalid Backup Loaction',
			InvRestoreFrom => 'Invalid Restore From',
			InvRetainLog	=> 'Invalid Retain Log option',
			InvProxy	=> 'Invalid proxy details',
			incorrectPwd	=> 'incorrectPwd',
			productUptoDate	=> ' is up to date.',
			InvalidPvtKey	=> 'Invalid encryption key.',	
			InvalidUsrSerDir => 'Invalid service path. Please try again.',
			InvalidUserPattern => 'Invalid UserName. Please try again.',
			IDENPWD		=> 'IDENPWD', 
			IDPWD		=> 'IDPWD',
			IDPVT 		=> 'IDPVT',
			invalidDate => 'Invalid Date or date format. Please try again.',
			invalidBWinput => 'Invalid bandwidth throttle value. Bandwidth throttle must be between 1-100. Please try again.',	
			IDriveMaintainer	=> 'IDrive Inc.',
		#------------------- J ----------------------------#
			JobTerminationScriptName => 'Job_Termination_Script.pl',	
			JobTerminateMessage	 => 'job terminated successfully',
			jobNotSch		=> "couldn't be scheduled",
			jobRemoveSuccess	=> 'Job has been removed successfully.',
		#------------------- K ----------------------------#
			ProxyErr	=>	'Kindly verify your proxy details or check network connectivity and try again.',
			ProxyUserErr	=> 'Kindly verify your network connection or proxy details and try again.', 
		
		
		#------------------- L ----------------------------#
			ListOfDevice => 'List of existing Backup Locations:', #suggested by deepak
			LoadingAccDetails => 'Loading your account details. Please wait ...',
			locationQuery	=> 'Enter valid location: ',	
			logoutRequest	=> 'Please logout',
			loginConfigAgain	=> 'Your account is not configured. Please configure using '.FILE_NAMES->{accountSettingsScript}.' and try again.',
			logoutBackupJob	=> 'Logging out from your account will terminate Manual Backup job. Do you want to continue (y/n)?',
			logoutRestoreJob => 'Logging out from your account will terminate Manual Restore job. Do you want to continue (y/n)?',
			logoutBackupRestoreJob => 'Logging out from your account will terminate Manual Backup and Restore job. Do you want to continue (y/n)?',
			LocationString => 'LOCATION : ',
			logDispSuccess => 'Log displayed successfully.',
			logList => 'Log List:',
			loginAccount => 'Please login to your account using "'.FILE_NAMES->{loginScript}.'" script and try again.',
		#------------------- M ----------------------------#
			maxRetryCuttoff	=> 'Unable to set cut off as your maximum retry attempts reached.',	
			maxRetry	=> 'Your Maximum retry attempts reached. Please try again.',	
			maxRetryRestoreFrom	=> 'Your maximum attempt to change Restore from location has reached.',
		 	messDefaultRestoreFrom	=> 'Considering Default Restore From Location as',
			messDefaultBackupLoc	=> 'Considering Default Backup Location as',
			maxRetryEmailID		=> 'Your maximum attempt to enter Email ID has reached.',	
			maxRetryattempt		=> 'Maximum retry attempts reached.',
		#------------------- N ----------------------------#
			NoOpRng	=>	'No Schedule Backup/Restore Job is running.',
			BinNotFound	=> 'Not Found.',
			NotAbvl	=>	'is not available.',
			RstFromGuidMsg	=>	'Note: Your Restore From Location should indicate the location from which you want to restore the data.',
			NonExist => 'Invalid file path.',
			verAvlqueryMsg	=> 'New updates are available. Do you want to update(y/n)?',
			noLogOut	=> 'Unable to logout.',
			noFileDir	=> 'No such file or directory',
			noSchJob	=> 'There is no scheduled',
			noChangeServicePath => 'Your service directory remains ',
			noLogs => 'No logs found. Please try again.',
#			noServicePath	=> 'Service directory does not exists. Please run Account_Setting.pl script... ',
		#------------------- O ----------------------------#
			operationNotcomplete => 'Operation could not be completed.',
			OpUsrCancel	=>	'Operation could not be completed. Reason : Operation cancelled by user',
			operationFailUser => "Operation could not be completed. Reason: Operation Cancelled by user.",
			operationFailCutoff => "Operation could not be completed. Reason : Operation Cancelled due to Cut off.",
			logOpeningMessage => 'Opening Log file ...',
			FileopeningMess => 'Opening file to edit ...',	
		#------------------- P ----------------------------#
			passwordMismatch => 'Reason : password mismatch.',
			EvsProblem      =>      'Problem with EVS binary. Please re-configure your account using '.FILE_NAMES->{accountSettingsScript}.' script and try again.',
			createBucketMess => 'Create new Backup Location',
			PvtErr	=>	'Encryption key and confirm encryption key must be the same',
			AskPvtWithCond	=>	'Encryption key must contain 6 to 250 characters',
			TryAgain		=>	'Please try again.',
			pleaseTryAgain	=>	'Please try again.',
			AskCorrectPvt	=>	'Invalid encryption key. Please re-enter your encryption key: ',
			NetworkErr	=>	'Probably your network has proxy settings or Server is down. Kindly Try Again',
			AskVersion	=>	'Provide the version no for file:',
			PlLogin	=>	'Please login to your',
			ParExcld	=>	'partial exclude= ',
			LoginWait	=> 'Please wait. Logging into your account...',
			SuggestInstall	=> 'Please install and try again.', 
			AskStatusOp	=>	'Please Choose any one option to continue',
			LongPwd => 'Parameter \'password\' should be at least 6 - 20 characters',
			ProvideEmailId	=>	'Provide your e-mail ID(s) [For multiple e-mail IDs provide comma(,) seperation]',
			AskLocforBackup	=>	'Please enter Backup Location to continue: ',
			PrepFileMsg	=>	'Preparing File list...',
			portError	=> 	'Your maximum attempts has reached. Do you want to continue without proxy (y/n)?',	
			proxyError	=> 	'Your maximum attempts has reached. Do you want to continue without proxy (y/n)?',
			previousChoice =>	'Previous choice: ',
#			InvalidPassPattern => q(Password should be at least 6 - 20 characters and can contain A-Z, a-z, 0-9 and ~`!@#$%^&*()-_+={}|[];'"<>,.?/ . Please try again.),
			InvalidPassPattern => 'Invalid password. Please try again.',
			RecreateServiceDir => 'Please create your service directory',
			viClosureMessage => 'Press "Esc key", ":q!" and "Enter key" to exit from vi editor.',
			viEditClosureMessage => 'Press "Esc key", ":wq!" and "Enter key" to exit from vi editor.',
			pleaseUpdate	=> 'Please run "'.FILE_NAMES->{editSupportedFilesScript}.'" and follow the instructions to update.',
			IBackupMaintainer	=> 'Pro Softnet Corporation',
			parseDeviceList		=> '1',
		#------------------- Q ----------------------------#
		
		
		#------------------- R ----------------------------#
			RestoreVer	=>	'2) Restore a Specific version of your file',
			RestoreOpStart	=>	'Restore operation has been started successfully. Please check the logs for more details.',
			PasswordEmptyErr	=>	'Required param: \'password\' not passed',
			BckupRetry	=>	'----Retrying to do Backup Operation--------',
			InstrctReadMe	=>	'Read "'.FILE_NAMES->{readMeFile}.'" for details.',
			ChldFailMsg	=>	'Reason : Child process launch failed.',
			AccUndrMntnc	=>	'Reason : Account is under maintenance.',
			AccCancld	=>	'Reason : Account is cancelled.',
			AccExprd	=>	'Reason : Account has expired.',
			NotRegFile	=>	' reason: Not a regular file/folder.',
			ParEXcldItem	=>	'  reason: Partial path excluded item.',
			FulExcldItem	=>	' reason: Full path excluded item.',
			RegexEXcldItem	=>	' reason: Regex path excluded item.',
			RstorSchRunning	=>	'Restore_Script.pl: Scheduler job is running.',
			RstPathMissing	=>	'Restore set file path is missing in config file.',
			RstFileMissing	=>	'Restore set file not found, verify the config file parameters',
			RstUsrCancl	=>	'Restore failed. Reason: Operation cancelled by user.',
			RstCanclForChld	=>	'Restore failed. Reason: Operation cancelled.',
			RstStartTm	=>	'Restore Start Time: ',
			RstEndTm	=>	'Restore End Time: ',
			RestoreSetEmpty => 'Restore set file is empty. ',
			ReleaseNotes	=> 'Release Notes',
			ReleaseNotesDetail => ['Build 2.6.15','1) Fixed the menthioned bugs in open issues list. Some are not reproducible please check it once again.',
							   '2) Now using Account settings script, its possible to edit the account too.',
							   '3) view_Log.pl script has been introduced to view the logs related to manual/scheduled backup/restore job',
							   '4) testing',
					      ],		
			restoreFromSet	=> 'Restore From has been set as ',
			restoreFromDir	=> 'Please enter Restore From Location to continue: ',
			restoreLocNoChange	=> 'Your Restore Location remains',
			restoreLocCreation => 'Creating Restore Location...',
			restoreDeviceIdFile => 'restoreDeviceId.txt',
		#------------------- S ----------------------------#
			EvsInstSuccess	=>	'Successfully installed compatible idevsutil binary.',
			SetBackupLoc	=>	'Setting up your Backup Location...',
			SetBackupList	=>	'Setting up your Default Manual Backupset File as BackupsetFile.txt...',
			SetBackupListSch   =>      'Setting up your Default Schedule Backupset File as BackupsetFile.txt...',
			SetRestoreList	=>	'Setting up your Default Manual Restoreset File as RestoresetFile.txt...',
			SetRestoreListSch  =>      'Setting up your Default Schedule Restoreset File as RestoresetFile.txt...',
			SetFullExclList	=>	'Setting up your Default Full Exclude list File as FullExcludeList.txt...',
			SetParExclList	=>	'Setting up your Default Partial Exclude list File as PartialExcludeList.txt...',
			SetRgxExcludeList	=>	'Setting up your Default Regex Exclude list File as RegexExcludeList.txt...',
			Summary	=>	'Summary : ',
			KilSuccess	=>	'Successfully killed ',
			StatMissingErr => 'Status File doesn\'t exists',
			selectBackType	=> 'Select option for Backup Type:',
			scriptStatus	=> 'Exiting script. ',	
			statusSummaryError	=> 'Unable to print status summary.',	
			successServicePath => sub { return qq{$_[0] "$_[1]" created successfully.}},
			serverAddress		=> 'serverAddress.txt',
			ServiceDirectory => 'Service directory',
			stDatEdDateGraterCurrentDate => 'Start date or end date should not be greater than current date. Please try again.',
			stDateGraterEndDate => 'Start Date should not be greater than end date. Please try again.',
			editConfig => 'Select the item you want to edit:',
			serviceLocation => '.serviceLocation',
			selectLocation4Backup => 'Multiple Backup Locations are configured with this account. Select an option:',#Suggested by deepak
			selectRestoreFromLoc => 'Select Restore From Location from list below :',
			backupLocationConfigAgain	=> 'Invalid Backup Location. Please Edit your Backup Location using '.FILE_NAMES->{accountSettingsScript}.' and try again.',
			restoreFromLocationConfigAgain	=> 'Invalid Restore From Location. Please Edit your Restore From Location using '.FILE_NAMES->{accountSettingsScript}.' and try again.',
			restoreFromLocationNotFound	=> 'Restore From Location not found. Please logout and re-configure your account freshly uisng '.FILE_NAMES->{accountSettingsScript}.' and try again.',
		#------------------- T ----------------------------#
			TotalBckCnsdrdFile	=>	'Files considered for backup : ',
			TotalBckFile	=>	'Files backed up now : ',
			TotalSynFile	=>	'Files already present in your account : ',
			TotalSynFileRestore    =>      'Files already present in your Restore Location : ',
			TotalBckFailFile	=>	'Files failed to backup : ',
			TotalRstCnsdFile	=>	'Files considered for restore : ',
			TotalRstFile	=>	'Files restored now : ',
			TotalRstFailFile	=>	'Files failed to restore : ',
			TestOk	=>	'Tested ok',
			tracelog => 'traceLog.txt',	
			DedupAccError => 'Important Note: This account currently does not support Linux Backup. Please contact "support@idrive.com" to enable linux backup for this account.',
		
		
		#------------------- U ----------------------------#
			EvsMatchError	=> 'unable to get compatible idevsutil binary.',
			LogoutErr	=>	'Unable to logout from account. Please try again',
			MkDirErr	=>	'Unable to create user directory : ',
			DoBckOpErr	=>	'Unable to proceed the backup operation',
			DoRstOpErr	=>	'Unable to proceed the restore operation',
			BckFileOpnErr	=>	'Unable to open Backup set file',
			ExclFileOpnErr	=>	'Unable to open full path exclude file',
			ParExclFileOpnErr	=>	'Unable to open partial path exclude file',
			ExclFileOpnErr	=>	'Unable to open exclude file',
			unzipErr	=>	'Unable to use unzip. Please reinstall "unzip" and try again.',
			curlErr	=>	'Unable to use curl. Please reinstall "curl" and try again.',
			BackLocCrFailMsg =>	'Unable to Create Backup Location. Please try again.',
			ForkErr => 'Unable to start child process',  
			bckProcessFailureMsg => 'Unable to proceed the backup operation. Reason : Child process launch failed for monitoring output file.',
			rstProcessFailureMsg => 'Unable to proceed the restore operation. Reason : Child process launch failed for monitoring output file.',
			CronQuery => 'To continue, Please provide root ',
			CronQueryUbuntu => 'To continue, Please provide [sudo] password for',
			killQuery => 'To kill the job, Please provide root ',
			killQueryUbuntu => 'To kill the job, Please provide [sudo] password for',
			UpdateFinished	=> 'Scripts updated successfully.',
			userLoggedIn	=> 'is already logged in. Do you want to logout(y/n)?',
			userNameMissing	=> 'Username for schedule job paramater is missing',
			updatingScripts => 'Updating scripts. Please wait...',
			noServiceLoc	=> 'unable to find service location, please re-configure your account.',
		#------------------- V ----------------------------#
			verifyPvt	=>	'Verifying your encryption key...',
			verifiedPvt	=>	'Verification of encryption key is successful',
			verifyAccount	=>	'Verifying your account information...',
			versionRestore  =>	'2',
		
		#------------------- W ----------------------------#
			WrongBackupType => 'Incorrect Backup Type in CONFIGURATION_FILE. Run "'.FILE_NAMES->{accountSettingsScript}.'" script to set Backup Type and try again.',
			schCreateQuery	=>	'Would you like to create a new one (y/n)?',
			schEditQuery	=>	'Would you like to edit (y/n)?',
			schDelQuery		=>	'Would you like to delete (y/n)?',	
		#------------------- X ----------------------------#
			
		

		#------------------- Y ----------------------------#
			AskConfig	=> 'Your Account encryption key is not set. Do you want to set (y/n)?',
			BackupLocMsg	=>	'Your Backup Location is set to',
			RestoreLocMsg	=>	'Your Restore From Location is set to',
			RestoreLoc	=>	'Your Restore Location is set to',
			defBackupLocMsg	=> 'Your Default Backup Location is',
			SetServiceLocation => 'Your service directory is ',
			urBackupLocation => 'Your Backup Location is',
			urRestoreFrom => 'Your Restore From is',
			urProxyDetails => 'Your proxy details are',
			urProxySetTo => 'Your proxy is set to',
			urBackupType => 'Your Backup Type is',
			urBackupTypeSetTo => 'Your Backup Type is set to',	
			urBWthrottle => 'Your bandwidth throttle is set to',
			bwThrottleSetTo => 'Your bandwidth throttle is set to',
			urRestoreLocation => 'Your Restore Location is set to',
			retainLogEnabled => 'Your Retain Logs option is "Enabled". Do you want to disable(y/n)?',
			retainLogDisabled => 'Your Retain Logs option is "Disabled". Do you want to enable(y/n)?',
			urAccountDetails => 'Your account details are:',
			retainLogsEnable => 'Your Retain Logs option is "Enabled"',
			retainLogsDisabled => 'Your Retain Logs option is "Disabled"',
		#------------------- Z ----------------------------#
		
};
@EXPORT_OK = ('CONST');
@EXPORT = ('FILE_NAMES');
1;
