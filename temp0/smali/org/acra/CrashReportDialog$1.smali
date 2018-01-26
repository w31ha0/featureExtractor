.class Lorg/acra/CrashReportDialog$1;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/CrashReportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 134
    .local v0, "err":Lorg/acra/ErrorReporter;
    new-instance v4, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;)V

    .line 135
    .local v4, "worker":Lorg/acra/ErrorReporter$ReportsSenderWorker;
    invoke-virtual {v4}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->setApprovePendingReports()V

    .line 138
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v5}, Lorg/acra/CrashReportDialog;->access$000(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    iget-object v5, v5, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    iget-object v6, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v6}, Lorg/acra/CrashReportDialog;->access$000(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->setUserComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v5}, Lorg/acra/CrashReportDialog;->access$100(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v5}, Lorg/acra/CrashReportDialog;->access$200(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 144
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v5}, Lorg/acra/CrashReportDialog;->access$200(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "usrEmail":Ljava/lang/String;
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-static {v5}, Lorg/acra/CrashReportDialog;->access$100(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "acra.user.email"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    iget-object v5, v5, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->setUserEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "usrEmail":Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "About to start ReportSenderWorker from CrashReportDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v4}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 156
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v5

    invoke-interface {v5}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v2

    .line 157
    .local v2, "toastId":I
    if-eqz v2, :cond_2

    .line 158
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-virtual {v5}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_2
    iget-object v5, p0, Lorg/acra/CrashReportDialog$1;->this$0:Lorg/acra/CrashReportDialog;

    invoke-virtual {v5}, Lorg/acra/CrashReportDialog;->finish()V

    .line 161
    return-void
.end method
