.class public Lcom/samsung/sec/android/application/csc/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static Media_Type:I

.field private static mFileName:Ljava/lang/String;

.field private static mOthersFileName:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

.field private static sOthersInstance:Lcom/samsung/sec/android/application/csc/CscParser;

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mHandler:Landroid/os/Handler;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 59
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscParser;->sOthersInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscParser;->value_uri:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/samsung/sec/android/application/csc/CscParser;->Media_Type:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    sput-object p1, Lcom/samsung/sec/android/application/csc/CscParser;->mFileName:Ljava/lang/String;

    .line 88
    :try_start_0
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sput-object p1, Lcom/samsung/sec/android/application/csc/CscParser;->mOthersFileName:Ljava/lang/String;

    .line 108
    :try_start_1
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->mOthersFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 114
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v10, "customer_path ="

    const-string v10, "/efs/imei/mps_code.dat"

    const-string v10, "CscParser"

    .line 379
    const-string v3, "/system/csc/customer.xml"

    .line 381
    .local v3, customer_path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 382
    .local v7, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 388
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v6, fe:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 394
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 396
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 398
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, sales_code:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v4, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/customer.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 408
    const-string v3, "/system/csc/customer.xml"

    .line 432
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 460
    .end local v2           #ce:Ljava/io/File;
    .end local v4           #de:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 462
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 468
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 470
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 480
    .end local v6           #fe:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v3

    .line 440
    .restart local v6       #fe:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v3, "/system/csc/customer.xml"

    .line 444
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 450
    .end local v6           #fe:Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 451
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 460
    if-eqz v0, :cond_4

    .line 462
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 468
    :cond_4
    :goto_4
    if-eqz v7, :cond_2

    .line 470
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 474
    :catch_1
    move-exception v10

    goto :goto_2

    .line 452
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 460
    :goto_5
    if-eqz v0, :cond_5

    .line 462
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 468
    :cond_5
    :goto_6
    if-eqz v7, :cond_2

    .line 470
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 474
    :catch_3
    move-exception v10

    goto :goto_2

    .line 459
    :catchall_0
    move-exception v10

    .line 460
    :goto_7
    if-eqz v0, :cond_6

    .line 462
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 468
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 470
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 476
    :cond_7
    :goto_9
    throw v10

    .line 463
    .restart local v6       #fe:Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 474
    :catch_5
    move-exception v10

    goto :goto_2

    .line 463
    .end local v6           #fe:Ljava/io/File;
    .restart local v5       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    goto :goto_4

    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v10

    goto :goto_6

    :catch_8
    move-exception v11

    goto :goto_8

    .line 474
    :catch_9
    move-exception v11

    goto :goto_9

    .line 459
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fe:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 452
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 450
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v10

    move-object v5, v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v10

    move-object v5, v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static getIDPath()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v10, "ID_path ="

    const-string v10, "/efs/imei/mps_code.dat"

    const-string v10, "CscParser"

    .line 591
    const-string v0, "/system/SW_Configuration.xml"

    .line 593
    .local v0, ID_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 594
    .local v6, fr:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 600
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 606
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 608
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 610
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 612
    .local v9, sales_code:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    .local v3, de:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v10, "/system/SW_Configuration.xml"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v8, ie:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 620
    const-string v0, "/system/SW_Configuration.xml"

    .line 641
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ID_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 669
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v8           #ie:Ljava/io/File;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v1, :cond_1

    .line 671
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 677
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 678
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 686
    .end local v5           #fe:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v0

    .line 649
    .restart local v5       #fe:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v0, "/system/SW_Configuration.xml"

    .line 653
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ID_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 659
    .end local v5           #fe:Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 660
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 669
    if-eqz v1, :cond_4

    .line 671
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 677
    :cond_4
    :goto_4
    if-eqz v6, :cond_2

    .line 678
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 681
    :catch_1
    move-exception v10

    goto :goto_2

    .line 661
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 669
    :goto_5
    if-eqz v1, :cond_5

    .line 671
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 677
    :cond_5
    :goto_6
    if-eqz v6, :cond_2

    .line 678
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 681
    :catch_3
    move-exception v10

    goto :goto_2

    .line 668
    :catchall_0
    move-exception v10

    .line 669
    :goto_7
    if-eqz v1, :cond_6

    .line 671
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 677
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    .line 678
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 682
    :cond_7
    :goto_9
    throw v10

    .line 672
    .restart local v5       #fe:Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 681
    :catch_5
    move-exception v10

    goto :goto_2

    .line 672
    .end local v5           #fe:Ljava/io/File;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    goto :goto_4

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v10

    goto :goto_6

    :catch_8
    move-exception v11

    goto :goto_8

    .line 681
    :catch_9
    move-exception v11

    goto :goto_9

    .line 668
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 661
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 659
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v10

    move-object v4, v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v10

    move-object v4, v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static getInstance()Lcom/samsung/sec/android/application/csc/CscParser;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    return-object v1

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 144
    :try_start_0
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-direct {v1, p0}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V

    .line 146
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance fileName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 176
    :goto_0
    return-object v1

    .line 158
    :cond_0
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sOthersInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->update(Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sOthersInstance:Lcom/samsung/sec/android/application/csc/CscParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscParser;->sInstance:Lcom/samsung/sec/android/application/csc/CscParser;

    goto :goto_0
.end method

.method public static getOthersPath()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v10, "others_path ="

    const-string v10, "/efs/imei/mps_code.dat"

    const-string v10, "CscParser"

    .line 486
    const-string v8, "/system/csc/others.xml"

    .line 488
    .local v8, others_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 489
    .local v6, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 495
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 501
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 503
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 505
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, sales_code:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/others.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 515
    const-string v8, "/system/csc/others.xml"

    .line 537
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 565
    .end local v2           #ce:Ljava/io/File;
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 567
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 573
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 575
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 585
    .end local v5           #fe:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v8

    .line 545
    .restart local v5       #fe:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v8, "/system/csc/others.xml"

    .line 549
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 555
    .end local v5           #fe:Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 556
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 565
    if-eqz v0, :cond_4

    .line 567
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 573
    :cond_4
    :goto_4
    if-eqz v6, :cond_2

    .line 575
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 579
    :catch_1
    move-exception v10

    goto :goto_2

    .line 557
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 565
    :goto_5
    if-eqz v0, :cond_5

    .line 567
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 573
    :cond_5
    :goto_6
    if-eqz v6, :cond_2

    .line 575
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 579
    :catch_3
    move-exception v10

    goto :goto_2

    .line 564
    :catchall_0
    move-exception v10

    .line 565
    :goto_7
    if-eqz v0, :cond_6

    .line 567
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 573
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    .line 575
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 581
    :cond_7
    :goto_9
    throw v10

    .line 568
    .restart local v5       #fe:Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 579
    :catch_5
    move-exception v10

    goto :goto_2

    .line 568
    .end local v5           #fe:Ljava/io/File;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    goto :goto_4

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v10

    goto :goto_6

    :catch_8
    move-exception v11

    goto :goto_8

    .line 579
    :catch_9
    move-exception v11

    goto :goto_9

    .line 564
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 557
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 555
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v10

    move-object v4, v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v10

    move-object v4, v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private update(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "CscParser"

    .line 183
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 185
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 187
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 201
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v3, "CscParser"

    const-string v3, "update(): file not exist"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 217
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttrbute(Ljava/lang/String;II)Ljava/lang/String;
    .locals 21
    .parameter "tagPath"
    .parameter "index"
    .parameter "mode"

    .prologue
    .line 334
    const/4 v6, 0x0

    .line 335
    .local v6, attribute:Ljava/lang/String;
    const-string v18, "[.]"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 336
    .local v17, tagSplit:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v13, v0

    .line 338
    .local v13, tagCount:I
    add-int/lit8 v14, v13, -0x1

    .end local v13           #tagCount:I
    .local v14, tagCount:I
    const/16 v18, 0x3

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move v13, v14

    .end local v14           #tagCount:I
    .restart local v13       #tagCount:I
    move-object v7, v6

    .line 374
    .end local v6           #attribute:Ljava/lang/String;
    .local v7, attribute:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 343
    .end local v7           #attribute:Ljava/lang/String;
    .end local v13           #tagCount:I
    .restart local v6       #attribute:Ljava/lang/String;
    .restart local v14       #tagCount:I
    :cond_0
    add-int/lit8 v13, v14, -0x1

    .end local v14           #tagCount:I
    .restart local v13       #tagCount:I
    aget-object v12, v17, v14

    .line 344
    .local v12, tagAttr:Ljava/lang/String;
    aget-object v15, v17, v13

    .line 345
    .local v15, tagList:Ljava/lang/String;
    const/16 v16, 0x0

    .line 347
    .local v16, tagNode:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 348
    if-nez v16, :cond_1

    .line 349
    aget-object v16, v17, v9

    .line 347
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 351
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v17, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 354
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 355
    .local v11, nodeList:Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_3

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 356
    move-object v0, v11

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 357
    .local v10, list:Lorg/w3c/dom/Element;
    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 358
    .local v3, attr:Lorg/w3c/dom/Element;
    invoke-interface {v3, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    .end local v3           #attr:Lorg/w3c/dom/Element;
    .end local v10           #list:Lorg/w3c/dom/Element;
    :cond_3
    if-eqz v6, :cond_4

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 364
    const-string v18, "/"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, attrSlash:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v8, v18, v19

    .line 366
    .local v8, cntSlash:I
    aget-object v18, v4, v8

    if-eqz v18, :cond_4

    .line 367
    aget-object v18, v4, v8

    const-string v19, "[.]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, attrSplit:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    if-eqz v18, :cond_4

    .line 369
    const/16 v18, 0x0

    aget-object v6, v5, v18

    .line 373
    .end local v4           #attrSlash:[Ljava/lang/String;
    .end local v5           #attrSplit:[Ljava/lang/String;
    .end local v8           #cntSlash:I
    :cond_4
    const-string v18, "CscParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 374
    .end local v6           #attribute:Ljava/lang/String;
    .restart local v7       #attribute:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 314
    const/4 v2, 0x0

    .line 329
    :goto_0
    return-object v2

    .line 318
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 319
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 321
    .local v1, stringValue:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 325
    goto :goto_0

    .line 329
    .end local v0           #idx:I
    .end local v1           #stringValue:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 228
    if-nez p1, :cond_0

    move-object v3, v4

    .line 249
    :goto_0
    return-object v3

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 233
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 241
    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 247
    goto :goto_1

    .end local v1           #token:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 249
    goto :goto_0
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 255
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 257
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 259
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 261
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 263
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 265
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 275
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v4

    .line 261
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v5, 0x0

    .line 306
    :goto_0
    return-object v5

    .line 284
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 286
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 288
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 290
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 292
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 294
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 296
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 292
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method
