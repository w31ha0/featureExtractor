.class public Lcom/tutusw/phonespeedup/StresstestActivity;
.super Landroid/app/Activity;
.source "StresstestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;
    }
.end annotation


# instance fields
.field bench0:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench10:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench11:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench12:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench13:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench14:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench2:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench3:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench4:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench5:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench6:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench7:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench8:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field bench9:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

.field pd:Landroid/app/ProgressDialog;

.field run:Z

.field time:J

.field trigger:Z

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/StresstestActivity;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/StresstestActivity;->benchFail(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/StresstestActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/StresstestActivity;->benchSucceed()V

    return-void
.end method

.method private benchFail(I)V
    .locals 9
    .param p1, "t"    # I

    .prologue
    const-string v8, "\u3002\u5386\u65f6 "

    const-string v7, " \u6beb\u79d2"

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 70
    const-string v1, "Speedup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ebf\u7a0b\u8fd0\u7b97\u9519\u8bef "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3002\u5386\u65f6 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->time:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6beb\u79d2"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "\u5f3a\u6548\u538b\u529b\u6d4b\u8bd5\u5931\u8d25!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u505c\u6b62\uff1a\u7ebf\u7a0b\u8fd0\u7b97\u9519\u8bef "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3002\u5386\u65f6 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6beb\u79d2"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/StresstestActivity$2;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/StresstestActivity$2;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method

.method private benchSucceed()V
    .locals 9

    .prologue
    const-string v8, "\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5\u6301\u7eed\u4e86 "

    const-string v7, " \u6beb\u79d2\u6ca1\u6709\u51fa\u73b0\u9519\u8bef"

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 87
    const-string v1, "Speedup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5\u6301\u7eed\u4e86 "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->time:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6beb\u79d2\u6ca1\u6709\u51fa\u73b0\u9519\u8bef\u3002"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5\u6301\u7eed\u4e86 "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6beb\u79d2\u6ca1\u6709\u51fa\u73b0\u9519\u8bef\u3002"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/StresstestActivity$3;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/StresstestActivity$3;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 99
    return-void
.end method

.method private runBenchmark()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 44
    new-instance v5, Lcom/tutusw/phonespeedup/StresstestActivity$1;

    invoke-direct {v5, p0}, Lcom/tutusw/phonespeedup/StresstestActivity$1;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;)V

    .line 52
    .local v5, "listener":Landroid/content/DialogInterface$OnCancelListener;
    const-string v1, "\u6b63\u5728\u8fd0\u884c\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5..."

    const-string v2, "\u8bbe\u5907\u53ef\u80fd\u4f1a\u505c\u6b62\u54cd\u5e94\u3002\n\u6309\u3010\u8fd4\u56de\u3011\u952e\u7ed3\u675f\u6d4b\u8bd5\u3002\n\u6c49"

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->pd:Landroid/app/ProgressDialog;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->time:J

    .line 54
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 55
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench0:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 56
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-direct {v0, p0, v3}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 57
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench2:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 58
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench3:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 59
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench4:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 60
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench5:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 61
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench6:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 62
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench7:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 63
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench8:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 64
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench9:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 65
    new-instance v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->bench10:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity;->requestWindowFeature(I)Z

    .line 33
    const-string v1, "power"

    .line 32
    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "\u6211\u7684\u6807\u7b7e"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    .line 37
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/StresstestActivity;->runBenchmark()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 174
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/StresstestActivity;->finish()V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 165
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/StresstestActivity;->finish()V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 156
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/StresstestActivity;->finish()V

    .line 159
    return-void
.end method
