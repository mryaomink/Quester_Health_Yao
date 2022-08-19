import 'package:get/get.dart';

import '../modules/addpayment/bindings/addpayment_binding.dart';
import '../modules/addpayment/views/addpayment_view.dart';
import '../modules/addpayment/views/pay_complete.dart';
import '../modules/addpayment/views/process_payment.dart';
import '../modules/akun/bindings/akun_binding.dart';
import '../modules/akun/views/akun_view.dart';
import '../modules/appointment/yao_appointment.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/changepass/bindings/changepass_binding.dart';
import '../modules/changepass/views/changepass_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/navbar/yao_navbar.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/manageakun/bindings/manageakun_binding.dart';
import '../modules/manageakun/views/manageakun_view.dart';
import '../modules/otppage/bindings/otppage_binding.dart';
import '../modules/otppage/views/otppage_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/prescriptiondetail/bindings/prescriptiondetail_binding.dart';
import '../modules/prescriptiondetail/views/prescriptiondetail_view.dart';
import '../modules/prescriptions/bindings/prescriptions_binding.dart';
import '../modules/prescriptions/views/prescriptions_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/schdule/bindings/schdule_binding.dart';
import '../modules/schdule/views/schdule_view.dart';
import '../modules/schdule/widgets/cari_doctor.dart';
import '../modules/schdule/widgets/choose_communication.dart';
import '../modules/schdule/widgets/doctor_detail.dart';
import '../modules/schdule/widgets/loading_search.dart';
import '../modules/security/bindings/security_binding.dart';
import '../modules/security/views/security_view.dart';
import '../modules/session/bindings/session_binding.dart';
import '../modules/session/views/session_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/videocall/bindings/videocall_binding.dart';
import '../modules/videocall/views/videocall_view.dart';
import '../modules/videoscreen/bindings/videoscreen_binding.dart';
import '../modules/videoscreen/views/videoscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENT,
      page: () => const YaoAppointment(),
    ),
    GetPage(
      name: _Paths.SCHDULE,
      page: () => const SchduleView(),
      binding: SchduleBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.PRESCRIPTIONS,
      page: () => const PrescriptionsView(),
      binding: PrescriptionsBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const YaoNavbar(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => const AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.DOCDETAILS,
      page: () => const DoctorDetail(),
    ),
    GetPage(
      name: _Paths.CARIDOk,
      page: () => const CariDoctor(),
    ),
    GetPage(
      name: _Paths.ADDPAYMENT,
      page: () => const AddpaymentView(),
      binding: AddpaymentBinding(),
    ),
    GetPage(
      name: _Paths.PROSESPAY,
      page: () => const ProcessPayment(),
    ),
    GetPage(
      name: _Paths.PAYSUKSES,
      page: () => const PayComplete(),
    ),
    GetPage(
      name: _Paths.LOADINGSEARCH,
      page: () => const LoadingSearch(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.OTPPAGE,
      page: () => const OtppageView(),
      binding: OtppageBinding(),
    ),
    GetPage(
      name: _Paths.MANAGEAKUN,
      page: () => const ManageakunView(),
      binding: ManageakunBinding(),
    ),
    GetPage(
      name: _Paths.SECURITY,
      page: () => const SecurityView(),
      binding: SecurityBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNICATION,
      page: () => const ChooseCommunication(),
    ),
    GetPage(
      name: _Paths.CHANGEPASS,
      page: () => const ChangepassView(),
      binding: ChangepassBinding(),
    ),
    GetPage(
      name: _Paths.VIDEOSCREEN,
      page: () => const VideoscreenView(),
      binding: VideoscreenBinding(),
    ),
    GetPage(
      name: _Paths.VIDEOCALL,
      page: () => const VideocallView(),
      binding: VideocallBinding(),
    ),
    GetPage(
      name: _Paths.SESSION,
      page: () => const SessionView(),
      binding: SessionBinding(),
    ),
    GetPage(
      name: _Paths.PRESCRIPTIONDETAIL,
      page: () => const PrescriptiondetailView(),
      binding: PrescriptiondetailBinding(),
    ),
  ];
}
