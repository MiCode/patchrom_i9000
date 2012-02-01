.class public final enum Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;
.super Ljava/lang/Enum;
.source "CscSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum AlarmVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum AllowMockLocations:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum AudibleSelection:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum AudibleTouchTones:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum AutoTimeUpdate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum Brightness:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum BrightnessAutomatic:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum HapticFeedback:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum InputMethod:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum LocationProvidersAllowed:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum LockScreenSound:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum MediaVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum NotificationVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum Orientation:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum PhoneVibrate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum PowerButtonEndsCall:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum PowerSavingMode:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum RingerVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum SamsungAppsNotification:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum ScreenTimeOut:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum ShowPassword:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum StayAwake:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum SystemVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum UnknownSources:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum UsbSettings:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

.field public static final enum Use24HourFormat:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1010
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "RingerVolume"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->RingerVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1011
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "NotificationVolume"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->NotificationVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1012
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "AlarmVolume"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AlarmVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1013
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "MediaVolume"

    invoke-direct {v0, v1, v6}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->MediaVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1014
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "SystemVolume"

    invoke-direct {v0, v1, v7}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SystemVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1015
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "PhoneVibrate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PhoneVibrate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1016
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "AudibleSelection"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AudibleSelection:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1017
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "AudibleTouchTones"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AudibleTouchTones:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1018
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "HapticFeedback"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->HapticFeedback:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1019
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "LockScreenSound"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LockScreenSound:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1020
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "Orientation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Orientation:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1021
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "Brightness"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Brightness:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1022
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "BrightnessAutomatic"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->BrightnessAutomatic:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1023
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "ScreenTimeOut"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ScreenTimeOut:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1024
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "PowerSavingMode"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerSavingMode:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1025
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "LocationProvidersAllowed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LocationProvidersAllowed:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1026
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "ShowPassword"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ShowPassword:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1027
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "UnknownSources"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UnknownSources:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1028
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "StayAwake"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->StayAwake:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1029
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "AllowMockLocations"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AllowMockLocations:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1030
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "SamsungAppsNotification"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SamsungAppsNotification:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1031
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "InputMethod"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->InputMethod:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1032
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "PowerButtonEndsCall"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerButtonEndsCall:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1033
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "AutoTimeUpdate"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AutoTimeUpdate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1034
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "Use24HourFormat"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Use24HourFormat:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1035
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    const-string v1, "UsbSettings"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UsbSettings:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    .line 1009
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->RingerVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->NotificationVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AlarmVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->MediaVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SystemVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PhoneVibrate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AudibleSelection:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AudibleTouchTones:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->HapticFeedback:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LockScreenSound:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Orientation:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Brightness:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->BrightnessAutomatic:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ScreenTimeOut:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerSavingMode:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LocationProvidersAllowed:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ShowPassword:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UnknownSources:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->StayAwake:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AllowMockLocations:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SamsungAppsNotification:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->InputMethod:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerButtonEndsCall:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AutoTimeUpdate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Use24HourFormat:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UsbSettings:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->$VALUES:[Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1009
    const-class v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->$VALUES:[Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    return-object v0
.end method
