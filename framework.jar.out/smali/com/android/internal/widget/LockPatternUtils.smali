.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$NotiMode;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_HISTORY_FILE:Ljava/lang/String; = "password_history.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "recovery_password.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static mIsPhonelock:Z

.field private static mPatternActivated:Z

.field private static mSimLockPrepared:Z

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordHistoryFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MSG_PKG:Ljava/lang/String;

.field private final NOTI_NONE_COUNT:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mNotifyPwdChanges:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->CALL_PKG:Ljava/lang/String;

    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->MSG_PKG:Ljava/lang/String;

    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->EMAIL_PKG:Ljava/lang/String;

    iput v5, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_CALL_EMAIL:I

    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_MSG:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/LockPatternUtils;->NOTI_NONE_COUNT:I

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password_history.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recovery_password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_4

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_5

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0x388

    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_0
    sput-boolean v6, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    const-string v2, "lock_pattern_autolock"

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->readSimLockState()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    :cond_1
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    move v3, v6

    goto :goto_3
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordComplexChars(Ljava/lang/String;)I
    .locals 4
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .local v0, countComplex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static computePasswordHasSymbol(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/high16 v4, 0x5

    :goto_2
    return v4

    :cond_2
    if-eqz v1, :cond_3

    const/high16 v4, 0x4

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/high16 v4, 0x2

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/32 v4, 0x20000

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, passwordPolicy:J
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomNumericString()Ljava/lang/String;

    move-result-object v2

    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2           #ret:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "secureSettingKey"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private nonEmptyFileExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v3

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v3, v4

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, ioe:Ljava/io/IOException;
    move v3, v4

    goto :goto_0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, patternSize:I
    new-array v6, v5, [B

    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    goto :goto_0

    .end local v1           #hash:[B
    .end local v3           #md:Landroid/security/MessageDigest;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, patternSize:I
    new-array v3, v2, [B

    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private readSimLockState()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "0"

    const-string v2, "ril.pin_mode"

    const-string v3, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, pinMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, isAirplaneMode:I
    if-ne v0, v5, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    if-nez v1, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v0, v1, v2

    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    const-string v0, "0123456789ABCDEF"

    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkDevicePasswordExpired()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    .local v0, checkExpires:I
    if-gtz v0, :cond_0

    move v7, v9

    :goto_0
    return v7

    :cond_0
    const/4 v4, 0x0

    .local v4, pwd:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .local v2, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v2, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-nez v4, :cond_2

    move v7, v9

    goto :goto_0

    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, fnfe:Ljava/io/FileNotFoundException;
    move v7, v10

    goto :goto_0

    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .local v3, ioe:Ljava/io/IOException;
    move v7, v10

    goto :goto_0

    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordExpired()Z

    move-result v7

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_0

    move v5, v7

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    goto :goto_0
.end method

.method public clearLock()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    const/high16 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public clearLock(Z)V
    .locals 1
    .parameter "notifyChange"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    goto :goto_0
.end method

.method public clearLockByForce()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeKeyByForce()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .local v0, index:I
    const/4 v3, 0x1

    .local v3, reqNum:I
    const-string v2, "com.android.phone"

    .local v2, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, mNM:Landroid/app/NotificationManager;
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_0

    const-string v2, "com.android.phone"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    move-object v4, v6

    :goto_1
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_1

    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v4, :cond_2

    const-string v2, "com.android.email"

    goto :goto_0

    :cond_2
    move-object v4, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getEventIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 3

    .prologue
    const-string v0, "ram"

    const-string v1, "encryption.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    move-wide v4, v6

    :goto_0
    return-wide v4

    :cond_1
    move-wide v4, v0

    goto :goto_0
.end method

.method public getMinPasswordComplexChars()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    .local v1, index:I
    const/4 v4, 0x1

    .local v4, reqNum:I
    const/4 v0, 0x0

    .local v0, count:I
    const-string v3, "com.android.phone"

    .local v3, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, mNM:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    move v5, v7

    :goto_0
    return v5

    :cond_0
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_1

    const-string v3, "com.android.phone"

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    move v5, v7

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_2

    const-string v3, "com.android.mms"

    const/16 v4, 0x7b

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_3

    const-string v3, "com.android.email"

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->getEventCount(I)I

    move-result v0

    move v5, v0

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .local v4, pwd:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .local v2, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v2, :cond_0

    const/4 v7, 0x0

    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_0
    return-object v7

    .restart local v2       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_0
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :goto_1
    move-object v7, v4

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v3           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPasswordHistorySize()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, res:I
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, raf:Ljava/io/RandomAccessFile;
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .end local v3           #res:I
    .local v4, res:I
    :goto_1
    return v4

    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v4, v3

    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, ioe:Ljava/io/IOException;
    move v4, v3

    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1
.end method

.method public getPhonePassword()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v2, "ram"

    const-string v3, "encryption.bootmode"

    const-string v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, mode:J
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLockPatternEnabled()Z
    .locals 4

    .prologue
    const-wide/32 v2, 0x10000

    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissedEventRemained()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "com.android.mms"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 1

    .prologue
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPatternLockActivated()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 1

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneLock()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3

    move v1, v8

    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_4

    :cond_0
    move v0, v8

    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v4, v8

    .local v4, secure:Z
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3
    move v1, v7

    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_4
    move v0, v7

    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_5
    move v4, v7

    goto :goto_2
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 1

    .prologue
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const/4 v0, 0x0

    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :goto_1
    move-object v6, v2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public reportFailedPasswordAttempt()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    return-void
.end method

.method public reportPhoneUnlocked()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    :cond_0
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 19
    .parameter "password"
    .parameter "quality"

    .prologue
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v16

    .local v16, hash:[B
    new-instance v18, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v7, "rw"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v18, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_2

    const-wide/16 v9, 0x0

    move-object/from16 v0, v18

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v5

    .local v5, computedQuality:I
    const-string v6, "lockscreen.password_type"

    int-to-long v9, v5

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    if-eqz v5, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v7

    .local v7, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v8

    .local v8, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #computedQuality:I
    .end local v7           #countComplex:I
    .end local v8           #hasSymbol:Z
    .end local v16           #hash:[B
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v6

    move-object v15, v6

    .local v15, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v15           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v16       #hash:[B
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v16           #hash:[B
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    move-object/from16 v17, v6

    .local v17, ioe:Ljava/io/IOException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #computedQuality:I
    .restart local v16       #hash:[B
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    goto/16 :goto_0

    .end local v5           #computedQuality:I
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;ZI)V
    .locals 24
    .parameter "password"
    .parameter "saveHistory"
    .parameter "quality"

    .prologue
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v20

    .local v20, hash:[B
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    :cond_0
    :try_start_0
    new-instance v22, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v8, "rw"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v22, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_4

    const-wide/16 v10, 0x0

    move-object/from16 v0, v22

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V

    if-eqz p2, :cond_3

    const/16 v18, -0x1

    .local v18, existingPwdId:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v17

    .local v17, convertedStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password like \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    :cond_2
    const/4 v7, -0x1

    move/from16 v0, v18

    move v1, v7

    if-ne v0, v1, :cond_5

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .local v23, values:Landroid/content/ContentValues;
    const-string v7, "password"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    .local v5, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v6

    .local v6, computedQuality:I
    const-string v7, "lockscreen.password_type"

    int-to-long v10, v6

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    if-eqz v6, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v8

    .local v8, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v9

    .local v9, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v6           #computedQuality:I
    .end local v8           #countComplex:I
    .end local v9           #hasSymbol:Z
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return-void

    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .end local v22           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    move-object/from16 v19, v7

    .local v19, fnfe:Ljava/io/FileNotFoundException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v19           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v17       #convertedStr:Ljava/lang/String;
    .restart local v18       #existingPwdId:I
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_1
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .restart local v23       #values:Landroid/content/ContentValues;
    const-string v7, "password"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v10, v0

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    move-object/from16 v21, v7

    .local v21, ioe:Ljava/io/IOException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v21           #ioe:Ljava/io/IOException;
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v6       #computedQuality:I
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    goto/16 :goto_2

    .end local v6           #computedQuality:I
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public saveLockPasswordByForce(Ljava/lang/String;I)V
    .locals 0
    .parameter "password"
    .parameter "quality"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockByForce()V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v11, "Unable to save lock pattern to "

    const-string v10, "LockPatternUtils"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v7

    .local v7, hash:[B
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v9, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_2

    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v9, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    move-object v8, v1

    .local v8, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savedPasswordExists()Z
    .locals 3

    .prologue
    const-string v0, "ram"

    const-string v1, "encryption.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0
.end method

.method public savedPasswordHistoryExists()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedRecoveryPasswordExists()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSimLockedComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const v3, 0x1040324

    .local v3, textId:I
    const v2, 0x1080084

    .local v2, phoneCallIcon:I
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .end local v2           #phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    return-void

    .end local v3           #textId:I
    :cond_0
    const v3, 0x1040323

    .restart local v3       #textId:I
    const v0, 0x10801ab

    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public verifyPasswordHistory(Ljava/lang/String;)Z
    .locals 13
    .parameter "pwd"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v7

    .local v7, checkHistory:I
    if-gtz v7, :cond_0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .local v10, hash:[B
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .local v8, convertedStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "password"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_date IS NOT NULL ORDER BY set_date DESC LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, existingPwd:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .end local v9           #existingPwd:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    move v0, v11

    goto :goto_0
.end method
