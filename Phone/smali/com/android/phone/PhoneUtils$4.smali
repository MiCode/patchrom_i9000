.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 25
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1781
    const-string v5, "query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v14, v0

    .line 1786
    .local v14, conn:Lcom/android/internal/telephony/Connection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1804
    :cond_0
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move v5, v0

    if-nez v5, :cond_1

    .line 1805
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1814
    :cond_1
    :goto_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 1815
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 1816
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v24

    .line 1817
    .local v24, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "limit"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1818
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1819
    .local v4, birthUri:Landroid/net/Uri;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1820
    .local v18, sb:Ljava/lang/StringBuilder;
    const-string v5, "contact_id= \'"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    const-string v5, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    const-string v5, "data2= 3"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1825
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "data1"

    aput-object v7, v5, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1826
    .local v15, cur:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1827
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1829
    :try_start_0
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1830
    .local v12, birthFormat:Ljava/text/SimpleDateFormat;
    const-string v5, "data1"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1831
    .local v23, strBirthday:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 1835
    .local v13, birthday:Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 1836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "birthday - Today : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "birthday - Birthday : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    .end local v12           #birthFormat:Ljava/text/SimpleDateFormat;
    .end local v13           #birthday:Ljava/util/Date;
    .end local v23           #strBirthday:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1845
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #birthUri:Landroid/net/Uri;
    .end local v15           #cur:Landroid/database/Cursor;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v24           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_3
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 1846
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 1847
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_6
    if-nez v5, :cond_6

    .line 1848
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1849
    .restart local v3       #cr:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()[Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id= \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v8, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\' AND sns_id IS NOT NULL"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1853
    .local v19, snsCursor:Landroid/database/Cursor;
    if-eqz v19, :cond_6

    .line 1854
    const/16 v22, 0x0

    .line 1855
    .local v22, sp:I
    const/16 v21, 0x0

    .line 1856
    .local v21, sns_id:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1857
    const-string v5, "sp"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1858
    const-string v5, "sns_id"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns info: Service Provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Friend ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1861
    const-string v5, "content://com.sec.android.app.provider.sns"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1862
    .local v11, SNS_BASE:Landroid/net/Uri;
    const-string v5, "status"

    invoke-static {v11, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1863
    .local v6, uri:Landroid/net/Uri;
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1864
    move-object v0, v6

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1866
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "status_status"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1867
    .local v20, snsStatusCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_5

    .line 1868
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1869
    move/from16 v0, v22

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 1870
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 1871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns Info: snsAccountType = "

    .end local v6           #uri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", snsStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1873
    :cond_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1876
    .end local v11           #SNS_BASE:Landroid/net/Uri;
    .end local v20           #snsStatusCursor:Landroid/database/Cursor;
    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1879
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v19           #snsCursor:Landroid/database/Cursor;
    .end local v21           #sns_id:Ljava/lang/String;
    .end local v22           #sp:I
    :cond_6
    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1880
    return-void

    .line 1808
    :cond_7
    const/4 v5, 0x0

    invoke-static {v5, v14}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v17

    .line 1809
    .local v17, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v17, :cond_1

    .line 1810
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1811
    move-object/from16 p3, v17

    goto/16 :goto_0

    .line 1838
    .end local v17           #newCi:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v4       #birthUri:Landroid/net/Uri;
    .restart local v15       #cur:Landroid/database/Cursor;
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    .restart local v24       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 1839
    .local v16, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-string v5, "birthday - DateParseException"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
