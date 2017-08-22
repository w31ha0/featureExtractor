.class Lcom/novel/reader/ArticleActivity$GetLastPositionTask;
.super Landroid/os/AsyncTask;
.source "ArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/ArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastPositionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method private constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p2, "x1"    # Lcom/novel/reader/ArticleActivity$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;-><init>(Lcom/novel/reader/ArticleActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 741
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 743
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 745
    .local v0, "tt":I
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$2200(Lcom/novel/reader/ArticleActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 746
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$2000(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/kosbrother/tool/DetectScrollView;->scrollTo(II)V

    .line 755
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$2200(Lcom/novel/reader/ArticleActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "yPositon":Ljava/lang/String;
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$2000(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v3}, Lcom/novel/reader/ArticleActivity;->access$2200(Lcom/novel/reader/ArticleActivity;)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x64

    invoke-static {v2, v3}, Lcom/novel/reader/ArticleActivity;->access$802(Lcom/novel/reader/ArticleActivity;I)I

    .line 752
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$GetLastPositionTask;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v3}, Lcom/novel/reader/ArticleActivity;->access$800(Lcom/novel/reader/ArticleActivity;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/kosbrother/tool/DetectScrollView;->scrollTo(II)V

    goto :goto_0
.end method
