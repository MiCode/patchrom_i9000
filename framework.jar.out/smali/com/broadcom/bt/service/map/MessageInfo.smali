.class public Lcom/broadcom/bt/service/map/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_RECEPTION_STATUS_COMPLETE:B = 0x0t

.field public static final MSG_RECEPTION_STATUS_FRACTION:B = 0x1t

.field public static final MSG_RECEPTION_STATUS_NOTIFICATION:B = 0x2t

.field public static final MSG_TYPE_EMAIL:B = 0x1t

.field public static final MSG_TYPE_MMS:B = 0x8t

.field public static final MSG_TYPE_SMS_CDMA:B = 0x4t

.field public static final MSG_TYPE_SMS_GSM:B = 0x2t


# instance fields
.field public mAttachmentSize:I

.field public mDateTime:Ljava/lang/String;

.field public mIsHighPriority:Z

.field public mIsOutbound:Z

.field public mIsProtected:Z

.field public mIsRead:Z

.field public mIsSent:Z

.field public mMsgHandle:Ljava/lang/String;

.field public mMsgSize:I

.field public mMsgType:B

.field public mParameterMask:I

.field public mReceptionStatus:B

.field public mRecipientName:Ljava/lang/String;

.field public mRecipientRddressing:Ljava/lang/String;

.field public mReplyToAddressing:Ljava/lang/String;

.field public mSenderAddressing:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;

.field public mText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/map/MessageInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MessageInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/map/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIZZZZZLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "parameter_mask"
    .parameter "msg_size"
    .parameter "attachment_size"
    .parameter "text"
    .parameter "highpriority"
    .parameter "read"
    .parameter "sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    iput p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    iput p2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    iput p3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    iput-boolean p4, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    iput-boolean p5, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    iput-object p9, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    iput-byte p10, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    iput-byte p11, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    iput-object p12, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "parameter_mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachment_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " highpriority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is_protected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " msg_handle  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reception_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " date_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sender_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sender_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recepient_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recipient_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    move-object v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " replyto_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    move-object v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    if-ne v0, v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_4
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4
.end method
