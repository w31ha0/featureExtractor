.class Lcom/novel/reader/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/DownloadActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/DownloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/DownloadActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/novel/reader/DownloadActivity$1;->this$0:Lcom/novel/reader/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 116
    new-instance v0, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;

    iget-object v1, p0, Lcom/novel/reader/DownloadActivity$1;->this$0:Lcom/novel/reader/DownloadActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;-><init>(Lcom/novel/reader/DownloadActivity;Lcom/novel/reader/DownloadActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/DownloadActivity$DownloadToDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method
