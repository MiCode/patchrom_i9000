.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .local v3, action:Ljava/lang/String;
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12c

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v12, "android.intent.action.TIME_TICK"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12d

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    const-string v13, "time-zone"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->timezone:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12d

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v12, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v13

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v13

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x12f

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatterInfo(Landroid/content/Intent;)I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1902(I)I

    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, batteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x134

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900()I

    move-result v14

    invoke-virtual {v12, v13, v14, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .local v9, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v5           #batteryLevel:I
    .end local v9           #msg:Landroid/os/Message;
    :cond_6
    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x130

    new-instance v15, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Landroid/content/Intent;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string v12, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x131

    const-string v15, "android.media.EXTRA_RINGER_MODE"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v12, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "state"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x132

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v11           #state:Ljava/lang/String;
    :cond_9
    const-string v12, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "playing"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v12, 0x1

    move v10, v12

    .local v10, playing:I
    :goto_1
    const-string v12, "isStop"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    move v6, v12

    .local v6, isStop:I
    :goto_2
    const-string v12, "mediauri"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .local v7, mediaUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x133

    invoke-virtual {v12, v13, v10, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .restart local v9       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v6           #isStop:I
    .end local v7           #mediaUri:Landroid/net/Uri;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #playing:I
    :cond_a
    const/4 v12, 0x0

    move v10, v12

    goto :goto_1

    .restart local v10       #playing:I
    :cond_b
    const/4 v12, 0x0

    move v6, v12

    goto :goto_2

    .end local v10           #playing:I
    :cond_c
    const-string v12, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "isChanged"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x140

    const/16 v15, 0x64

    invoke-virtual {v13, v14, v8, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v8           #mode:I
    :cond_d
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, airPlaneEnabled:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x135

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v4, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .restart local v9       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v4           #airPlaneEnabled:I
    .end local v9           #msg:Landroid/os/Message;
    :cond_e
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v12, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v13, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x136

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
