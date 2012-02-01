.class public Landroid/server/DualHfHelper;
.super Ljava/lang/Object;
.source "DualHfHelper.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/server/DualHfHelper;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DualHfHelper"

    iput-object v0, p0, Landroid/server/DualHfHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native connectHeadsetNative(Ljava/lang/String;I)V
.end method

.method private native disconnectHeadsetNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .parameter "device"
    .parameter "channel"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/server/DualHfHelper;->connectHeadsetNative(Ljava/lang/String;I)V

    return-void
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/DualHfHelper;->disconnectHeadsetNative(Ljava/lang/String;)V

    return-void
.end method
