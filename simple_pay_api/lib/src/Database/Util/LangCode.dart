/*
    DB 내 LANG 테이블의 LANG_ID와 일치함
 */
class LangCode {
  static const int save_success = 1000;
  static const int save_failed = 1001;
  static const int not_connected_devices = 1002;
  static const int menu_category = 1014;
  static const int kitchen_memo = 1023;
  static const int item_category = 1025;
  static const int table = 1030;
  static const int group_name = 1031;
  static const int operations = 1046;
  static const int tip_adjustments = 1052;
  static const int time_card1 = 1053;
  static const int shift_ampersand_schedule = 1074;
  static const int daily_sales_report = 1076;
  static const int sales_report_by_card_types = 1083;
  static const int category_name = 1095;
  static const int cancel = 1100;
  static const int count = 1102;
  static const int menu_name = 1103;
  static const int unit_price = 1104;
  static const int status = 1107;
  static const int barcode = 1109;
  static const int tax_included = 1112;
  static const int sold_out = 1115;
  static const int select = 1125;
  static const int kitchen_printer = 1126;
  static const int dine_in = 1134;
  static const int quick_serve = 1135;
  static const int add = 1138;
  static const int date = 1140;
  static const int starting_date = 1141;
  static const int ending_date = 1142;
  static const int memo = 1146;
  static const int amount = 1148;
  static const int close = 1154;
  static const int delete = 1160;
  static const int table_name = 1167;
  static const int check_list = 1185;
  static const int mon = 1207;
  static const int tue = 1208;
  static const int wed = 1209;
  static const int thu = 1210;
  static const int fri = 1211;
  static const int sat = 1212;
  static const int sun = 1213;
  static const int price = 1218;
  static const int no_dot = 1229;
  static const int db_error_has_occurred_please_contact_administrator = 1240;
  static const int move = 1252;
  static const int address = 1263;
  static const int zip_code = 1266;
  static const int party_size = 1288;
  static const int error = 1309;
  static const int unselect_the_combined_table_as_the_main_table = 1322;
  static const int would_you_like_to_move_combine_table_0_to_1 = 1327;
  static const int service_table = 1330;
  static const int service_the_table = 1331;
  static const int clear_the_table = 1338;
  static const int qty = 1344;
  static const int cashier_in = 1347;
  static const int cashier_out = 1348;
  static const int enter = 1349;
  static const int counter = 1350;
  static const int signature_pad = 1354;
  static const int tax = 1360;
  static const int owner_name = 1369;
  static const int default_language = 1383;
  static const int closing_time = 1384;
  static const int service_type = 1391;
  static const int cash_payment = 1404;
  static const int pos_name = 1416;
  static const int asp_url = 1436;
  static const int receipt = 1443;
  static const int payment_type = 1454;
  static const int printer = 1457;
  static const int credit_card1 = 1460;
  static const int pay_in = 1510;
  static const int pay_out = 1511;
  static const int account_name = 1512;
  static const int search = 1518;
  static const int partial_payment_exist_cannot_delete = 1522;
  static const int type = 1525;
  static const int discount_amount = 1526;
  static const int reason = 1528;
  static const int issue_amount = 1536;
  static const int payment_amount = 1538;
  static const int check_no = 1550;
  static const int table_name2 = 1551;
  static const int combine = 1553;
  static const int my_order = 1554;
  static const int all_orders = 1555;
  static const int order_number = 1556;
  static const int my_order2 = 1557;
  static const int select_employee = 1559;
  static const int table_combined_with_another_table = 1582;
  static const int split = 1583;
  static const int cash = 1584;
  static const int total = 1585;
  static const int check = 1586;
  static const int move_join = 1589;
  static const int link_table = 1590;
  static const int total_guest = 1593;
  static const int amount_due = 1594;
  static const int sub_total = 1595;
  static const int tender = 1598;
  static const int select_the_check = 1599;
  static const int unit2 = 1605;
  static const int inventory_amount = 1606;
  static const int balance = 1609;
  static const int discount = 1612;
  static const int all = 1613;
  static const int posid = 1620;
  static const int please_input_the_amount = 1621;
  static const int please_check_the_amount = 1622;
  static const int please_swipe_your_card = 1623;
  static const int exceed_input_limit = 1627;
  static const int exit_the_program = 1631;
  static const int payment_information = 1638;
  static const int house_account = 1644;
  static const int total_amount = 1645;
  static const int message = 1651;
  static const int total_charge = 1652;
  static const int receipt_no = 1653;
  static const int date___time = 1654;
  static const int pre_gratuity = 1656;
  static const int gratuity = 1657;
  static const int status2 = 1663;
  static const int remaining_balance = 1669;
  static const int second = 1689;
  static const int cash_drawer_information = 1694;
  static const int product_name = 1700;
  static const int tax1 = 1701;
  static const int tax2 = 1702;
  static const int tax3 = 1703;
  static const int total2 = 1711;
  static const int cost = 1713;
  static const int receipt_number = 1719;
  static const int gift_card = 1735;
  static const int order = 1740;
  static const int would_you_like_to_cancel = 1741;
  static const int undo_changes = 1749;
  static const int refund = 1766;
  static const int please_enter_price = 1770;
  static const int date2 = 1774;
  static const int time = 1775;
  static const int search_by_receipt = 1776;
  static const int print = 1780;
  static const int sales_report = 1789;
  static const int exit = 1803;
  static const int tip = 1835;
  static const int employee_name = 1837;
  static const int would_you_like_to_refund = 1840;
  static const int range = 1842;
  static const int data_initialize = 1853;
  static const int you_cannot_restore_deleted_data = 1862;
  static const int order_amount = 1867;
  static const int settlement_report2 = 1877;
  static const int sale = 1895;
  static const int settlement_amount = 1900;
  static const int hour = 1903;
  static const int month = 1908;
  static const int salesAmount = 1912;
  static const int day2 = 1922;
  static const int please_select_item_first = 1926;
  static const int ordered_time = 1937;
  static const int restart_app_to_apply = 1940;
  static const int table_group = 2003;
  static const int week = 2006;
  static const int item_management = 2022;
  static const int menu_button2 = 2080;
  static const int payment = 2148;
  static const int opened_date = 2161;
  static const int closed_date = 2163;
  static const int subtotal = 2171;
  static const int minutes = 2174;
  static const int percent = 2208;
  static const int item_name = 2224;
  static const int tax_applied = 2244;
  static const int open_price = 2283;
  static const int card_type = 2300;
  static const int account_name2 = 2340;
  static const int start = 2400;
  static const int stop = 2401;
  static const int difference = 2440;
  static const int
      you_must_cashier_out_all_the_other_pos_stations_first_for_the_end_of_day =
      2443;
  static const int unit = 5019;
  static const int search_date = 5030;
  static const int change = 5031;
  static const int serial_number = 5032;
  static const int would_you_like_to_delete_selected_item = 5038;
  static const int other_payment = 5067;
  static const int clock_in = 5080;
  static const int clock_out = 5081;
  static const int break_in = 5082;
  static const int break_out = 5083;
  static const int user_defined = 5086;
  static const int clock_in_successful = 5093;
  static const int clock_out_successful = 5094;
  static const int order_information = 5097;
  static const int cash_drawer_open = 5100;
  static const int sales_price = 5104;
  static const int yes = 5108;
  static const int no = 5109;
  static const int ok = 5110;
  static const int back_up_failed = 5113;
  static const int back_up_successful = 5114;
  static const int time_card2 = 5116;
  static const int recall = 5129;
  static const int check_date = 5133;
  static const int employees_on_duty = 5139;
  static const int address_detail = 5146;
  static const int delete_failed = 5175;
  static const int cash_inout_report = 5193;
  static const int card = 5198;
  static const int item = 5209;
  static const int clear_table = 5223;
  static const int cashier_in_required = 5245;
  static const int trout_d = 5246;
  static const int gratuity_employee = 5247;
  static const int would_you_like_to_save_the_current_order = 5248;
  static const int offline_cc = 5249;
  static const int total_due = 5251;
  static const int total_received = 5252;
  static const int server = 5255;
  static const int synchronize = 5269;
  static const int sales_total = 5271;
  static const int change2 = 5272;
  static const int please_enter_quantity = 5273;
  static const int received = 5274;
  static const int balance3 = 5275;
  static const int hold_time = 5281;
  static const int minute = 5286;
  static const int detail = 5292;
  static const int sales_date = 5293;
  static const int sales_amount = 5294;
  static const int beginning_balance = 5300;
  static const int point = 5308;
  static const int reprint = 5309;
  static const int save2 = 5314;
  static const int
      would_you_like_to_settle_for_the_day_including_credit_card_transactions =
      5328;
  static const int would_you_like_to_settle_credit_card_transactions = 5329;
  static const int confirm = 5331;
  static const int payment_method = 5339;
  static const int payment_amount2 = 5340;
  static const int different_employee_signed_in = 5351;
  static const int search_by_category = 5359;
  static const int menu_search = 5360;
  static const int void_string = 5373;
  static const int cashier = 5375;
  static const int password_error = 5377;
  static const int traysharp = 5391;
  static const int cash_sum2 = 5392;
  static const int cashier_out_report = 5393;
  static const int pay_in_out = 5394;
  static const int estimated_amount_in_register = 5395;
  static const int actual_amount_in_register = 5396;
  static const int balance_difference = 5397;
  static const int result = 5398;
  static const int sign_in_time = 5400;
  static const int sign_out_time = 5401;
  static const int tendered_from_sales = 5402;
  static const int other_actitvity = 5405;
  static const int total_cash = 5406;
  static const int balance_difference_detail = 5409;
  static const int cash_difference = 5410;
  static const int cash_in = 5413;
  static const int cash_out = 5414;
  static const int estimate_balance_detail = 5416;
  static const int please_enter_issue_date = 5428;
  static const int please_enter_check_number = 5429;
  static const int new_check = 5437;
  static const int card_no = 5438;
  static const int card_issuer = 5439;
  static const int hold_time_input = 5444;
  static const int current_time = 5445;
  static const int input_memo = 5446;
  static const int would_you_like_to_proceed = 5448;
  static const int print_receipt_q = 5450;
  static const int eat_in = 5451;
  static const int take_out = 5452;
  static const int item_sales_amount = 5461;
  static const int receipt_print = 5465;
  static const int ordered_amount_can_not_be_less_than_dollar0 = 5485;
  static const int order_summary = 5508;
  static const int customer_information2 = 5519;
  static const int hold2 = 5532;
  static const int expiration_date = 5537;
  static const int complete_payment = 5546;
  static const int offline_void = 5593;
  static const int terminal_number = 5597;
  static const int tip_applied = 5665;
  static const int search_by_employee = 5666;
  static const int search_with_receipt_number = 5667;
  static const int info = 5740;
  static const int order_discount = 5750;
  static const int base_amount = 5781;
  static const int store_id = 5802;
  static const int void_line = 5816;
  static const int discount_name = 5822;
  static const int customer = 5830;
  static const int input_void_quantity = 5834;
  static const int clear = 5845;
  static const int done = 5876;
  static const int processing = 5877;
  static const int total_sales = 5907;
  static const int cancel_order = 6031;
  static const int please_wait = 6064;
  static const int offline_refund = 6071;
  static const int refund_amount = 6084;
  static const int full_refund = 6125;
  static const int partial_refund = 6128;
  static const int move_to_order_screen = 6226;
  static const int xz_report = 6233;
  static const int x_report = 6234;
  static const int z_report = 6235;
  static const int approval_no = 6252;
  static const int tip_tax = 6256;
  static const int total_amt = 6272;
  static const int no_signature_required = 6388;
  static const int user_not_authorized = 6390;
  static const int pickup = 6420;
  static const int online_order = 6429;
  static const int hold_cancel = 6435;
  static const int void___refund = 6436;
  static const int qty_change = 6446;
  static const int
      discount_amount_has_exceeded_from_the_unit_price_do_you_want_to_add_other_menu_that_have_not_been_exceeded =
      6449;
  static const int
      discount_amount_has_exceeded_do_you_want_to_remove_the_discount = 6450;
  static const int cannot_cancel_an_order_if_discount_is_applied = 6451;
  static const int value_cant_be_changed_with_a_cancelled_item = 6452;
  static const int seat_number = 6454;
  static const int all_type = 6455;
  static const int no_tip_applied = 6456;
  static const int item_split = 6457;
  static const int void_all = 6459;
  static const int line_discount = 6461;
  static const int new_check_selection_is_required = 6462;
  static const int alert = 6463;
  static const int select_product_please = 6464;
  static const int ordered_item_cant_hold = 6465;
  static const int select_order_item_first = 6468;
  static const int link_table_is_impossible = 6472;
  static const int empty_table = 6473;
  static const int user_input = 6478;
  static const int retry = 6491;
  static const int ignore = 6492;
  static const int input_password = 6493;
  static const int input_check_no = 6497;
  static const int check_no2 = 6498;
  static const int crm = 6513;
  static const int approval_number = 6518;
  static const int coupon = 6527;
  static const int deposit_via_pos = 9071;
  static const int withdrawal_via_pos = 9072;
  static const int remote = 9075;
  static const int remote_not_installed = 9076;
  static const int select_cash_drawer = 9077;
  static const int no_cash_drawer_selected = 9078;
  static const int last_cashier = 9079;
  static const int confirm_cashier_in = 9080;
  static const int start_business = 9081;
  static const int select_account = 9082;
  static const int etc = 9086;
  static const int estimated_and_actual_different = 9088;
  static const int dutch_treat = 9089;
  static const int number_of_people = 9090;
  static const int please_input_the_number_of_people = 9091;
  static const int dutch_treat_calculator = 9092;
  static const int tip_adviser = 9093;
  static const int dutch_treat_result = 9094;
  static const int cancel_payment = 9095;
  static const int cashier_out_tab1 = 9098;
  static const int data_management = 9102;
  static const int tel_num = 9104;
  static const int provider = 9106;
  static const int server_ip = 9107;
  static const int server_port = 9108;
  static const int port_mode = 9110;
  static const int password = 9112;
  static const int model = 9114;
  static const int port = 9115;
  static const int speed = 9116;
  static const int db_backup = 9117;
  static const int db_restore = 9118;
  static const int counter_printer = 9121;
  static const int restart_app = 9122;
  static const int confirm_restart_app = 9123;
  static const int api_url = 9124;
  static const int pay_in_success = 9125;
  static const int pay_out_success = 9126;
  static const int search_by_order = 9127;
  static const int drawer_balance = 9128;
  static const int start_asp = 9129;
  static const int trade_type = 9130;
  static const int trade_time = 9131;
  static const int server_settings = 9132;
  static const int sales_history = 9133;
  static const int sales_status = 9134;
  static const int sales_summary_item_group = 9135;
  static const int sales_summary_items = 9136;
  static const int sales_statement_payment = 9137;
  static const int sales_statement_time = 9138;
  static const int discount_statement = 9139;
  static const int cash_in_out_statement = 9140;
  static const int menu_dc = 9141;
  static const int order_dc = 9142;
  static const int staff = 9143;
  static const int approval = 9144;
  static const int share = 9145;
  static const int approved = 9146;
  static const int canceled = 9147;
  static const int approved_manual = 9148;
  static const int canceled_manual = 9149;
  static const int select_item_to_void = 9150;
  static const int already_been_canceled = 9151;
  static const int already_been_refunded = 9153;
  static const int print_receipt = 9154;
  static const int no_receipt1 = 9155;
  static const int please_sign = 9156;
  static const int approval_result = 9157;
  static const int installment = 9158;
  static const int mp506_display01 = 9161;
  static const int mp506_display02 = 9162;
  static const int mp506_display03 = 9163;
  static const int processing_error = 9169;
  static const int credit_card2 = 9172;
  static const int cash_receipt = 9173;
  static const int identification_number = 9174;
  static const int personal = 9175;
  static const int not_issue = 9176;
  static const int input_number = 9177;
  static const int card_reading = 9178;
  static const int no_receipt2 = 9179;
  static const int change_amt = 9180;
  static const int business = 9181;
  static const int this_action_cannot_be_performed = 9183;
  static const int integrity_check = 9184;
  static const int time_card_table_title = 9185;
  static const int unionpay = 9186;
  static const int del = 9187;
  static const int sign_auto_sending = 9189;
  static const int signpad = 9190;
  static const int amount_too_large = 9191;
  static const int check_not_found = 9192;
  static const int integrity_validation_fail = 9193;
  static const int license_number = 9194;
  static const int shop_name = 9195;
  static const int approval_date = 9196;
  static const int transaction_result = 9198;
  static const int buyer_name = 9199;
  static const int beacon_settings = 9200;
  static const int device_key = 9201;
  static const int select_issue_type = 9202;
  static const int please_enter_identification_number = 9203;
  static const int bueiness_settings = 9204;
  static const int payment_settings = 9205;
  static const int device_settings = 9206;
  static const int printer_settings = 9207;
  static const int program_settings = 9208;
  static const int country_settings = 9209;
  static const int store_settings = 9210;
  static const int van_settings = 9212;
  static const int ic_reader = 9213;
  static const int card_receipt_to_customer = 9214;
  static const int card_receipt_to_store = 9215;
  static const int card_receipt_to_company = 9216;
  static const int bill = 9217;
  static const int check_device = 9218;
  static const int refund_repay = 9219;
  static const int check_integrity = 9220;
  static const int view_log = 9221;
  static const int rooting_check = 9222;
  static const int order_items = 9223;
  static const int refund_items = 9224;
  static const int only_canceled_check_selectable = 9225;
  static const int partial_cancel = 9226;
  static const int full_cancel = 9227;
  static const int this_file_is_corrupted = 9228;
  static const int restore_success = 9231;
  static const int restore_fail = 9232;
  static const int do_you_want_to_backup = 9233;
  static const int changes_can_be_made = 9235;
  static const int pos_settings = 9238;
  static const int unregister_app = 9239;
  static const int confirm_unregister_app = 9240;
  static const int success_unregister = 9245;
  static const int fail_unregister = 9246;
  static const int registration_no = 9247;
  static const int barcode_item_not_found = 9248;
  static const int order_screen_type = 9249;
  static const int please_enter_id = 9250;
  static const int verify_the_check = 9252;
  static const int issue_date = 9253;
  static const int check_number = 9254;
  static const int searched_result = 9255;
  static const int please_check_the_check = 9256;
  static const int check_item = 9257;
  static const int view_the_bill = 9258;
  static const int additional_dc = 9259;
  static const int can_not_calculate_by_menu = 9260;
  static const int integrity_check_error = 9261;
  static const int be_communicating = 9262;
  static const int close_cashier_bank = 9263;
  static const int calculator = 9264;
  static const int division_by_zero = 9265;
  static const int card_reader_is_not_connected = 9266;
  static const int pos_type = 9269;
  static const int item_purchase = 9272;
  static const int dashboard_payment = 9273;
  static const int confirm_clear_order = 9274;
  static const int please_check_the_amount_received = 9275;
  static const int show_amount_include_tax = 9276;
  static const int settlement2 = 9277;
  static const int credit_finance_association_id = 9278;
  static const int sign_auto_approval = 9279;
  static const int switch_on = 9280;
  static const int switch_off = 9281;
  static const int frequent_amount = 9282;
  static const int dine_in_settings = 9283;
  static const int auto_clear_table = 9284;
  static const int sync_to_server = 9285;
  static const int sync_completed = 9286;
  static const int sync_in_progress = 9287;
  static const int there_are_items_not_ordered = 9288;
  static const int back_the_previous_menu = 9289;
  static const int business_day = 9291;
  static const int confirm_download_data = 9292;
  static const int download_data = 9293;
  static const int download_success = 9294;
  static const int download_fail = 9295;
  static const int employee_password = 9296;
  static const int shiftwork = 9297;
  static const int shiftwork_report = 9298;
  static const int changing_time = 9299;
  static const int paper_size = 9300;
  static const int currency = 9301;
  static const int order_button_settings = 9302;
  static const int order_display_settings = 9303;
  static const int payment_display_settings = 9304;
  static const int cancel_business = 9305;
  static const int no_sign_under_50000 = 9306;
  static const int total_amount_is_not_valid = 9307;
  static const int cannot_add_item_because_of_partial_payment = 9308;
  static const int confirm_update_next_m_app = 9309;
  static const int smart_pay = 9310;
  static const int domain = 9311;
  static const int agent_code = 9312;
  static const int refunded = 9313;
  static const int select_menu_to_calculate = 9314;
  static const int less_than_50000 = 9315;
  static const int verifying_peripherals = 9316;
  static const int success = 9317;
  static const int ic_transaction_approval = 9319;
  static const int ic_transaction_cancel = 9320;
  static const int credit_transaction_approval = 9321;
  static const int credit_transaction_cancel = 9322;
  static const int for_store = 9323;
  static const int for_card_company = 9324;
  static const int hyphen_receipt = 9325;
  static const int pay_all = 9326;
  static const int months = 9327;
  static const int cancel_order_discount = 9328;
  static const int no_receipt_issued = 9331;
  static const int view_by_order = 9332;
  static const int view_by_payment = 9333;
  static const int approval_type = 9334;
  static const int taxation_amount = 9335;
  static const int tax_exempt_amount = 9336;
  static const int simple_receipt = 9337;
  static const int input_installment_month = 9338;
  static const int this_is_a_payment_that_can_not_be_refunded = 9339;
  static const int receipt_type = 9340;
  static const int no_bt_printer_connected = 9341;
  static const int auto_installment = 9342;
  static const int payment_option = 9343;
  static const int auto_payment = 9344;
  static const int type_of_taxation = 9345;
  static const int tax_free = 9346;
  static const int sales_summary_purchase = 9347;
  static const int cant_get_a_deduction_by_this_receipt = 9348;
  static const int issue_simple_receipt = 9349;
  static const int include_sales_result = 9350;
  static const int update_sales_report = 9352;
  static const int approval_count = 9353;
  static const int approval_amount = 9354;
  static const int cancel_count = 9355;
  static const int cancel_amount = 9356;
  static const int sum_count = 9357;
  static const int sum_amount = 9358;
  static const int voluntarily_issued = 9359;
  static const int search_by_name = 9360;
  static const int supply_amount = 9361;
  static const int amount_of_void = 9362;
  static const int please_input_the_approval_number = 9363;
  static const int please_input_the_approval_date = 9364;
  static const int update_item_info = 9365;
  static const int please_input_barcode_no = 9366;
  static const int please_input_quantity = 9367;
  static const int please_check_the_installment = 9368;
  static const int tid = 9369;
  static const int total_by_buyer = 9370;
  static const int canceling_the_current_action = 9371;
  static const int card_reader_error_canceling_the_current_action = 9372;
  static const int printer_not_connected = 9373;
  static const int no_usb_permission = 9374;
  static const int completed = 9375;
  static const int no_approved_information = 9376;
  static const int sign_pad_not_connected = 9377;
  static const int crc_error = 9378;
  static const int canceled_by = 9381;
  static const int print_changed_list = 9383;
  static const int beacon_app_install_required = 9384;
  static const int operating_state = 9385;
  static const int update_profile = 9386;
  static const int running = 9387;
  static const int profile_list = 9388;
  static const int would_you_like_to_install_the_beacon_application = 9389;
  static const int downloading = 9390;
  static const int sign_pad_ip = 9391;
  static const int communication_problems = 9392;
  static const int print_bill = 9393;
  static const int print_order_summary = 9394;
  static const int table_busy = 9395;
  static const int commodity = 9396;
  static const int reversal_of_commodities = 9397;
  static const int mark_up = 9398;
  static const int reversal_of_margins = 9399;
  static const int a_discount = 9400;
  static const int reversal_discounts = 9401;
  static const int item_type = 9402;
  static const int operation_type = 9403;
  static const int operation_buy = 9404;
  static const int operation_sell = 9405;
  static const int operation_buy_return = 9406;
  static const int operation_sell_return = 9407;
  static const int dss_offline = 9408;
  static const int dss_online = 9409;
  static const int server_info = 9410;
  static const int cash_register_machine = 9411;
  static const int tax_type = 9412;
  static const int taxation_type = 9413;
  static const int tax_percent = 9414;
  static const int domain_type = 9415;
  static const int payment_type2 = 9416;
  static const int operator_code = 9417;
  static const int token = 9418;
  static const int credit_payment = 9419;
  static const int payment_packaging = 9420;
  static const int bank_card = 9421;
  static const int order_option = 9422;
  static const int order_discount_option = 9423;
  static const int accept = 9424;
  static const int ready = 9425;
  static const int reject = 9426;
  static const int order_memo = 9427;
  static const int online_service = 9428;
  static const int common_settings = 9429;
  static const int play_ringtone_on_new_order = 9430;
  static const int took_service = 9431;
  static const int takeout_price = 9432;
  static const int serving = 9433;
  static const int auto_business_open_close = 9434;
  static const int open_days = 9435;
  static const int open_close_time = 9436;
  static const int business_open_close = 9437;
  static const int took_open = 9438;
  static const int took_close = 9439;
  static const int department = 9440;
  static const int employee_number = 9441;
  static const int position = 9442;
  static const int my_d = 9443;
  static const int took_login_failed = 9444;
  static const int update_failed = 9445;
  static const int coaster_pager = 9446;
  static const int pager_ranger = 9447;
  static const int start_range = 9448;
  static const int end_range = 9449;
  static const int pager_number = 9450;
  static const int new_online_order = 9451;
  static const int touch_employee_card = 9452;
  static const int save_online_service_settings = 9453;
  static const int open_store = 9454;
  static const int close_store = 9455;
  static const int connect_bt_printer = 9456;
  static const int paired_devices = 9457;
  static const int new_devices = 9458;
  static const int connect = 9459;
  static const int undo_the_last_transaction = 9460;
  static const int p_packaging = 9461;
  static const int sir = 9462;
  static const int abc_analysis = 9463;
  static const int ratio = 9464;
  static const int cumulative_ratio = 9465;
  static const int sales_category = 9466;
  static const int not_sold_item = 9467;
  static const int select_device_to_connect = 9468;
  static const int kiwipg = 9469;
  static const int switch_to_offline_mode = 9470;
  static const int switch_to_online_mode = 9471;
  static const int moreand = 9472;
  static const int confirm_owner = 9473;
  static const int packing = 9474;
  static const int recommended_item = 9475;
  static const int online_sale = 9476;
  static const int purchase_approval = 9477;
  static const int sales_approval = 9478;
  static const int cancel_purchase = 9479;
  static const int cancel_sales = 9480;
  static const int tender_sell = 9481;
  static const int tender_buy = 9482;
  static const int order_printing_point = 9483;
  static const int before_payment = 9484;
  static const int after_payment = 9485;
  static const int receipt_output_message = 9486;
  static const int receipt_top_message = 9487;
  static const int receipt_lower_message = 9488;
  static const int bill_top_message = 9489;
  static const int bill_lower_message = 9490;
  static const int select_db_file = 9491;
  static const int select_xml_file = 9492;
  static const int do_you_want_to_restore_the_settings = 9493;
  static const int time_of_sale = 9494;
  static const int need_to_set_the_terminal_number = 9495;
  static const int sales_summary_menu_group = 9496;
  static const int sales_summary_set_items = 9497;
  static const int monthly_sales_report = 9498;
  static const int shift_number = 9499;
  static const int weekly_sales_report = 9500;
  static const int sales_summary_product_time = 9501;
  static const int sales_summary_table = 9502;
  static const int not_in_sales = 9503;
  static const int toggle_in_sales = 9504;
  static const int manual_payment = 9505;
  static const int include_sales = 9506;
  static const int exclude_sales = 9507;
  static const int overall_discount = 9508;
  static const int sales_summary_day = 9509;
  static const int sales_summary_month = 9510;
  static const int sales_summary_week = 9511;
  static const int sales_summary_payment = 9512;
  static const int sales_summary_pg_company = 9513;
  static const int sales_summary_card_company = 9514;
  static const int selling_summary_abc = 9515;
  static const int selling_summary_time = 9516;
  static const int selling_summary_product_time = 9517;
  static const int selling_summary_menu = 9518;
  static const int selling_summary_item_group = 9519;
  static const int selling_summary_items = 9520;
  static const int selling_summary_set_items = 9521;
  static const int selling_summary_table = 9522;
  static const int selling_summary_not_sold_item = 9523;
  static const int payment_summary = 9524;
  static const int selling_history_days = 9525;
  static const int selling_history_1day = 9526;
  static const int discount_history = 9527;
  static const int petty_cash_history = 9528;
  static const int coupon_giftcard = 9529;
  static const int start_menu_category = 9530;
  static const int keep = 9531;
  static const int sign_wait_time = 9532;
  static const int custom_memo = 9533;
  static const int delete_memo = 9534;
  static const int please_input_memo = 9535;
  static const int myd_reader_is_not_connected = 9536;
  static const int execution_date = 9537;
  static const int bundle_product_name = 9538;
  static const int export_to_excel = 9539;
  static const int init_token = 9540;
  static const int receipt_print_not_connected = 9541;
  static const int kitchen_print_not_connected = 9542;
  static const int payment_count = 9543;
  static const int basic_use_of_simple_receipt = 9544;
  static const int shutdown = 9545;
  static const int power_off_cradle = 9546;
  static const int battery_low = 9547;
  static const int pos_will_be_off = 9548;
  static const int integrity_fail_check_again = 9549;
  static const int device_registration_confirmation_is_required = 9550;
  static const int whether_tax_is_laid_in_the_amount_of_total = 9551;
  static const int operator_name = 9552;
  static const int the_cash_register_is_operable = 9553;
  static const int
      the_cash_register_is_disabled_because_of_the_device_test_failure = 9554;
  static const int
      the_cash_register_is_disabled_because_the_close_shift_has_exceeded_24_hours =
      9555;
  static const int
      the_cash_register_is_disabled_because_it_is_offline_for_over_72_hours_It_will_be_operable_when_online =
      9556;
  static const int the_cash_register_is_disabled = 9557;
  static const int
      the_cash_register_is_disabled_because_the_receipt_issue_was_occurred =
      9558;
  static const int the_cash_register_is_disabled_by_the_tax_authorities = 9559;
  static const int please_check_the_system_setting_time = 9560;
  static const int need_to_set_the_token = 9561;
  static const int unit_test = 9562;
  static const int authorization = 9563;
  static const int closing_the_shift = 9564;
  static const int cancel_check = 9565;
  static const int initialization = 9566;
  static const int deposit_withdraw_money = 9567;
  static const int request_nomenclature = 9568;
  static const int sales_purchase_test = 9569;
  static const int system_exchange = 9570;
  static const int this_card_is_not_available = 9571;
  static const int it_is_possible_to_set_after_close_shift = 9572;
  static const int section = 9573;
  static const int sell_item = 9574;
  static const int purchase_item = 9575;
  static const int enter_new_section = 9576;
  static const int edit_section = 9577;
  static const int enter_new_product = 9578;
  static const int edit_product = 9579;
  static const int select_section = 9580;
  static const int select_item = 9581;
  static const int ccm_report = 9582;
  static const int open_shift = 9583;
  static const int close_shift = 9584;
  static const int view_report = 9585;
  static const int cashier_report = 9586;
  static const int section_report = 9587;
  static const int bin_inn = 9588;
  static const int id_number_of_crm = 9589;
  static const int crm_number = 9590;
  static const int date_of_z_report = 9591;
  static const int date_of_start_shift = 9592;
  static const int date_of_close_shift = 9593;
  static const int operator = 9594;
  static const int shift = 9595;
  static const int tiwp = 9596;
  static const int count_of_shifts = 9597;
  static const int summary_for_the_period = 9598;
  static const int shift_list = 9599;
  static const int vat = 9600;
  static const int sum = 9601;
  static const int transaction_timeout = 9602;
  static const int connection_reestablish_cycle = 9603;
  static const int operator_is_different = 9604;
  static const int rom_file_is_not_initialized_normally = 9605;
  static const int invalid_financial_server_address = 9606;
  static const int invalid_financial_server_port = 9607;
  static const int offline = 9608;
  static const int crm_sno = 9609;
  static const int crm_no = 9610;
  static const int cash_drawer_balance = 9611;
  static const int withdrawable_cash = 9612;
  static const int auto_import = 9613;
  static const int estimated = 9614;
  static const int please_select_the_item = 9615;
  static const int purchase = 9616;
  static const int withdrawal = 9617;
  static const int deposit = 9618;
  static const int sales_summary = 9619;
  static const int online = 9620;
  static const int section_code = 9621;
  static const int operations2 = 9622;
  static const int discounts = 9623;
  static const int markups = 9624;
  static const int total_result = 9625;
  static const int taxes = 9626;
  static const int percent2 = 9627;
  static const int turnover = 9628;
  static const int ticket_operations = 9629;
  static const int tickets_total_count = 9630;
  static const int tickets_count = 9631;
  static const int money_placements = 9632;
  static const int operations_total_count = 9633;
  static const int operations_count = 9634;
  static const int operations_sum = 9635;
  static const int cash_sum = 9636;
  static const int revenue = 9637;
  static const int non_nullable_sums = 9638;
  static const int start_shift_non_nullable_sums = 9639;
  static const int sections = 9640;
  static const int synchronization_is_not_possible_in_shift_close_state = 9641;
  static const int the_registration_of_the_device_has_been_confirmed = 9642;
  static const int call_customer_service_to_verify = 9643;
  static const int unblock = 9644;
  static const int sync_failed = 9645;
  static const int processing_offline_approval_history = 9646;
  static const int resolve_order_conflict = 9646; // todo: 중복
  static const int order_conflict = 9647;
  static const int server_order = 9648;
  static const int device_order = 9649;
  static const int download = 9650;
  static const int upload = 9651;
  static const int change_to_server_order = 9652;
  static const int change_to_device_order = 9653;
  static const int show_code = 9654;
  static const int self_order = 9657;
  static const int touch_item_change_qty = 9658;
  static const int bright = 9659;
  static const int order_sync = 9660;
  static const int copy = 9703;
  static const int reconciliation_success = 9813;
  static const int company = 9815;
  static const int bank = 9816;
  static const int check_order_number = 9872;
  static const int include_vat = 9873;
  static const int fiscal_sign = 9874;
  static const int fiscal_data_operator = 9875;
  static const int check_receipt_go_website = 9876;
  static const int fiscal_check_fp = 9877;
  static const int ink_ofd = 9878;
  static const int kkm_code_kgd = 9879;
  static const int znm = 9880;
  static const int receipt_printed_offline = 9881;
}
