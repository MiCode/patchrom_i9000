.class public Lcom/samsung/sec/android/application/csc/CscVoiceMail;
.super Ljava/lang/Object;
.source "CscVoiceMail.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;
    }
.end annotation


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final NOERROR:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private ct:Landroid/content/Context;

.field private mDefaultNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->sPrefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 66
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->NOERROR:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mDefaultNumber:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 446
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;-><init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mResolver:Landroid/content/ContentResolver;

    .line 82
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 83
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->ct:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private loadNetworkInfo()I
    .locals 14

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, networkSize:I
    const/4 v8, 0x0

    .line 94
    .local v8, voiceMailSize:I
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v11}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 97
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "Settings.Messages.Voicemail.TelNum"

    invoke-virtual {v11, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, checkNumExist:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 99
    const/4 v11, -0x1

    .line 210
    :goto_0
    return v11

    .line 104
    :cond_0
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "GeneralInfo"

    invoke-virtual {v11, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 105
    .local v4, node:Lorg/w3c/dom/Node;
    if-nez v4, :cond_1

    .line 106
    const/4 v11, -0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "NetworkInfo"

    invoke-virtual {v11, v4, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 109
    .local v5, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v5, :cond_2

    .line 111
    const-string v11, "CscVoiceMail"

    const-string v12, "No network info"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v11, -0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 117
    new-array v11, v3, [Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    iput-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    .line 118
    const-string v11, "CscVoiceMail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network numbers : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 123
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    new-instance v12, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;)V

    aput-object v12, v11, v1

    .line 126
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "NetworkName"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 127
    .local v6, temp:Lorg/w3c/dom/Node;
    if-eqz v6, :cond_3

    .line 129
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v1

    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v12, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mName:Ljava/lang/String;

    .line 133
    :cond_3
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "MCCMNC"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_4

    .line 136
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v1

    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v12, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mMccMnc:Ljava/lang/String;

    .line 138
    :cond_4
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailName:Ljava/lang/String;

    .line 139
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v6           #temp:Lorg/w3c/dom/Node;
    :cond_5
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "Settings.Messages"

    invoke-virtual {v11, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 146
    if-nez v4, :cond_6

    .line 147
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "Settings.Messages"

    invoke-virtual {v11, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 150
    if-nez v4, :cond_7

    .line 151
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v12, "Voicemail"

    invoke-virtual {v11, v4, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 154
    if-nez v5, :cond_8

    .line 156
    const-string v11, "CscVoiceMail"

    const-string v12, "No VoiceMail info"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 161
    :cond_8
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 162
    const-string v11, "CscVoiceMail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voiceMail num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_f

    .line 167
    const-string v9, ""

    .line 168
    .local v9, voiceNetName:Ljava/lang/String;
    const-string v10, ""

    .line 169
    .local v10, voiceTelNum:Ljava/lang/String;
    const-string v7, ""

    .line 172
    .local v7, voiceMailName:Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "NetworkName"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 173
    .restart local v6       #temp:Lorg/w3c/dom/Node;
    if-eqz v6, :cond_9

    .line 175
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v11, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 179
    :cond_9
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "TelNum"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 180
    if-eqz v6, :cond_a

    .line 182
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v11, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .line 186
    :cond_a
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "VoicemailName"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_b

    .line 189
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v11, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 192
    :cond_b
    const-string v11, "CscVoiceMail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voiceNetName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " /  voiceTelNum : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " /  voiceMailName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    if-ge v2, v3, :cond_e

    .line 197
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v2

    iget-object v11, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 199
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v2

    iput-object v7, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailName:Ljava/lang/String;

    .line 200
    iget-object v11, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v11, v11, v2

    iput-object v10, v11, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 195
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    :cond_d
    const-string v11, "default"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 204
    iput-object v10, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mDefaultNumber:Ljava/lang/String;

    goto :goto_4

    .line 165
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 210
    .end local v2           #k:I
    .end local v6           #temp:Lorg/w3c/dom/Node;
    .end local v7           #voiceMailName:Ljava/lang/String;
    .end local v9           #voiceNetName:Ljava/lang/String;
    .end local v10           #voiceTelNum:Ljava/lang/String;
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method checkSameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "fileName1"
    .parameter "fileName2"

    .prologue
    .line 301
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v9, file1:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v10, file2:Ljava/io/File;
    const/4 v11, 0x0

    .line 304
    .local v11, fileSize:I
    const/4 v12, 0x0

    .line 305
    .local v12, readSize1:I
    const/4 v13, 0x0

    .line 309
    .local v13, readSize2:I
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 310
    :cond_0
    const/4 v14, 0x0

    .line 358
    :goto_0
    return v14

    .line 312
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 313
    const/4 v14, 0x0

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v11, v14

    .line 317
    const-string v14, "CscVoiceMail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fileSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    .local v6, dis1:Ljava/io/DataInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v7, dis2:Ljava/io/DataInputStream;
    new-array v4, v11, [B

    .line 325
    .local v4, buff1:[B
    new-array v5, v11, [B

    .line 327
    .local v5, buff2:[B
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    .line 328
    invoke-virtual {v7, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    .line 330
    const-string v14, "CscVoiceMail"

    const-string v15, "read OK"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eq v12, v13, :cond_3

    .line 334
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 335
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 336
    const/4 v14, 0x0

    goto :goto_0

    .line 339
    :cond_3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 340
    .local v2, bf1:Ljava/nio/ByteBuffer;
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 342
    .local v3, bf2:Ljava/nio/ByteBuffer;
    const-string v14, "CscVoiceMail"

    const-string v15, "buff  OK"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 345
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 354
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 355
    const/4 v14, 0x1

    goto :goto_0

    .line 347
    .end local v2           #bf1:Ljava/nio/ByteBuffer;
    .end local v3           #bf2:Ljava/nio/ByteBuffer;
    .end local v4           #buff1:[B
    .end local v5           #buff2:[B
    .end local v6           #dis1:Ljava/io/DataInputStream;
    .end local v7           #dis2:Ljava/io/DataInputStream;
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 348
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 358
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v2       #bf1:Ljava/nio/ByteBuffer;
    .restart local v3       #bf2:Ljava/nio/ByteBuffer;
    .restart local v4       #buff1:[B
    .restart local v5       #buff2:[B
    .restart local v6       #dis1:Ljava/io/DataInputStream;
    .restart local v7       #dis2:Ljava/io/DataInputStream;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public compare()Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    const-string v0, "NOERROR"

    .line 432
    .local v0, answer:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->loadNetworkInfo()I

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const-string v2, "CscVoiceMail"

    const-string v3, "no network / voicemail info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 441
    .end local v0           #answer:Ljava/lang/String;
    .local v1, answer:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 439
    .end local v1           #answer:Ljava/lang/String;
    .restart local v0       #answer:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->compareVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 441
    .end local v0           #answer:Ljava/lang/String;
    .restart local v1       #answer:Ljava/lang/String;
    goto :goto_0
.end method

.method public compareVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "/data/misc/radio/voicemail-compare.xml"

    .line 363
    const-string v0, "/data/misc/radio/voicemail-compare.xml"

    invoke-virtual {p0, v2}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->makeVoiceMailConfXML(Ljava/lang/String;)V

    .line 365
    const-string v0, "/data/misc/radio/voicemail-conf.xml"

    const-string v1, "/data/misc/radio/voicemail-compare.xml"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->checkSameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "NOERROR"

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Settings.Messages.Voicemail.TelNum"

    goto :goto_0
.end method

.method public makeVoiceMailConfXML(Ljava/lang/String;)V
    .locals 19
    .parameter "voiceMailXMLPath"

    .prologue
    .line 215
    const-string v16, "CscVoiceMail"

    const-string v17, "makeVoiceMailConfXML"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/io/File;

    const-string v16, "/data/misc/radio"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, CscDirectory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v16

    if-nez v16, :cond_0

    .line 220
    const-string v16, "CscVoiceMail"

    const-string v17, "Cannot mkdir : /data/misc/radio"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, fileVoiceMailConf:Ljava/io/File;
    const/4 v10, 0x0

    .line 225
    .local v10, out:Ljava/io/OutputStream;
    const-string v15, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 227
    .local v15, writeBuffer:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<voicemail>\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 229
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mMccMnc:Ljava/lang/String;

    move-object v8, v0

    .line 232
    .local v8, mccmnc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mName:Ljava/lang/String;

    move-object v4, v0

    .line 233
    .local v4, carrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailNumber:Ljava/lang/String;

    move-object v14, v0

    .line 234
    .local v14, voiceMailNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailName:Ljava/lang/String;

    move-object v13, v0

    .line 236
    .local v13, voiceMailName:Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string v16, ""

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mDefaultNumber:Ljava/lang/String;

    move-object v14, v0

    .line 239
    :cond_2
    if-nez v13, :cond_3

    .line 240
    const-string v13, ""

    .line 242
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<voicemail carrier=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"    numeric=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"    vmnumber=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"    vmtag=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\"    />\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 245
    .end local v4           #carrier:Ljava/lang/String;
    .end local v8           #mccmnc:Ljava/lang/String;
    .end local v13           #voiceMailName:Ljava/lang/String;
    .end local v14           #voiceMailNum:Ljava/lang/String;
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</voicemail>\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 247
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v12, v0

    .line 248
    .local v12, utf8header:[B
    const/16 v16, 0x0

    const/16 v17, -0x11

    aput-byte v17, v12, v16

    .line 249
    const/16 v16, 0x1

    const/16 v17, -0x45

    aput-byte v17, v12, v16

    .line 250
    const/16 v16, 0x2

    const/16 v17, -0x41

    aput-byte v17, v12, v16

    .line 252
    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v3, v16, v17

    .line 253
    .local v3, bufferCapacity:I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 255
    .local v9, newByteBuffer:Ljava/nio/ByteBuffer;
    const-string v16, "CscVoiceMail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Capa : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / byte Size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 263
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 264
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    .end local v10           #out:Ljava/io/OutputStream;
    .local v11, out:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 292
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    move-object v10, v11

    .line 297
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 265
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 266
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 272
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    .line 274
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 281
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v16

    move-object/from16 v5, v16

    .line 282
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 293
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v5

    .line 294
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v16

    move-object/from16 v5, v16

    .line 289
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 293
    :catch_5
    move-exception v5

    .line 294
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 292
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 295
    :goto_3
    throw v16

    .line 293
    :catch_6
    move-exception v5

    .line 294
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public setVoicemailUI(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const-string v2, "vm_number_key"

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, context:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->ct:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 416
    const-string v2, "com.android.phone_preferences"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->sPrefs:Landroid/content/SharedPreferences;

    .line 417
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 418
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    :cond_0
    const-string v2, "vm_number_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 421
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v2, "vm_number_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public update()V
    .locals 6

    .prologue
    const-string v5, "CscVoiceMail"

    .line 377
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->loadNetworkInfo()I

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const-string v3, "CscVoiceMail"

    const-string v3, "no network / voicemail info"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->setVoicemailUI(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v3, "/data/misc/radio/voicemail-conf.xml"

    invoke-virtual {p0, v3}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->makeVoiceMailConfXML(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mDefaultNumber:Ljava/lang/String;

    .line 389
    .local v2, setVoiceMailNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, currentSimImsi:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 392
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;

    aget-object v3, v3, v1

    iget-object v2, v3, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 404
    .end local v1           #i:I
    :cond_1
    const-string v3, "CscVoiceMail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSimImsi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / setVoiceMailNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, v2}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;->setVoicemailUI(Ljava/lang/String;)V

    .line 408
    const-string v3, "CscVoiceMail"

    const-string v3, "VoiceMail setting DONE"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
