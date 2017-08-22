.class public Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppOpenCheckUpdateTask"
.end annotation


# instance fields
.field device_version:I

.field info:Lcom/novel/reader/MainActivity$UpdateInfo;

.field needUpdate:Z

.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->needUpdate:Z

    .line 700
    new-instance v0, Lcom/novel/reader/MainActivity$UpdateInfo;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {v0, v1}, Lcom/novel/reader/MainActivity$UpdateInfo;-><init>(Lcom/novel/reader/MainActivity;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$800(Lcom/novel/reader/MainActivity;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->device_version:I

    .line 706
    iget-object v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->getNewestVersionAndLink(Lcom/novel/reader/MainActivity$UpdateInfo;)V

    .line 707
    iget-object v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->this$0:Lcom/novel/reader/MainActivity;

    iget-object v1, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    iget v2, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->device_version:I

    invoke-static {v0, v1, v2}, Lcom/novel/reader/MainActivity;->access$900(Lcom/novel/reader/MainActivity;Lcom/novel/reader/MainActivity$UpdateInfo;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->needUpdate:Z

    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 714
    :try_start_0
    iget-boolean v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->needUpdate:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->this$0:Lcom/novel/reader/MainActivity;

    iget v1, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->device_version:I

    iget-object v2, p0, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->info:Lcom/novel/reader/MainActivity$UpdateInfo;

    invoke-static {v0, v1, v2}, Lcom/novel/reader/MainActivity;->access$1000(Lcom/novel/reader/MainActivity;ILcom/novel/reader/MainActivity$UpdateInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    goto :goto_0
.end method
