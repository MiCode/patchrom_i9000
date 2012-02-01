.class public Lcom/android/internal/telephony/gsm/simCSPtable;
.super Ljava/lang/Object;
.source "simCSPtable.java"


# static fields
.field protected static final DBG:Z = true


# instance fields
.field public ALS:Z

.field public Aoc:Z

.field public BAIC:Z

.field public BICRoam:Z

.field public BOAC:Z

.field public BOIC:Z

.field public BOICexHC:Z

.field public CCBS:Z

.field public CFB:Z

.field public CFNRc:Z

.field public CFNRy:Z

.field public CFU:Z

.field public CLIP:Z

.field public CLIblock:Z

.field public CLIsend:Z

.field public CT:Z

.field public CUG:Z

.field public CUGOA:Z

.field public CW:Z

.field public CoLP:Z

.field public CoLR:Z

.field public Data:Z

.field public Del_Conf:Z

.field public Fax:Z

.field public GPRS:Z

.field public HOLD:Z

.field public HSCSD:Z

.field InfoNumber:B

.field public Language:Z

.field public MCI:Z

.field public MPTY:Z

.field public MultiBand:Z

.field public MultiSubscribProfile:Z

.field public PLMNmode:Z

.field public PrefCUG:Z

.field public ProtocolID:Z

.field public ReplyPath:Z

.field public SM_CB:Z

.field public SM_MO:Z

.field public SM_MO_Email:Z

.field public SM_MO_Paging:Z

.field public SM_MT:Z

.field public UserUserSignaling:Z

.field public VPS:Z

.field public ValidityPeriod:Z

.field public VoiceBroadCastSVC:Z

.field public VoiceGroupCall:Z

.field public services:[B


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    const-string v3, "Enter  simCSPtable"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    array-length v2, p1

    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    aget-byte v0, v3, v1

    .local v0, Abyte:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abyte is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :sswitch_0
    const-string v3, "01 : Call offering"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallOffering(B)V

    goto :goto_1

    :sswitch_1
    const-string v3, "02 : Call Restriction"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallRestriction(B)V

    goto :goto_1

    :sswitch_2
    const-string v3, "03 : Other Supp Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->OtherSuppServices(B)V

    goto :goto_1

    :sswitch_3
    const-string v3, "04 : Call Completion"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallCompletion(B)V

    goto :goto_1

    :sswitch_4
    const-string v3, "05 : Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->Teleservices(B)V

    goto :goto_1

    :sswitch_5
    const-string v3, "06 : CPHS Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CPHSteleservices(B)V

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "07 : CPHS Feature"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "08 : Number Identif"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->NumberIdentif(B)V

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "09 : Phase 2+ services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->PhaseTwoServices(B)V

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "C0 : ValueAdded Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->ValueAddedServices(B)V

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "D5 : Information Numbers"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->InformationNumbers(B)V

    goto/16 :goto_1

    .end local v0           #Abyte:I
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_9
        -0x2b -> :sswitch_a
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method private CPHSteleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x7

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private CallCompletion(B)V
    .locals 1
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x4

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    return-void
.end method

.method private CallOffering(B)V
    .locals 2
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRc is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRy is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFU is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private CallRestriction(B)V
    .locals 2
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BICRoam is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BAIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOICexHC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOAC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private InformationNumbers(B)V
    .locals 0
    .parameter "b"

    .prologue
    iput-byte p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    return-void
.end method

.method private NumberIdentif(B)V
    .locals 2
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIblock is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIsend is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCI is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private OtherSuppServices(B)V
    .locals 1
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    return-void
.end method

.method private PhaseTwoServices(B)V
    .locals 3
    .parameter "b"

    .prologue
    const-string v2, "MultiSubscribProfile is "

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPRS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSCSD is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceGroupCall is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceBroadCastSVC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiBand is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private Teleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_CB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private ValueAddedServices(B)V
    .locals 2
    .parameter "b"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLMNmode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Paging is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Email is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isAvailable(B)Z
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[simCSPtable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
