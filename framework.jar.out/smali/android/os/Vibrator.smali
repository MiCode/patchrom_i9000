.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    const-string v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetMagnitude()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 1
    .parameter "magnitude"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrate(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JI)V

    return-void
.end method

.method public vibrate(JI)V
    .locals 4
    .parameter "milliseconds"
    .parameter "magnitude"

    .prologue
    const-string v3, "Vibrator"

    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IVibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate([JI)V
    .locals 4
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    const-string v3, "Vibrator"

    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrateCall(I)V
    .locals 1
    .parameter "type"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 1
    .parameter "type"
    .parameter "magnitude"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibe(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe([B)V
    .locals 1
    .parameter "pattern"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe([BI)V

    return-void
.end method

.method public vibrateImmVibe([BI)V
    .locals 1
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibePattern([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateNotification(I)V
    .locals 1
    .parameter "type"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
