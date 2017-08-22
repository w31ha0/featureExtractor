.class public Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckUpdateInfoTask"
.end annotation


# instance fields
.field private final cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field device_version:I

.field info:Lcom/novel/reader/MainActivity$UpdateInfo;

.field needUpdate:Z

.field private progressdialogInit:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->needUpdate:Z

    .line 652
    new-instance v0, Lcom/novel/reader/MainActivity$UpdateInfo;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {v0, v1}, Lcom/novel/reader/MainActivity$UpdateInfo;-><init>(Lcom/novel/reader/MainActivity;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    .line 655
    new-instance v0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask$1;

    invoke-direct {v0, p0}, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask$1;-><init>(Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$800(Lcom/novel/reader/MainActivity;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->device_version:I

    .line 675
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getNewestVersionAndLink(Lcom/novel/reader/MainActivity$UpdateInfo;)V

    .line 676
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    iget v2, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->device_version:I

    invoke-static {v0, v1, v2}, Lcom/novel/reader/MainActivity;->access$900(Lcom/novel/reader/MainActivity;Lcom/novel/reader/MainActivity$UpdateInfo;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->needUpdate:Z

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->needUpdate:Z

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget v1, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->device_version:I

    iget-object v2, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    invoke-static {v0, v1, v2}, Lcom/novel/reader/MainActivity;->access$1000(Lcom/novel/reader/MainActivity;ILcom/novel/reader/MainActivity$UpdateInfo;)V

    .line 693
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$1100(Lcom/novel/reader/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    const-string v1, "Load"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    .line 663
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Load"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Loading\u2026"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 666
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 667
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 668
    iget-object v0, p0, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 669
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 670
    return-void
.end method
