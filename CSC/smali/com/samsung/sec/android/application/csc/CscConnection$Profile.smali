.class Lcom/samsung/sec/android/application/csc/CscConnection$Profile;
.super Ljava/lang/Object;
.source "CscConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Profile"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field authtype:Ljava/lang/String;

.field editable:Ljava/lang/String;

.field enableStatus:Ljava/lang/String;

.field nwkName:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field port:Ljava/lang/String;

.field profName:Ljava/lang/String;

.field protocol:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field proxyEnable:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

.field url:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Z)Z
    .locals 7
    .parameter "obj"
    .parameter "isMMS"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    instance-of v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    if-eqz v2, :cond_29

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v1, v0

    .line 72
    .local v1, pf:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;
    const-string v2, "CscConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile equals isMMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p2, :cond_11

    .line 74
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_5
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_7
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_9
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_b
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_d
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_f
    move v2, v6

    .line 127
    .end local v1           #pf:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;
    :goto_0
    return v2

    .restart local v1       #pf:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;
    :cond_10
    move v2, v5

    .line 94
    goto :goto_0

    .line 97
    :cond_11
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_13
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_15
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_17
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_19
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_1b
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_1d
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_1f
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_21
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_23
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_25
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_26
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_27
    move v2, v6

    .line 121
    goto/16 :goto_0

    :cond_28
    move v2, v5

    .line 123
    goto/16 :goto_0

    .end local v1           #pf:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;
    :cond_29
    move v2, v5

    .line 127
    goto/16 :goto_0
.end method
