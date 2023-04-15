import 'package:get/get.dart';

import '../modules/account_profile_page/add_bank_account_page/bindings/account_profile_page_add_bank_account_page_binding.dart';
import '../modules/account_profile_page/add_bank_account_page/bindings/account_profile_page_add_bank_account_page_binding.dart';
import '../modules/account_profile_page/add_bank_account_page/views/account_profile_page_add_bank_account_page_view.dart';
import '../modules/account_profile_page/add_bank_account_page/views/account_profile_page_add_bank_account_page_view.dart';
import '../modules/account_profile_page/add_upi_page/bindings/account_profile_page_add_upi_page_binding.dart';
import '../modules/account_profile_page/add_upi_page/views/account_profile_page_add_upi_page_view.dart';
import '../modules/account_profile_page/assets_details/bindings/account_profile_page_assets_details_binding.dart';
import '../modules/account_profile_page/assets_details/views/account_profile_page_assets_details_view.dart';
import '../modules/account_profile_page/bank_account_page/bindings/account_profile_page_bank_account_page_binding.dart';
import '../modules/account_profile_page/bank_account_page/views/account_profile_page_bank_account_page_view.dart';
import '../modules/account_profile_page/bindings/account_profile_page_binding.dart';
import '../modules/account_profile_page/document_details/bindings/account_profile_page_document_details_binding.dart';
import '../modules/account_profile_page/document_details/views/account_profile_page_document_details_view.dart';
import '../modules/account_profile_page/edit_profile/bindings/account_profile_page_edit_profile_binding.dart';
import '../modules/account_profile_page/edit_profile/views/account_profile_page_edit_profile_view.dart';
import '../modules/account_profile_page/education_details/bindings/account_profile_page_education_details_binding.dart';
import '../modules/account_profile_page/education_details/views/account_profile_page_education_details_view.dart';
import '../modules/account_profile_page/help_page/bindings/account_profile_page_help_page_binding.dart';
import '../modules/account_profile_page/help_page/views/account_profile_page_help_page_view.dart';
import '../modules/account_profile_page/location_details/bindings/account_profile_page_location_details_binding.dart';
import '../modules/account_profile_page/location_details/views/account_profile_page_location_details_view.dart';
import '../modules/account_profile_page/payment_settings/bindings/account_profile_page_payment_settings_binding.dart';
import '../modules/account_profile_page/payment_settings/views/account_profile_page_payment_settings_view.dart';
import '../modules/account_profile_page/skill_details/bindings/account_profile_page_skill_details_binding.dart';
import '../modules/account_profile_page/skill_details/views/account_profile_page_skill_details_view.dart';
import '../modules/account_profile_page/transfer_success_page/bindings/account_profile_page_transfer_success_page_binding.dart';
import '../modules/account_profile_page/transfer_success_page/bindings/account_profile_page_transfer_success_page_binding.dart';
import '../modules/account_profile_page/transfer_success_page/views/account_profile_page_transfer_success_page_view.dart';
import '../modules/account_profile_page/transfer_success_page/views/account_profile_page_transfer_success_page_view.dart';
import '../modules/account_profile_page/transfer_to_bank_page/bindings/account_profile_page_transfer_to_bank_page_binding.dart';
import '../modules/account_profile_page/transfer_to_bank_page/views/account_profile_page_transfer_to_bank_page_view.dart';
import '../modules/account_profile_page/upi_id_page/bindings/account_profile_page_upi_id_page_binding.dart';
import '../modules/account_profile_page/upi_id_page/views/account_profile_page_upi_id_page_view.dart';
import '../modules/account_profile_page/views/account_profile_page_view.dart';
import '../modules/account_profile_page/wallet_page/bindings/account_profile_page_wallet_page_binding.dart';
import '../modules/account_profile_page/wallet_page/views/account_profile_page_wallet_page_view.dart';
import '../modules/base_page/bindings/base_page_binding.dart';
import '../modules/base_page/views/base_page_view.dart';
import '../modules/dashboard_page/bindings/dashboard_page_binding.dart';
import '../modules/dashboard_page/views/dashboard_page_view.dart';
import '../modules/ekyc_page/aadhar_verification/bindings/ekyc_page_aadhar_verification_binding.dart';
import '../modules/ekyc_page/aadhar_verification/views/ekyc_page_aadhar_verification_view.dart';
import '../modules/ekyc_page/bindings/ekyc_page_binding.dart';
import '../modules/ekyc_page/ekyc_details_verification/bindings/ekyc_page_ekyc_details_verification_binding.dart';
import '../modules/ekyc_page/ekyc_details_verification/views/ekyc_page_ekyc_details_verification_view.dart';
import '../modules/ekyc_page/ekyc_verification_pending/bindings/ekyc_page_ekyc_verification_pending_binding.dart';
import '../modules/ekyc_page/ekyc_verification_pending/views/ekyc_page_ekyc_verification_pending_view.dart';
import '../modules/ekyc_page/face_verification/bindings/ekyc_page_face_verification_binding.dart';
import '../modules/ekyc_page/face_verification/views/ekyc_page_face_verification_view.dart';
import '../modules/ekyc_page/pan_verification_page/bindings/ekyc_page_pan_verification_page_binding.dart';
import '../modules/ekyc_page/pan_verification_page/views/ekyc_page_pan_verification_page_view.dart';
import '../modules/ekyc_page/take_document_photo/bindings/ekyc_page_take_document_photo_binding.dart';
import '../modules/ekyc_page/take_document_photo/views/ekyc_page_take_document_photo_view.dart';
import '../modules/ekyc_page/views/ekyc_page_view.dart';
import '../modules/help_page/bindings/help_page_binding.dart';
import '../modules/help_page/views/help_page_view.dart';
import '../modules/job_page/bindings/job_page_binding.dart';
import '../modules/job_page/views/job_page_view.dart';
import '../modules/learn_page/bindings/learn_page_binding.dart';
import '../modules/learn_page/views/learn_page_view.dart';
import '../modules/my_jobs_page/bindings/my_jobs_page_binding.dart';
import '../modules/my_jobs_page/views/my_jobs_page_view.dart';
import '../modules/onboarding/add_user_details_page/bindings/onboarding_add_user_details_page_binding.dart';
import '../modules/onboarding/add_user_details_page/views/onboarding_add_user_details_page_view.dart';
import '../modules/onboarding/login_page/bindings/onboarding_login_page_binding.dart';
import '../modules/onboarding/login_page/views/onboarding_login_page_view.dart';
import '../modules/onboarding/otp_page/bindings/onboarding_otp_page_binding.dart';
import '../modules/onboarding/otp_page/views/onboarding_otp_page_view.dart';
import '../modules/onboarding/select_language_page/bindings/onboarding_select_language_page_binding.dart';
import '../modules/onboarding/select_language_page/views/onboarding_select_language_page_view.dart';
import '../modules/project_page/bindings/project_page_binding.dart';
import '../modules/project_page/views/project_page_view.dart';
import '../modules/splash_page/bindings/splash_page_binding.dart';
import '../modules/splash_page/views/splash_page_view.dart';
import '../modules/web_view/bindings/web_view_binding.dart';
import '../modules/web_view/views/web_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING_SELECT_LANGUAGE_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SELECT_LANGUAGE_PAGE,
      page: () => const OnboardingSelectLanguagePageView(),
      binding: OnboardingSelectLanguagePageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_LOGIN_PAGE,
      page: () => const OnboardingLoginPageView(),
      binding: OnboardingLoginPageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_OTP_PAGE,
      page: () => const OnboardingOtpPageView(),
      binding: OnboardingOtpPageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_ADD_USER_DETAILS_PAGE,
      page: () => const OnboardingAddUserDetailsPageView(),
      binding: OnboardingAddUserDetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.EKYC_PAGE,
      page: () => const EkycPageView(),
      binding: EkycPageBinding(),
      children: [
        GetPage(
          name: _Paths.EKYC_PAGE_FACE_VERIFICATION,
          page: () => const EkycPageFaceVerificationView(),
          binding: EkycPageFaceVerificationBinding(),
        ),
        GetPage(
          name: _Paths.EKYC_PAGE_AADHAR_VERIFICATION,
          page: () => const EkycPageAadharVerificationView(),
          binding: EkycPageAadharVerificationBinding(),
        ),
        GetPage(
          name: _Paths.EKYC_PAGE_EKYC_DETAILS_VERIFICATION,
          page: () => const EkycPageEkycDetailsVerificationView(),
          binding: EkycPageEkycDetailsVerificationBinding(),
        ),
        GetPage(
          name: _Paths.EKYC_PAGE_EKYC_VERIFICATION_PENDING,
          page: () => const EkycPageEkycVerificationPendingView(),
          binding: EkycPageEkycVerificationPendingBinding(),
        ),
        GetPage(
          name: _Paths.EKYC_PAGE_TAKE_DOCUMENT_PHOTO,
          page: () => const EkycPageTakeDocumentPhotoView(),
          binding: EkycPageTakeDocumentPhotoBinding(),
        ),
        GetPage(
          name: _Paths.EKYC_PAGE_PAN_VERIFICATION_PAGE,
          page: () => const EkycPagePanVerificationPageView(),
          binding: EkycPagePanVerificationPageBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.BASE_PAGE,
      page: () => const BasePageView(),
      binding: BasePageBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_PAGE,
      page: () => const ProjectPageView(),
      binding: ProjectPageBinding(),
    ),
    GetPage(
      name: _Paths.LEARN_PAGE,
      page: () => const LearnPageView(),
      binding: LearnPageBinding(),
    ),
    GetPage(
      name: _Paths.JOB_PAGE,
      page: () => const JobPageView(),
      binding: JobPageBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_PAGE,
      page: () => const DashboardPageView(),
      binding: DashboardPageBinding(),
    ),
    GetPage(
      name: _Paths.MY_JOBS_PAGE,
      page: () => const MyJobsPageView(),
      binding: MyJobsPageBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_PROFILE_PAGE,
      page: () => const AccountProfilePageView(),
      binding: AccountProfilePageBinding(),
      children: [
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_EDUCATION_DETAILS,
          page: () => const AccountProfilePageEducationDetailsView(),
          binding: AccountProfilePageEducationDetailsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_LOCATION_DETAILS,
          page: () => const AccountProfilePageLocationDetailsView(),
          binding: AccountProfilePageLocationDetailsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_SKILL_DETAILS,
          page: () => const AccountProfilePageSkillDetailsView(),
          binding: AccountProfilePageSkillDetailsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_ASSETS_DETAILS,
          page: () => const AccountProfilePageAssetsDetailsView(),
          binding: AccountProfilePageAssetsDetailsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_DOCUMENT_DETAILS,
          page: () => const AccountProfilePageDocumentDetailsView(),
          binding: AccountProfilePageDocumentDetailsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_EDIT_PROFILE,
          page: () => const AccountProfilePageEditProfileView(),
          binding: AccountProfilePageEditProfileBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_PAYMENT_SETTINGS,
          page: () => const AccountProfilePagePaymentSettingsView(),
          binding: AccountProfilePagePaymentSettingsBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_HELP_PAGE,
          page: () => const AccountProfilePageHelpPageView(),
          binding: AccountProfilePageHelpPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_WALLET_PAGE,
          page: () => const AccountProfilePageWalletPageView(),
          binding: AccountProfilePageWalletPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_ADD_BANK_ACCOUNT_PAGE,
          page: () => const AccountProfilePageAddBankAccountPageView(),
          binding: AccountProfilePageAddBankAccountPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_ADD_UPI_PAGE,
          page: () => const AccountProfilePageAddUpiPageView(),
          binding: AccountProfilePageAddUpiPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_UPI_ID_PAGE,
          page: () => const AccountProfilePageUpiIdPageView(),
          binding: AccountProfilePageUpiIdPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_BANK_ACCOUNT_PAGE,
          page: () => const AccountProfilePageBankAccountPageView(),
          binding: AccountProfilePageBankAccountPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_TRANSFER_TO_BANK_PAGE,
          page: () => const AccountProfilePageTransferToBankPageView(),
          binding: AccountProfilePageTransferToBankPageBinding(),
        ),
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_TRANSFER_SUCCESS_PAGE,
          page: () => const AccountProfilePageTransferSuccessPageView(),
          binding: AccountProfilePageTransferSuccessPageBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.HELP_PAGE,
      page: () => const HelpPageView(),
      binding: HelpPageBinding(),
      children: [
        GetPage(
          name: _Paths.ACCOUNT_PROFILE_PAGE_HELP_PAGE,
          page: () => const AccountProfilePageHelpPageView(),
          binding: AccountProfilePageHelpPageBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.WEB_VIEW,
      page: () => const WebViewView(),
      binding: WebViewBinding(),
    ),
  ];
}
