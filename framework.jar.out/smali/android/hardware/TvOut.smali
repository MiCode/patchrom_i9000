.class public Landroid/hardware/TvOut;
.super Ljava/lang/Object;
.source "TvOut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/TvOut$EventHandler;
    }
.end annotation


# static fields
.field private static final ITVOUT:Ljava/lang/String; = "android.hardware.tvout"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Client"

.field private static final TVOUT_COMPLETE:I = 0x2

.field private static final TVOUT_NOP:I = 0x0

.field private static final TVOUT_PREPARED:I = 0x1


# instance fields
.field private mEventHandler:Landroid/hardware/TvOut$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/TvOut;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    const-string v0, "TvOut-Client"

    const-string v0, "TvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/hardware/TvOut;->_native_setup(Ljava/lang/Object;)V

    .line 63
    const-string v0, "TvOut-Client"

    const-string v0, "TvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private native _DisableTvOut()V
.end method

.method private native _EnableTvOut()V
.end method

.method private native _SetOrientation(I)V
.end method

.method private native _SetTvScreenSize(I)V
.end method

.method private native _SetTvSystem(I)V
.end method

.method private native _TvOutResume(I)V
.end method

.method private native _TvOutSetImageString(Ljava/lang/String;)V
.end method

.method private native _TvOutSuspend(Ljava/lang/String;)V
.end method

.method private native _TvoutSubtitleIsEnable()Z
.end method

.method private native _TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native _TvoutSubtitleSetStatus(I)Z
.end method

.method private native _getSubtitleHDMIHeight()I
.end method

.method private native _getSubtitleHDMIWidth()I
.end method

.method private native _isEnabled()Z
.end method

.method private native _isSuspended()Z
.end method

.method private native _isTvoutCableConnected()Z
.end method

.method private final native _native_setup(Ljava/lang/Object;)V
.end method

.method private final native _release()V
.end method

.method private native _setTvoutCableConnected(I)V
.end method

.method static synthetic access$000(Landroid/hardware/TvOut;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/hardware/TvOut;->mNativeContext:I

    return v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "tvout_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const-string v3, "TvOut-Client"

    .line 147
    const-string v2, "TvOut-Client"

    const-string/jumbo v2, "postEventFromNative +"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TvOut;

    .line 149
    .local v1, tvout:Landroid/hardware/TvOut;
    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/TvOut$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/TvOut$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    const-string v2, "TvOut-Client"

    const-string/jumbo v2, "postEventFromNative -"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DisableTvOut()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 193
    const-string v0, "TvOut-Client"

    const-string v0, "DisableTvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Landroid/hardware/TvOut;->_DisableTvOut()V

    .line 195
    const-string v0, "TvOut-Client"

    const-string v0, "DisableTvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public EnableTvOut()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 174
    const-string v0, "TvOut-Client"

    const-string v0, "EnableTvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Landroid/hardware/TvOut;->_EnableTvOut()V

    .line 176
    const-string v0, "TvOut-Client"

    const-string v0, "EnableTvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const-string v1, "TvOut-Client"

    .line 257
    const-string v0, "TvOut-Client"

    const-string v0, "SetOrientation +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetOrientation(I)V

    .line 259
    const-string v0, "TvOut-Client"

    const-string v0, "SetOrientation -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public SetTvScreenSize(I)V
    .locals 2
    .parameter "screen"

    .prologue
    const-string v1, "TvOut-Client"

    .line 219
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvScreenSize +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvScreenSize(I)V

    .line 221
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvScreenSize -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public SetTvSystem(I)V
    .locals 2
    .parameter "system"

    .prologue
    const-string v1, "TvOut-Client"

    .line 236
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvSystem +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvSystem(I)V

    .line 238
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvSystem -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public TvOutResume(I)V
    .locals 2
    .parameter "tvoutTime"

    .prologue
    const-string v1, "TvOut-Client"

    .line 286
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutResume +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutResume(I)V

    .line 288
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutResume -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public TvOutSetImageString(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const-string v1, "TvOut-Client"

    .line 307
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutSetImageString +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 309
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutSetImageString -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "tvText"

    .prologue
    const-string v4, "TvOut-Client"

    .line 266
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutSuspend +"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const v2, 0x10403df

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, text:Ljava/lang/String;
    const-string v2, "TvOut-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvOutSuspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, "TvOut-Client"

    const-string v2, "drawText succeeded "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    .line 281
    :goto_0
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutSuspend -"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TvoutSubtitleGetHeight()I
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public TvoutSubtitleGetWidth()I
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method public TvoutSubtitleIsEnable()Z
    .locals 2

    .prologue
    .line 336
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitleIsEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Landroid/hardware/TvOut;->_TvoutSubtitleIsEnable()Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z
    .locals 2
    .parameter "bitmap"
    .parameter "chromakey"

    .prologue
    .line 349
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitlePostBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, p1, p2}, Landroid/hardware/TvOut;->_TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitleSetStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 342
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitleSetStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvoutSubtitleSetStatus(I)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 68
    const-string v0, "TvOut-Client"

    const-string v0, "finalize +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 70
    const-string v0, "TvOut-Client"

    const-string v0, "finalize -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    .line 316
    const-string v0, "TvOut-Client"

    const-string v1, "isSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 2

    .prologue
    .line 323
    const-string v0, "TvOut-Client"

    const-string v1, "isTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 3

    .prologue
    const-string v2, "TvOut-Client"

    .line 84
    const-string v1, "TvOut-Client"

    const-string v1, "newRequest +"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.hardware.tvout"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    const-string v1, "TvOut-Client"

    const-string v1, "newRequest -"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 111
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "release +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 113
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "release -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-string v2, "TvOut-Client"

    .line 98
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "reset +"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "reset -"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public setTvoutCableConnected(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    .line 329
    const-string v0, "TvOut-Client"

    const-string/jumbo v1, "setTvoutCableConnected +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setTvoutCableConnected(I)V

    .line 331
    return-void
.end method
