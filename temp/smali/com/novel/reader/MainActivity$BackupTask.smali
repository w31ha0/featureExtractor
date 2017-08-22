.class public Lcom/novel/reader/MainActivity$BackupTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupTask"
.end annotation


# instance fields
.field private final cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private progressdialogInit:Landroid/app/ProgressDialog;

.field private result:Z

.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->result:Z

    .line 821
    new-instance v0, Lcom/novel/reader/MainActivity$BackupTask$1;

    invoke-direct {v0, p0}, Lcom/novel/reader/MainActivity$BackupTask$1;-><init>(Lcom/novel/reader/MainActivity$BackupTask;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$700(Lcom/novel/reader/MainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->BackupToServer(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->result:Z

    .line 841
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->result:Z

    if-nez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 857
    :goto_1
    return-void

    .line 855
    :cond_1
    new-instance v0, Lcom/novel/reader/MainActivity$BackupInfoTask;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/MainActivity$BackupInfoTask;-><init>(Lcom/novel/reader/MainActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/MainActivity$BackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 849
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->this$0:Lcom/novel/reader/MainActivity;

    const-string v1, "Load"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    .line 829
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Load"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Loading\u2026"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 832
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 833
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 834
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 835
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 836
    return-void
.end method
