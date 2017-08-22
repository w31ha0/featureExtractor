.class Lcom/novel/reader/MainActivity$BackupInfoTask$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity$BackupInfoTask;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/MainActivity$BackupInfoTask;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity$BackupInfoTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/MainActivity$BackupInfoTask;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask$3;->this$1:Lcom/novel/reader/MainActivity$BackupInfoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 917
    new-instance v0, Lcom/novel/reader/MainActivity$RestoreTask;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$BackupInfoTask$3;->this$1:Lcom/novel/reader/MainActivity$BackupInfoTask;

    iget-object v1, v1, Lcom/novel/reader/MainActivity$BackupInfoTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {v0, v1}, Lcom/novel/reader/MainActivity$RestoreTask;-><init>(Lcom/novel/reader/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/MainActivity$RestoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 918
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 919
    return-void
.end method
