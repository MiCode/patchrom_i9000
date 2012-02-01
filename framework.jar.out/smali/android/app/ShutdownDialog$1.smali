.class Landroid/app/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-string v9, "ShutdownDialog"

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v4

    iget-object v5, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v5}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/LibQmg;->qmgLoadFrame(I[I)I

    move-result v3

    .local v3, ret:I
    if-ltz v3, :cond_4

    const-string v4, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Draw frame: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    iget-object v5, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v5}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v5

    iget-object v6, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v6}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)I

    move-result v6

    iget-object v7, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->height:I
    invoke-static {v7}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Landroid/app/ShutdownDialog;->access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v5, "SHW-M180S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .local v2, lastImageFilePath:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "//system/media/video/shutdown/shutdown_kor.png"

    :goto_0
    const-string v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Landroid/app/ShutdownDialog;->access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const-string v4, "ShutdownDialog"

    const-string v5, "Got mImage"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v5}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v4, "ShutdownDialog"

    const-string v5, "set mImage"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #lastImageFilePath:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v4

    invoke-static {v4}, Landroid/app/LibQmg;->qmgClose(I)I

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    return-void

    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #lastImageFilePath:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "//system/media/video/shutdown/shutdown_eng.png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ShutdownDialog"

    const-string v4, "Exceptions when shutting down SHW-M180S..."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ShutdownDialog"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #lastImageFilePath:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12c

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v4

    invoke-static {v4}, Landroid/app/LibQmg;->qmgClose(I)I

    goto :goto_2
.end method
