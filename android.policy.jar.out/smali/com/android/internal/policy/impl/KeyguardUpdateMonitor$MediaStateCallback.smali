.class interface abstract Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaStateCallback"
.end annotation


# static fields
.field public static final MINI_MEDIA_PLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field public static final MINI_MEDIA_PLAYER_FILTER_STRING:Ljava/lang/String; = "musicPlayer.service."

.field public static final MINI_MEDIA_PLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field public static final MINI_MEDIA_PLAYER_START_UPDATE_STATUS:Ljava/lang/String; = "musicPlayer.service.startUpdateStatus"

.field public static final MINI_MEDIA_PLAYER_STOP_UPDATE_STATUS:Ljava/lang/String; = "musicPlayer.service.stopUpdateStatus"

.field public static final MINI_MEDIA_PLAYER_UPDATE_MEDIA_INFO:Ljava/lang/String; = "musicPlayer.service.updateMediaInfo"

.field public static final MINI_MEDIA_PLAYER_UPDATE_PLAY_COMPLETE:Ljava/lang/String; = "musicPlayer.service.updatePlayComplete"

.field public static final MINI_MEDIA_PLAYER_UPDATE_PLAY_INFO:Ljava/lang/String; = "musicPlayer.service.updatePlayInfo"


# virtual methods
.method public abstract onMediaUpdated(ZZLandroid/net/Uri;)V
.end method
