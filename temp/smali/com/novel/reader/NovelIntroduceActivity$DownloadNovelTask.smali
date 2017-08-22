.class Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;
.super Landroid/os/AsyncTask;
.source "NovelIntroduceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/NovelIntroduceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadNovelTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/NovelIntroduceActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/NovelIntroduceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;
    .param p2, "x1"    # Lcom/novel/reader/NovelIntroduceActivity$1;

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$1300(Lcom/novel/reader/NovelIntroduceActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1, v2}, Lcom/novel/reader/api/NovelAPI;->getNovel(ILandroid/content/Context;)Lcom/novel/reader/entity/Novel;

    move-result-object v0

    .line 466
    .local v0, "getNovel":Lcom/novel/reader/entity/Novel;
    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1, v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$502(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/entity/Novel;)Lcom/novel/reader/entity/Novel;

    .line 469
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1600(Lcom/novel/reader/NovelIntroduceActivity;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$900(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 481
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$802(Lcom/novel/reader/NovelIntroduceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 483
    return-void
.end method
