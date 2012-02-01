.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field static final preferredNetworkMode:I

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter "networkMode"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v6, "PHONE"

    const-class v6, Lcom/android/internal/telephony/Phone;

    monitor-enter v6

    :try_start_0
    sget-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v7, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_0
    const/4 v5, 0x0

    .local v5, retryCount:I
    :goto_0
    const/4 v2, 0x0

    .local v2, hasException:Z
    add-int/lit8 v5, v5, 0x1

    :try_start_1
    new-instance v7, Landroid/net/LocalServerSocket;

    const-string v8, "com.android.internal.telephony"

    invoke-direct {v7, v8}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v2, :cond_3

    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, networkMode:I
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Mode set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_cdma_subscription"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, cdmaSubscription:I
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cdma Subscription set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/internal/telephony/RIL;

    invoke-direct {v7, p0, v3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->newInstance(Lcom/android/internal/telephony/CommandsInterface;)Ljava/util/Map;

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    .local v4, phoneType:I
    if-ne v4, v10, :cond_5

    const-string v7, "PHONE"

    const-string v8, "Creating GSMPhone"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v8, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    :cond_1
    :goto_2
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .end local v0           #cdmaSubscription:I
    .end local v2           #hasException:Z
    .end local v3           #networkMode:I
    .end local v4           #phoneType:I
    .end local v5           #retryCount:I
    :cond_2
    monitor-exit v6

    return-void

    .restart local v2       #hasException:Z
    .restart local v5       #retryCount:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/io/IOException;
    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    const/4 v7, 0x3

    if-le v5, v7, :cond_4

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "PhoneFactory probably already running"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const-wide/16 v7, 0x7d0

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto/16 :goto_0

    .restart local v0       #cdmaSubscription:I
    .restart local v3       #networkMode:I
    .restart local v4       #phoneType:I
    :cond_5
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    :try_start_4
    const-string v7, "PHONE"

    const-string v8, "Creating CDMAPhone"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v8, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
