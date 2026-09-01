.class public interface abstract Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
.super Ljava/lang/Object;
.source "IWorldPhone.java"


# static fields
.field public static final blacklist ACTION_ADB_SWITCH_MODEM:Ljava/lang/String; = "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

.field public static final blacklist ACTION_SAP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final blacklist ACTION_TEST_WORLDPHONE:Ljava/lang/String; = "mediatek.intent.action.ACTION_TEST_WORLDPHOE"

.field public static final blacklist AUTO_SWITCH_OFF:I = -0x62

.field public static final blacklist CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD:I = 0x4

.field public static final blacklist CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD:I = 0x2

.field public static final blacklist CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD:I = 0x3

.field public static final blacklist CAMP_ON_DENY_REASON_UNKNOWN:I = 0x1

.field public static final blacklist CAMP_ON_NOT_DENIED:I = 0x0

.field public static final blacklist CAUSE_TYPE_OOS:I = 0x1

.field public static final blacklist CAUSE_TYPE_OTHERS:I = 0xff

.field public static final blacklist CAUSE_TYPE_PLMN_CHANGE:I = 0x0

.field public static final blacklist DEFAULT_MAJOR_SIM:I = 0x0

.field public static final blacklist EVENT_INVALID_SIM_NOTIFY_1:I = 0x3c

.field public static final blacklist EVENT_INVALID_SIM_NOTIFY_2:I = 0x3d

.field public static final blacklist EVENT_INVALID_SIM_NOTIFY_3:I = 0x3e

.field public static final blacklist EVENT_INVALID_SIM_NOTIFY_4:I = 0x3f

.field public static final blacklist EVENT_QUERY_MODEM_TYPE:I = 0x32

.field public static final blacklist EVENT_RADIO_ON_1:I = 0x0

.field public static final blacklist EVENT_RADIO_ON_2:I = 0x1

.field public static final blacklist EVENT_RADIO_ON_3:I = 0x2

.field public static final blacklist EVENT_RADIO_ON_4:I = 0x3

.field public static final blacklist EVENT_REG_PLMN_CHANGED_1:I = 0xa

.field public static final blacklist EVENT_REG_PLMN_CHANGED_2:I = 0xb

.field public static final blacklist EVENT_REG_PLMN_CHANGED_3:I = 0xc

.field public static final blacklist EVENT_REG_PLMN_CHANGED_4:I = 0xd

.field public static final blacklist EVENT_REG_SUSPENDED_1:I = 0x1e

.field public static final blacklist EVENT_REG_SUSPENDED_2:I = 0x1f

.field public static final blacklist EVENT_REG_SUSPENDED_3:I = 0x20

.field public static final blacklist EVENT_REG_SUSPENDED_4:I = 0x21

.field public static final blacklist EVENT_RESUME_CAMPING_1:I = 0x46

.field public static final blacklist EVENT_RESUME_CAMPING_2:I = 0x47

.field public static final blacklist EVENT_RESUME_CAMPING_3:I = 0x48

.field public static final blacklist EVENT_RESUME_CAMPING_4:I = 0x49

.field public static final blacklist EVENT_SERVICE_STATE_CHANGED_1:I = 0x50

.field public static final blacklist EVENT_SERVICE_STATE_CHANGED_2:I = 0x51

.field public static final blacklist EVENT_SERVICE_STATE_CHANGED_3:I = 0x52

.field public static final blacklist EVENT_SERVICE_STATE_CHANGED_4:I = 0x53

.field public static final blacklist EVENT_STORE_MODEM_TYPE:I = 0x28

.field public static final blacklist EVENT_WP_GMSS_RAT_CHANGED_1:I = 0x424

.field public static final blacklist EVENT_WP_GMSS_RAT_CHANGED_2:I = 0x425

.field public static final blacklist EVENT_WP_GMSS_RAT_CHANGED_3:I = 0x426

.field public static final blacklist EVENT_WP_GMSS_RAT_CHANGED_4:I = 0x427

.field public static final blacklist EXTRA_FAKE_REGION:Ljava/lang/String; = "EXTRA_FAKE_REGION"

.field public static final blacklist EXTRA_FAKE_USER_TYPE:Ljava/lang/String; = "FAKE_USER_TYPE"

.field public static final blacklist ICC_CARD_TYPE_SIM:I = 0x1

.field public static final blacklist ICC_CARD_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist ICC_CARD_TYPE_USIM:I = 0x2

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "WORLDMODE"

.field public static final blacklist MAJOR_CAPABILITY_OFF:I = -0x1

.field public static final blacklist MAJOR_SIM_UNKNOWN:I = -0x63

.field public static final blacklist NO_OP:Ljava/lang/String; = "OM"

.field public static final blacklist POLICY_OM:I = 0x0

.field public static final blacklist POLICY_OP01:I = 0x1

.field public static final blacklist PROPERTY_MAJOR_SIM:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field public static final blacklist PROPERTY_SWITCH_MODEM_CAUSE_TYPE:Ljava/lang/String; = "vendor.ril.switch.modem.cause.type"

.field public static final blacklist REGION_DOMESTIC:I = 0x1

.field public static final blacklist REGION_FOREIGN:I = 0x2

.field public static final blacklist REGION_UNKNOWN:I = 0x0

.field public static final blacklist SELECTION_MODE_AUTO:I = 0x1

.field public static final blacklist SELECTION_MODE_MANUAL:I = 0x0

.field public static final blacklist TYPE1_USER:I = 0x1

.field public static final blacklist TYPE2_USER:I = 0x2

.field public static final blacklist TYPE3_USER:I = 0x3

.field public static final blacklist UNKNOWN_USER:I = 0x0

.field public static final blacklist WORLD_PHONE_AUTO_SELECT_MODE:Ljava/lang/String; = "persist.vendor.radio.wm_selectmode"

.field public static final blacklist WORLD_PHONE_FDD_MODEM_TIMER:Ljava/lang/String; = "persist.vendor.radio.wm_fddtimer"


# virtual methods
.method public abstract blacklist notifyRadioCapabilityChange(I)V
.end method

.method public abstract blacklist setModemSelectionMode(II)V
.end method
