.class final Lorg/acra/ErrorReporter$ReportsSenderWorker;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportsSenderWorker"
.end annotation


# instance fields
.field private mApprovePendingReports:Z

.field private mCommentedReportFileName:Ljava/lang/String;

.field private mSendOnlySilentReports:Z

.field private mUserComment:Ljava/lang/String;

.field private mUserEmail:Ljava/lang/String;

.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserComment:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserEmail:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mSendOnlySilentReports:Z

    .line 109
    iput-boolean v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mApprovePendingReports:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/acra/ErrorReporter;Z)V
    .locals 2
    .param p2, "sendOnlySilentReports"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserComment:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserEmail:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mSendOnlySilentReports:Z

    .line 109
    iput-boolean v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mApprovePendingReports:Z

    .line 119
    iput-boolean p2, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mSendOnlySilentReports:Z

    .line 120
    return-void
.end method

.method private acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 155
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const-string v5, "android.permission.WAKE_LOCK"

    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v0, v4

    .line 156
    .local v0, "hasPermission":Z
    :cond_0
    if-nez v0, :cond_1

    .line 157
    const/4 v3, 0x0

    .line 163
    :goto_0
    return-object v3

    .line 160
    :cond_1
    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 161
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string v5, "ACRA wakelock"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 162
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 137
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-boolean v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mApprovePendingReports:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lorg/acra/ErrorReporter;

    invoke-virtual {v1}, Lorg/acra/ErrorReporter;->approvePendingReports()V

    .line 139
    iget-object v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    const-string v2, ".stacktrace"

    const-string v3, "-approved.stacktrace"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    .line 141
    :cond_0
    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    iget-object v3, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserComment:Ljava/lang/String;

    iget-object v4, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserEmail:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/acra/ErrorReporter;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mSendOnlySilentReports:Z

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->checkAndSendReports(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 148
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v1
.end method

.method public setApprovePendingReports()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mApprovePendingReports:Z

    .line 197
    return-void
.end method

.method setUserComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "userComment"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserComment:Ljava/lang/String;

    .line 177
    return-void
.end method

.method setUserEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mCommentedReportFileName:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lorg/acra/ErrorReporter$ReportsSenderWorker;->mUserEmail:Ljava/lang/String;

    .line 190
    return-void
.end method
