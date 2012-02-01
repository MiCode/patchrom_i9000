.class public Lcom/samsung/sec/android/application/csc/CscHomescreen;
.super Ljava/lang/Object;
.source "CscHomescreen.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "CSCHomescreen"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->LOG_TAG:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 70
    return-void
.end method

.method private getWallpaperComponentFromFile(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 73
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 74
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.ForceLiveWallpaper.Package"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, wallpaperPackage:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.ForceLiveWallpaper.Class"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, wallpaperClass:Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, wallpaperComponent:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 78
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #wallpaperComponent:Landroid/content/ComponentName;
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .restart local v1       #wallpaperComponent:Landroid/content/ComponentName;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-string v0, "NOERROR"

    .line 100
    .local v0, answer:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscHomescreen;->getWallpaperComponentFromFile(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 101
    .local v1, name:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string v0, "SettingsData.ForceLiveWallpaper"

    .line 106
    :cond_0
    return-object v0
.end method

.method public update()V
    .locals 6

    .prologue
    const-string v5, "CSCHomescreen"

    .line 84
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscHomescreen;->getWallpaperComponentFromFile(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 85
    .local v1, name:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 88
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscHomescreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CSCHomescreen"

    const-string v2, "Failure to connect to wallpaper service"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CSCHomescreen"

    const-string v2, "Failure setting wallpaper"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
