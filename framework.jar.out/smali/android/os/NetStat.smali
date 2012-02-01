.class public Landroid/os/NetStat;
.super Ljava/lang/Object;
.source "NetStat.java"


# static fields
.field private static final MOBILE_RX_BYTES:[Ljava/io/File; = null

.field private static final MOBILE_RX_PACKETS:[Ljava/io/File; = null

.field private static final MOBILE_TX_BYTES:[Ljava/io/File; = null

.field private static final MOBILE_TX_PACKETS:[Ljava/io/File; = null

.field private static final SYS_CLASS_NET_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "netstat"

.field private static final buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "tx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->mobileFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/NetStat;->MOBILE_TX_PACKETS:[Ljava/io/File;

    const-string v0, "rx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->mobileFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/NetStat;->MOBILE_RX_PACKETS:[Ljava/io/File;

    const-string v0, "tx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->mobileFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/NetStat;->MOBILE_TX_BYTES:[Ljava/io/File;

    const-string v0, "rx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->mobileFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/NetStat;->MOBILE_RX_BYTES:[Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/net"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/NetStat;->SYS_CLASS_NET_DIR:Ljava/io/File;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Landroid/os/NetStat;->buf:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v5, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v5

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "netstat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception opening TCP statistics file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    goto :goto_0
.end method

.method public static getMobileRxBytes()J
    .locals 2

    .prologue
    sget-object v0, Landroid/os/NetStat;->MOBILE_RX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileRxPkts()J
    .locals 2

    .prologue
    sget-object v0, Landroid/os/NetStat;->MOBILE_RX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMobileStat([Ljava/io/File;)J
    .locals 7
    .parameter "files"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-object v1, p0, v2

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/NetStat;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .end local v1           #file:Ljava/io/File;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return-wide v4

    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    const-string v4, "netstat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception opening TCP statistics file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method public static getMobileTxBytes()J
    .locals 2

    .prologue
    sget-object v0, Landroid/os/NetStat;->MOBILE_TX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxPkts()J
    .locals 2

    .prologue
    sget-object v0, Landroid/os/NetStat;->MOBILE_TX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    .locals 10
    .parameter "raf"
    .parameter "filename"

    .prologue
    const/16 v8, 0x30

    const-string v4, "Exception closing "

    const-string v4, "netstat"

    const-class v4, Landroid/os/NetStat;

    monitor-enter v4

    :try_start_0
    sget-object v5, Landroid/os/NetStat;->buf:[B

    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    .local v2, num:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_2
    sget-object v5, Landroid/os/NetStat;->buf:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1

    sget-object v5, Landroid/os/NetStat;->buf:[B

    aget-byte v5, v5, v1

    if-lt v5, v8, :cond_1

    sget-object v5, Landroid/os/NetStat;->buf:[B

    aget-byte v5, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    :cond_1
    move-wide v5, v2

    .end local v1           #i:I
    .end local v2           #num:J
    :cond_2
    :goto_2
    monitor-exit v4

    return-wide v5

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "netstat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    :catch_1
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    const-string v5, "netstat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting TCP bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v7, "netstat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_3
    :try_start_8
    throw v5

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "netstat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #num:J
    :cond_4
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    sget-object v5, Landroid/os/NetStat;->buf:[B

    aget-byte v5, v5, v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v5, v8

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private static getNumberFromFilePath(Ljava/lang/String;)J
    .locals 3
    .parameter "filename"

    .prologue
    invoke-static {p0}, Landroid/os/NetStat;->getFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    .local v0, raf:Ljava/io/RandomAccessFile;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0, p0}, Landroid/os/NetStat;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    .prologue
    const-string v0, "rx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPkts()J
    .locals 2

    .prologue
    const-string v0, "rx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTotalStat(Ljava/lang/String;)J
    .locals 11
    .parameter "whatStat"

    .prologue
    new-instance v4, Ljava/io/File;

    const-string v9, "/sys/class/net"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, netdir:Ljava/io/File;
    sget-object v9, Landroid/os/NetStat;->SYS_CLASS_NET_DIR:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, nets:[Ljava/io/File;
    if-nez v5, :cond_0

    const-wide/16 v9, 0x0

    :goto_0
    return-wide v9

    :cond_0
    const-wide/16 v7, 0x0

    .local v7, total:J
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, strbuf:Ljava/lang/StringBuffer;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, net:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "statistics"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #net:Ljava/io/File;
    :cond_1
    move-wide v9, v7

    goto :goto_0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    .prologue
    const-string v0, "tx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPkts()J
    .locals 2

    .prologue
    const-string v0, "tx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .parameter "uid"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/uid_stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_rcv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .parameter "uid"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/uid_stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_snd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static mobileFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .parameter "whatStat"

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/io/File;

    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/rmnet0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/ppp0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method
