.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_DATA_MASK:I = 0xf0

.field static final CFF_DATA_RESET:I = 0xf

.field static final CFF_DATA_SHIFT:I = 0x4

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_CSP_ENABLED:I = 0x3

.field private static final CPHS_SST_CSP_MASK:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x23

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x2a

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPL_DONE:I = 0x24

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMSC_DONE:I = 0x28

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CSP_DONE:I = 0x25

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_LOCKED_OR_ABSENT:I = 0x29

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_DEVICE_READY:I = 0x27

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final KEY_ICCID:Ljava/lang/String; = "key_iccid"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field private static final SST_CHV1_BIT:I = 0x0

.field private static final SST_CHV1_BYTE:I = 0x0

.field private static final SST_EONS_BYTE:I = 0xc

.field private static final SST_FDN_BIT:I = 0x4

.field private static final SST_FDN_BYTE:I = 0x0

.field private static final SST_MSISDN_BIT:I = 0x0

.field private static final SST_MSISDN_BYTE:I = 0x2

.field private static final SST_OPL_BIT:I = 0x6

.field private static final SST_PNN_BIT:I = 0x4

.field private static final SST_SMSP_BIT:I = 0x6

.field private static final SST_SMSP_BYTE:I = 0x2

.field private static final SST_SMS_BIT:I = 0x6

.field private static final SST_SMS_BYTE:I = 0x0

.field private static final SST_SPN_BIT:I = 0x0

.field private static final SST_SPN_BYTE:I = 0x4

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final UST_EONS_BYTE:I = 0x5

.field private static final UST_FDN_BIT:I = 0x1

.field private static final UST_FDN_BYTE:I = 0x0

.field private static final UST_MBDN_BIT:I = 0x6

.field private static final UST_MBDN_BYTE:I = 0x5

.field private static final UST_MSISDN_BIT:I = 0x4

.field private static final UST_MSISDN_BYTE:I = 0x2

.field private static final UST_OPL_BIT:I = 0x5

.field private static final UST_PNN_BIT:I = 0x4

.field private static final UST_SMSP_BIT:I = 0x3

.field private static final UST_SMSP_BYTE:I = 0x1

.field private static final UST_SMS_BIT:I = 0x1

.field private static final UST_SMS_BYTE:I = 0x1

.field private static final UST_SPN_BIT:I = 0x2

.field private static final UST_SPN_BYTE:I = 0x2

.field static final propNameChangedICC:Ljava/lang/String; = "ril.isIccChanged"


# instance fields
.field CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

.field IsOPLExist:Z

.field IsOnsExist:Z

.field IsPNNExist:Z

.field NV_cfflag_video:Z

.field NV_cfflag_voice:Z

