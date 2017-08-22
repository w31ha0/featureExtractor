.class public Lcom/novel/reader/MainActivity$BackupInfoTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupInfoTask"
.end annotation


# static fields
.field private static final BACKUP:I = 0x2

.field private static final BACKUP_FINISH:I = 0x3

.field private static final RESTORE:I = 0x1


# instance fields
.field private final cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private dialogCase:I

.field private progressdialogInit:Landroid/app/ProgressDialog;

.field private result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;
    .param p2, "dialogCase"    # I

    .prologue
    .line 863
    iput-object p1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    .line 864
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 873
    new-instance v0, Lcom/novel/reader/MainActivity$BackupInfoTask$1;

    invoke-direct {v0, p0}, Lcom/novel/reader/MainActivity$BackupInfoTask$1;-><init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 865
    iput p2, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->dialogCase:I

    .line 866
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v1}, Lcom/novel/reader/MainActivity;->access$700(Lcom/novel/reader/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->getUserBackupInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/novel/reader/api/NovelAPI$BackupInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f0700cf

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 901
    :try_start_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :cond_0
    :goto_0
    iget v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->dialogCase:I

    packed-switch v0, :pswitch_data_0

    .line 938
    :goto_1
    return-void

    .line 908
    :pswitch_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    iget-object v0, v0, Lcom/novel/reader/api/NovelAPI$BackupInfo;->collects:Ljava/lang/String;

    const-string/jumbo v1, "\u5c1a\u672a\u5099\u4efd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-virtual {v1, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    new-instance v3, Lcom/novel/reader/MainActivity$BackupInfoTask$2;

    invoke-direct {v3, p0}, Lcom/novel/reader/MainActivity$BackupInfoTask$2;-><init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/novel/reader/MainActivity;->access$1200(Lcom/novel/reader/MainActivity;Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-virtual {v1, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    new-instance v3, Lcom/novel/reader/MainActivity$BackupInfoTask$3;

    invoke-direct {v3, p0}, Lcom/novel/reader/MainActivity$BackupInfoTask$3;-><init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V

    invoke-static {v0, v1, v2, v3, v5}, Lcom/novel/reader/MainActivity;->access$1200(Lcom/novel/reader/MainActivity;Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1

    .line 923
    :pswitch_1
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    new-instance v3, Lcom/novel/reader/MainActivity$BackupInfoTask$4;

    invoke-direct {v3, p0}, Lcom/novel/reader/MainActivity$BackupInfoTask$4;-><init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V

    invoke-static {v0, v1, v2, v3, v5}, Lcom/novel/reader/MainActivity;->access$1200(Lcom/novel/reader/MainActivity;Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1

    .line 931
    :pswitch_2
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->result:Lcom/novel/reader/api/NovelAPI$BackupInfo;

    new-instance v3, Lcom/novel/reader/MainActivity$BackupInfoTask$5;

    invoke-direct {v3, p0}, Lcom/novel/reader/MainActivity$BackupInfoTask$5;-><init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/novel/reader/MainActivity;->access$1200(Lcom/novel/reader/MainActivity;Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    const-string v1, "Load"

    const-string v2, "Loading\u2026"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    .line 883
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Load"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const-string v1, "Loading\u2026"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 886
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 887
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 888
    iget-object v0, p0, Lcom/novel/reader/MainActivity$BackupInfoTask;->progressdialogInit:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 889
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 890
    return-void
.end method
