.class Lcom/android/phone/InVTCallScreen$24;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7690
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "InVTCallScreen"

    .line 7694
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$5700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7695
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7696
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7697
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7698
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7702
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 7706
    :goto_0
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$6802(Z)Z

    .line 7707
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7708
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 7773
    :cond_0
    :goto_1
    return v4

    .line 7704
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 7712
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v0, "In onLongClick of far_endsurview "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7721
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In mDisp_Small is false.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7723
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 7724
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$6802(Z)Z

    .line 7727
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_1

    .line 7735
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7736
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7737
    const-string v0, "InVTCallScreen"

    const-string v0, "In onLongClick of far_endsurview "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7746
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In mDisp_Small is false.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7748
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 7749
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$6802(Z)Z

    .line 7752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7753
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1

    .line 7756
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7757
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7760
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7761
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 7765
    :goto_2
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$6802(Z)Z

    .line 7766
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7767
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_1

    .line 7763
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_2
.end method