.field OPL_INDEX:[I

.field OPL_LAC1:[I

.field OPL_LAC2:[I

.field OPL_MCCMNC:[Ljava/lang/String;

.field OPL_count:I

.field PNN_Value:[Ljava/lang/String;

.field delayReadIMSI:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field iccType:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field isAvailableCHV1:Z

.field isAvailableFDN:Z

.field isAvailableMBDN:Z

.field isAvailableMSISDN:Z

.field isAvailableSMS:Z

.field isAvailableSMSP:Z

.field isAvailableSPN:Z

.field isEnabledCSP:Z

.field isEnabledOPL:Z

.field isEnabledPNN:Z

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mOldICCID:Ljava/lang/String;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field spnDisplayRuleOverride:I

.field spnOverride:Ljava/lang/String;

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field spn_cphs:Ljava/lang/String;

.field videocallForwardingEnabled:Z

.field voicecallForwardingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "405025"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->delayReadIMSI:Z

    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x27

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    return-void
.end method

.method private checkCHV1available([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkCHV1available"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_CHV1_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    const-string v2, "3G - CHV1 available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkEONSavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter checkEONS"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_EONS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledPNN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledOPL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_EONS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkFDNavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkFDNavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_FDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_FDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkMBDNavailable([B)V
    .locals 10
    .parameter "table"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "GSM"

    const-string v3, "GSM"

    const-string v3, "Enter  checkMBDNavailable"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ril.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableMBDN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v3, "XFA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v3, "XFM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v3, "XFC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v3, "XFE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v3, "XFV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_3

    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    const-string v3, "GSM"

    const-string v3, "[MTN SIM] isAvailableMBDN is false"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table[UST_MBDN_BYTE]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "GSM"

    const-string v3, "Exception"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v3, "GSM"

    const-string v4, "ICCType is Unknown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-ne v3, v7, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    .local v2, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x6fc9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_1

    .end local v2           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_1
.end method

.method private checkMSISDNavailable([B)V
    .locals 9
    .parameter "table"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v8, "1"

    const-string v6, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkMSISDNavailable"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_MSISDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v7, :cond_0

    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v7

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/16 v3, 0x6f4a

    :goto_2
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    :cond_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMSISDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_3

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    move v3, v4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x6f4e

    goto :goto_2
.end method

.method private checkSMSPavailable([B)V
    .locals 5
    .parameter "table"

    .prologue
    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkSMSPavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_SMSP_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMSP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_SMSP_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMSP:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSMSavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkSMSavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_SMS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_SMS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSPNavailable([B)V
    .locals 6
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    const-string v1, "GSM"

    const-string v1, "Enter  checkSPNavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[SST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSPN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table[UST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "Exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private checkSimChanged()V
    .locals 10

    .prologue
    const-string v9, "GSM"

    const-string v8, "1"

    const-string v7, "ril.isIccChanged"

    const-string v6, "key_iccid"

    const-string v4, "GSM"

    const-string v4, "checkSimChanged enter"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "key_iccid"

    const-string v4, ""

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    .local v2, old:Ljava/lang/String;
    if-nez v2, :cond_1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "ril.isIccChanged"

    const-string v4, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    :cond_1
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old iccid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  current is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .local v1, isSimChanged:Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "ril.isIccChanged"

    const-string v4, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isSimChanged:Z
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    .restart local v1       #isSimChanged:Z
    :cond_3
    const-string v4, "ril.isIccChanged"

    const-string v4, "0"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6fc6

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    return-void
.end method

.method private findTheEnabledServiceInSST(BI)Z
    .locals 3
    .parameter "b"
    .parameter "position"

    .prologue
    const-string v2, "GSM"

    const-string v0, "GSM"

    const-string v0, "findTheEnabledServiceInSST"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    shr-int v0, p1, p2

    int-to-byte p1, v0

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTheEnabledServiceInUST(BI)Z
    .locals 4
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const-string v2, "GSM"

    const-string v0, "GSM"

    const-string v0, "findTheEnabledServiceInUST"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    shr-int v0, p1, p2

    int-to-byte p1, v0

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "spnOverrideString"

    .prologue
    if-nez p1, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .local v2, curLoc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .local v5, l:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .local v1, c:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, spnOverrides:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v8, v0, v4

    .local v8, so:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, s:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, entryLoc:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #entryLoc:[Ljava/lang/String;
    .end local v7           #s:[Ljava/lang/String;
    .end local v8           #so:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 8
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "gsm.sim.operator.alpha"

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f46

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .local v1, data:[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .end local v1           #data:[B
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f14

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .end local v1           #data:[B
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f18

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #data:[B
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    :cond_3
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6f17 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleOPL(Ljava/util/ArrayList;)V
    .locals 14
    .parameter "messages"

    .prologue
    const/4 v13, 0x6

    const/16 v11, 0x10

    const/4 v9, 0x0

    const-string v12, "]="

    const-string v10, "GSM"

    const-string v3, "ffffffffffffffff"

    .local v3, fdata:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    new-array v6, v1, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .local v2, data:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .local v5, sdata:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Null"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v9, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v9, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v9, v6, v4

    :goto_1
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_MCCMNC["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_LAC1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_LAC2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleOPL]Load OPL_INDEX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    const-string v6, "GSM"

    const-string v6, "[handleOPL] EF_OPL contains Data(Not Null)"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v5, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    const/16 v7, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    const/16 v7, 0xe

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    goto/16 :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v9, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v9, v6, v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v9, v6, v4

    goto/16 :goto_1

    .end local v2           #data:[B
    .end local v5           #sdata:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePNN(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "messages"

    .prologue
    const/4 v10, 0x0

    const-string v11, "GSM"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const-string v3, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .local v3, fdata:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .local v2, data:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .local v5, sdata:Ljava/lang/String;
    if-eqz v2, :cond_2

    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v7, v2

    invoke-direct {v6, v2, v10, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v6, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v7, v4

    :cond_0
    :goto_1
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handlePnns]Load PNN Value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .end local v6           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v6       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v8, v10, v9}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    .end local v6           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    const-string v7, "GSM"

    const-string v7, "[handlePNNs] data is  Null!!!"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #data:[B
    .end local v5           #sdata:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleSimRefresh([I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    aget v1, p1, v3

    packed-switch v1, :pswitch_data_0

    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget v0, p1, v1

    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .end local v0           #efid:I
    :pswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    :pswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET_FOR_SAP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 8
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    array-length v1, p1

    .local v1, n:I
    sub-int v3, v1, v7

    new-array v2, v3, [B

    .local v2, pdu:[B
    sub-int v3, v1, v7

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmsServiceCenter(Ljava/lang/String;)V
    .locals 1
    .parameter "smsc"

    .prologue
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .local v1, ba:[B
    aget-byte v7, v1, v10

    if-eqz v7, :cond_0

    const-string v7, "ENF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-byte v7, v1, v10

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    array-length v5, v1

    .local v5, n:I
    sub-int v7, v5, v11

    new-array v6, v7, [B

    .local v6, pdu:[B
    sub-int v7, v5, v11

    invoke-static {v1, v11, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v4

    .local v4, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v7, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    aput-byte v11, v1, v10

    .end local v4           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #n:I
    .end local v6           #pdu:[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsCSPEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private makeCSPtable([B)V
    .locals 2
    .parameter "table"

    .prologue
    const-string v0, "GSM"

    const-string v1, "Enter  makeCSPtable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/gsm/simCSPtable;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    return-void
.end method

.method private onSimReady()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 2
    .parameter "carrier"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public SetPLMNmodeInCspTable(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/16 v7, 0x6f15

    const-string v6, "GSM"

    const-string v3, "GSM"

    const-string v3, "SetCspTable"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    array-length v2, v3

    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    aget-byte v0, v3, v1

    .local v0, Abyte:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abyte is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_0
    const-string v3, "GSM"

    const-string v3, "C0 : ValueAdded Services"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-boolean v3, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-boolean v3, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    if-nez v3, :cond_3

    :cond_1
    const-string v3, "GSM"

    const-string v3, "mPLMN was aleady setted "

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #Abyte:I
    :cond_2
    :goto_1
    return-void

    .restart local v0       #Abyte:I
    :cond_3
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before values is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, v3, v4

    xor-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After values is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    const/16 v5, 0x25

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->CSPtable:Lcom/android/internal/telephony/gsm/simCSPtable;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "MCCMNC"
    .parameter "LAC"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, EonsName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v4, v9

    .local v4, isVPLMN:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-nez v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    const/4 v0, 0x0

    .end local v4           #isVPLMN:Z
    :cond_3
    :goto_3
    return-object v0

    :cond_4
    move v4, v6

    goto :goto_0

    .restart local v4       #isVPLMN:Z
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/16 v7, 0x64

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, expr:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v5, v5, v3

    if-lt p2, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v5, v5, v3

    if-gt p2, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v5, v5, v3

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    sub-int/2addr v6, v9

    aget-object v0, v5, v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2           #expr:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3           #i:I
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .end local v4           #isVPLMN:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "Got exception while searching for EONS name, falling back to null"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .locals 7
    .parameter "plmn"

    .prologue
    const-string v6, "GSM"

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getDisplayRule] spnDisplayCondition=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] binary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getDisplayRule] spn=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], plmn=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, rule:I
    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v4, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .local v3, ss:Landroid/telephony/ServiceState;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .local v0, plmnName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .local v2, spnName:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] spn string == plmn string, showing only plmn-pnn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .end local v0           #plmnName:Ljava/lang/String;
    .end local v2           #spnName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    :cond_2
    return v1

    .end local v3           #ss:Landroid/telephony/ServiceState;
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    if-nez v4, :cond_4

    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] SPN disabled"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_5
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] showing plmn only"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] plmn==spn or plmn in spdiNetworks; showing spn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    :cond_7
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing plmn (plmn bit = 1)"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_8
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing plmn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing spn (spn bit == 0)"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method getFakeHomeOn()[Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, simOper:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getFakeRoamingOn()[Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, simOper:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_4

    const/16 v3, 0x6b

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "405805"

    aput-object v3, v0, v5

    const-string v3, "405799"

    aput-object v3, v0, v7

    const/4 v3, 0x2

    const-string v4, "405025"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "405026"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "405027"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "405028"

    aput-object v4, v0, v3

    const-string v3, "405029"

    aput-object v3, v0, v6

    const/4 v3, 0x7

    const-string v4, "405030"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "405031"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "405032"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "405033"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "405034"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "405035"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "405036"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "405037"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "405038"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "405039"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "405040"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "405041"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "405042"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "405043"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "405044"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "405045"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "405046"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "405047"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "405800"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "405802"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "405803"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "405807"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "405804"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "405809"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "405852"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "405853"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "405846"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "405848"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "405849"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "405812"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "405806"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "405750"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "405751"

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-string v4, "405752"

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-string v4, "405753"

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-string v4, "405754"

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-string v4, "405755"

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    const-string v4, "405756"

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    const-string v4, "405808"

    aput-object v4, v0, v3

    const/16 v3, 0x2e

    const-string v4, "405810"

    aput-object v4, v0, v3

    const/16 v3, 0x2f

    const-string v4, "405811"

    aput-object v4, v0, v3

    const/16 v3, 0x30

    const-string v4, "405813"

    aput-object v4, v0, v3

    const/16 v3, 0x31

    const-string v4, "405814"

    aput-object v4, v0, v3

    const/16 v3, 0x32

    const-string v4, "405815"

    aput-object v4, v0, v3

    const/16 v3, 0x33

    const-string v4, "405816"

    aput-object v4, v0, v3

    const/16 v3, 0x34

    const-string v4, "405817"

    aput-object v4, v0, v3

    const/16 v3, 0x35

    const-string v4, "405801"

    aput-object v4, v0, v3

    const/16 v3, 0x36

    const-string v4, "405820"

    aput-object v4, v0, v3

    const/16 v3, 0x37

    const-string v4, "405819"

    aput-object v4, v0, v3

    const/16 v3, 0x38

    const-string v4, "405821"

    aput-object v4, v0, v3

    const/16 v3, 0x39

    const-string v4, "405925"

    aput-object v4, v0, v3

    const/16 v3, 0x3a

    const-string v4, "405875"

    aput-object v4, v0, v3

    const/16 v3, 0x3b

    const-string v4, "405876"

    aput-object v4, v0, v3

    const/16 v3, 0x3c

    const-string v4, "405877"

    aput-object v4, v0, v3

    const/16 v3, 0x3d

    const-string v4, "405879"

    aput-object v4, v0, v3

    const/16 v3, 0x3e

    const-string v4, "405818"

    aput-object v4, v0, v3

    const/16 v3, 0x3f

    const-string v4, "405878"

    aput-object v4, v0, v3

    const/16 v3, 0x40

    const-string v4, "405927"

    aput-object v4, v0, v3

    const/16 v3, 0x41

    const-string v4, "405928"

    aput-object v4, v0, v3

    const/16 v3, 0x42

    const-string v4, "405929"

    aput-object v4, v0, v3

    const/16 v3, 0x43

    const-string v4, "405926"

    aput-object v4, v0, v3

    const/16 v3, 0x44

    const-string v4, "405932"

    aput-object v4, v0, v3

    const/16 v3, 0x45

    const-string v4, "405850"

    aput-object v4, v0, v3

    const/16 v3, 0x46

    const-string v4, "405823"

    aput-object v4, v0, v3

    const/16 v3, 0x47

    const-string v4, "405824"

    aput-object v4, v0, v3

    const/16 v3, 0x48

    const-string v4, "405825"

    aput-object v4, v0, v3

    const/16 v3, 0x49

    const-string v4, "405826"

    aput-object v4, v0, v3

    const/16 v3, 0x4a

    const-string v4, "405827"

    aput-object v4, v0, v3

    const/16 v3, 0x4b

    const-string v4, "405828"

    aput-object v4, v0, v3

    const/16 v3, 0x4c

    const-string v4, "405829"

    aput-object v4, v0, v3

    const/16 v3, 0x4d

    const-string v4, "405830"

    aput-object v4, v0, v3

    const/16 v3, 0x4e

    const-string v4, "405831"

    aput-object v4, v0, v3

    const/16 v3, 0x4f

    const-string v4, "405832"

    aput-object v4, v0, v3

    const/16 v3, 0x50

    const-string v4, "405833"

    aput-object v4, v0, v3

    const/16 v3, 0x51

    const-string v4, "405834"

    aput-object v4, v0, v3

    const/16 v3, 0x52

    const-string v4, "405835"

    aput-object v4, v0, v3

    const/16 v3, 0x53

    const-string v4, "405836"

    aput-object v4, v0, v3

    const/16 v3, 0x54

    const-string v4, "405837"

    aput-object v4, v0, v3

    const/16 v3, 0x55

    const-string v4, "405838"

    aput-object v4, v0, v3

    const/16 v3, 0x56

    const-string v4, "405839"

    aput-object v4, v0, v3

    const/16 v3, 0x57

    const-string v4, "405840"

    aput-object v4, v0, v3

    const/16 v3, 0x58

    const-string v4, "405841"

    aput-object v4, v0, v3

    const/16 v3, 0x59

    const-string v4, "405842"

    aput-object v4, v0, v3

    const/16 v3, 0x5a

    const-string v4, "405843"

    aput-object v4, v0, v3

    const/16 v3, 0x5b

    const-string v4, "405844"

    aput-object v4, v0, v3

    const/16 v3, 0x5c

    const-string v4, "405845"

    aput-object v4, v0, v3

    const/16 v3, 0x5d

    const-string v4, "405847"

    aput-object v4, v0, v3

    const/16 v3, 0x5e

    const-string v4, "405851"

    aput-object v4, v0, v3

    const/16 v3, 0x5f

    const-string v4, "405822"

    aput-object v4, v0, v3

    const/16 v3, 0x60

    const-string v4, "405880"

    aput-object v4, v0, v3

    const/16 v3, 0x61

    const-string v4, "405881"

    aput-object v4, v0, v3

    const/16 v3, 0x62

    const-string v4, "405882"

    aput-object v4, v0, v3

    const/16 v3, 0x63

    const-string v4, "405883"

    aput-object v4, v0, v3

    const/16 v3, 0x64

    const-string v4, "405884"

    aput-object v4, v0, v3

    const/16 v3, 0x65

    const-string v4, "405885"

    aput-object v4, v0, v3

    const/16 v3, 0x66

    const-string v4, "405886"

    aput-object v4, v0, v3

    const/16 v3, 0x67

    const-string v4, "405908"

    aput-object v4, v0, v3

    const/16 v3, 0x68

    const-string v4, "405909"

    aput-object v4, v0, v3

    const/16 v3, 0x69

    const-string v4, "405910"

    aput-object v4, v0, v3

    const/16 v3, 0x6a

    const-string v4, "405911"

    aput-object v4, v0, v3

    .local v0, IndExceptMccMnc:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "ril.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, code:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v3, "OPS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_4

    const-string v3, "505029"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .end local v0           #IndExceptMccMnc:[Ljava/lang/String;
    .end local v1           #code:Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoCallForwardingFlag()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getisVoiceMailFixed()Z
    .locals 3

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceMailFixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .parameter "msg"

    .prologue
    const/16 v22, 0x0

    .local v22, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v22, :cond_1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    :cond_1
    return-void

    .restart local p1
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v11

    .local v11, Fh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x2fe2

    const/16 v4, 0x2a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v11           #Fh:Lcom/android/internal/telephony/IccFileHandler;
    .end local p1
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "GSM"

    const-string v4, "Exception parsing SIM record"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v22, :cond_1

    goto :goto_1

    .end local v18           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :pswitch_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .end local p1
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    :cond_2
    throw v3

    .restart local p1
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/16 v4, 0x28

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0

    :pswitch_6
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_5

    :cond_4
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :try_start_5
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .local v26, mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v25, v13, v19

    .local v25, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v3, :cond_8

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .local v24, mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .end local v24           #mcc:I
    :cond_8
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v3, v0

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    .local v28, sp:Landroid/content/SharedPreferences;
    const-string v3, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, CF_Imsi:Ljava/lang/String;
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .local v16, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cf_imsikey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "cf_iconkey_voice"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    const-string v3, "cf_iconkey_video"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    goto/16 :goto_0

    .end local v10           #CF_Imsi:Ljava/lang/String;
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v28           #sp:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v3

    move-object v15, v3

    .local v15, e:Ljava/lang/NullPointerException;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v15           #e:Ljava/lang/NullPointerException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v15, v3

    .restart local v15       #e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v15           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    move-object v15, v3

    .local v15, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #CF_Imsi:Ljava/lang/String;
    .restart local v16       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v28       #sp:Landroid/content/SharedPreferences;
    :cond_c
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v10           #CF_Imsi:Ljava/lang/String;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v28           #sp:Landroid/content/SharedPreferences;
    .restart local p1
    :pswitch_7
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .local v14, data:[B
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_e

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v3, v0

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v3, v0

    const/16 v4, 0xff

    if-eq v3, v4, :cond_f

    const-string v3, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v6, v0

    const/4 v7, 0x6

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    :cond_f
    const-string v3, "GSM"

    const-string v4, "Got invalid mailbox number for MBDN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_8
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0xb

    if-ne v5, v6, :cond_10

    const-string v5, "[MAILBOX]"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_10
    const-string v5, "[MBDN]"

    goto :goto_5

    :cond_11
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .local v4, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_12

    const-string v6, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/4 v5, 0x6

    if-ne v3, v5, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_12
    const-string v6, " EF[MBDN]"

    goto :goto_6

    :cond_13
    const-string v3, "TMU"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "GSM"

    const-string v5, "Voicemail number is fixed on TMU"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    const-string v3, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    const-string v4, "gsm.sim.msisdn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_b
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_16

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x0

    aget-byte v3, v14, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    move/from16 v30, v3

    .local v30, voiceMailWaiting:Z
    :goto_7
    const/4 v3, 0x1

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .end local v30           #voiceMailWaiting:Z
    :cond_17
    const/4 v3, 0x0

    move/from16 v30, v3

    goto :goto_7

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_c
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aget-byte v3, v14, v3

    and-int/lit8 v21, v3, 0xf

    .local v21, indicator:I
    const/16 v3, 0xa

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_19

    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x5

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_18

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_8

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v21           #indicator:I
    .restart local p1
    :pswitch_d
    const/16 v22, 0x1

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    array-length v4, v14

    invoke-static {v14, v3, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSimChanged()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_f
    const/16 v22, 0x1

    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_1e

    :try_start_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_1b

    aget-object v25, v13, v19

    .restart local v25       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v3, :cond_47

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .end local v24           #mcc:I
    :cond_1d
    :goto_a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    :cond_1e
    :try_start_d
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v14

    const/4 v4, 0x3

    if-ge v3, v4, :cond_23

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_b
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_20

    aget-object v25, v13, v19

    .restart local v25       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v3, :cond_49

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .end local v24           #mcc:I
    :cond_22
    :goto_c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    :cond_23
    :try_start_11
    array-length v3, v14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_d
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_25

    aget-object v25, v13, v19

    .restart local v25       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v3, :cond_4b

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .end local v24           #mcc:I
    :cond_27
    :goto_e
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    :cond_28
    const/4 v3, 0x3

    :try_start_15
    aget-byte v3, v14, v3

    and-int/lit8 v3, v3, 0xf

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "XFA"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "XFM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "XFC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "XFE"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "XFV"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2b

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_2b
    :try_start_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_f
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_2d

    aget-object v25, v13, v19

    .restart local v25       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v3, :cond_4d

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .end local v24           #mcc:I
    :cond_2f
    :goto_10
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_11
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_31

    aget-object v25, v13, v19

    .restart local v25       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v4, :cond_45

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #mcc:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .end local v24           #mcc:I
    :cond_33
    :goto_12
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    :cond_34
    throw v3

    .restart local p1
    :pswitch_10
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aget-byte v3, v14, v3

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0xa

    if-ne v3, v4, :cond_36

    const/4 v3, 0x1

    :goto_13
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    array-length v3, v14

    const/4 v4, 0x1

    if-le v3, v4, :cond_35

    const/4 v3, 0x1

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_37

    const/4 v3, 0x1

    :goto_14
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    :cond_36
    const/4 v3, 0x0

    goto :goto_13

    :cond_37
    const/4 v3, 0x0

    goto :goto_14

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_12
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    const-string v3, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    if-eqz v12, :cond_38

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_38

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    const/4 v3, 0x0

    array-length v4, v14

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v14, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14           #data:[B
    .restart local p1
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f18

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    const/4 v3, 0x0

    array-length v4, v14

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v14, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_16
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_17
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_PNN_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_18
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_19
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1a
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v20, v0

    .local v20, index:[I
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_39

    move-object/from16 v0, v20

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3a

    :cond_39
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v20, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v20           #index:[I
    .restart local p1
    :pswitch_1b
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3b

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .restart local p1
    :cond_3b
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_1c
    const/16 v22, 0x1

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SST: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkEONSavailable([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkFDNavailable([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCHV1available([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSPNavailable([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMSISDNavailable([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSMSavailable([B)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMBDNavailable([B)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_1d
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsCSPEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GSM"

    const-string v4, "CSP is Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f15

    const/16 v5, 0x23

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1e
    const-string v3, "GSM"

    const-string v4, "EVENT_GET_CSP_CPHS_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->makeCSPtable([B)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_1f
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_3e

    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Message;

    .local v27, onCphsCompleted:Landroid/os/Message;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3d

    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3d

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    const-string v3, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    :cond_3d
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v27           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_3e
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_20
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    :goto_15
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    const-string v3, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .restart local p1
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_15

    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_21
    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_0

    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_22
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .restart local v14       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_40

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon voice value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon video value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    :cond_40
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .local v29, sp2:Landroid/content/SharedPreferences;
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .local v17, editor2:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    move-object/from16 v0, v17

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    move-object/from16 v0, v17

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v17           #editor2:Landroid/content/SharedPreferences$Editor;
    .end local v29           #sp2:Landroid/content/SharedPreferences;
    :cond_41
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v3, 0x1

    aget-byte v3, v14, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    :goto_16
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    const/4 v3, 0x1

    aget-byte v3, v14, v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    :goto_17
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    :cond_42
    const/4 v3, 0x0

    goto :goto_16

    :cond_43
    const/4 v3, 0x0

    goto :goto_17

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_44
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_11

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_45
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :catch_4
    move-exception v4

    move-object v15, v4

    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #ar:Landroid/os/AsyncResult;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v14       #data:[B
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_46
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_47
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_5
    move-exception v3

    move-object v15, v3

    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_48
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_b

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_49
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catch_6
    move-exception v3

    move-object v15, v3

    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_4a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_d

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_4b
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :catch_7
    move-exception v3

    move-object v15, v3

    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v23       #len$:I
    .restart local v25       #mccmnc:Ljava/lang/String;
    .restart local v26       #mccmncCode:Ljava/lang/String;
    :cond_4c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_f

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v23           #len$:I
    .end local v25           #mccmnc:Ljava/lang/String;
    .end local v26           #mccmncCode:Ljava/lang/String;
    :cond_4d
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :catch_8
    move-exception v3

    move-object v15, v3

    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_17
        :pswitch_0
        :pswitch_1c
        :pswitch_18
        :pswitch_19
        :pswitch_1f
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_11
        :pswitch_20
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_21
        :pswitch_22
        :pswitch_14
        :pswitch_15
        :pswitch_1e
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method public isAvailableVoiceMailInSIM()Z
    .locals 3

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMBDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCphsMailboxEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .local v0, operator:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOldICCID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .restart local p0
    :cond_0
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    :cond_0
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 12
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    const/4 v10, 0x1

    const-string v11, "GSM"

    if-eq p1, v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    :cond_3
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NAM] Write cf icon voice value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NAM] Write cf icon video value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .local v8, sp:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "cf_iconkey_voice"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cf_iconkey_video"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_6

    if-eqz p2, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    if-eqz p2, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v10, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xa0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v0, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v11, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v7           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x1

    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",icctype = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.msisdn"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    const/16 v3, 0x6f4a

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x6f4e

    goto :goto_1
.end method

.method setSpnDynamic(Ljava/lang/String;)V
    .locals 11
    .parameter "currentPlmn"

    .prologue
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, simOper:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, spnOverrideString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, spnDisplayRule:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, onlyOn:[Ljava/lang/String;
    if-nez v8, :cond_2

    if-ltz v6, :cond_0

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, spnForCurrentLocale:Ljava/lang/String;
    if-nez v3, :cond_3

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 5
    .parameter "spn"

    .prologue
    const/4 v3, 0x1

    const-string v4, "GSM"

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceMailByCountry: NetworkName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceMailByCountry: voiceMailNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " voiceMailTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "XFM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "XFC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "XFE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "XFV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "KPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "KPN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    :cond_2
    const-string v1, "GSM"

    const-string v1, "[setVoiceMailByCountry] isVoiceMailFixed is false"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    goto/16 :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p2, :cond_4

    const/4 p2, -0x1

    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v3, :cond_5

    move v3, v5

    :goto_2
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    if-gez p2, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v3, :cond_7

    const/4 v3, 0x5

    :goto_4
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v0, 0xff

    if-le p2, v0, :cond_2

    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    const/16 v3, 0xa

    goto :goto_4
.end method
