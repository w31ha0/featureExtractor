.class Lcom/novel/reader/ArticleActivity$3;
.super Ljava/lang/Object;
.source "ArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/ArticleActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$3;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$3;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kosbrother/tool/DetectScrollView;->getHeight()I

    move-result v0

    .line 280
    .local v0, "kk":I
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$3;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 281
    .local v1, "tt":I
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity$3;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2}, Lcom/novel/reader/ArticleActivity;->access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity$3;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v4}, Lcom/novel/reader/ArticleActivity;->access$800(Lcom/novel/reader/ArticleActivity;)I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v3, v4}, Lcom/kosbrother/tool/DetectScrollView;->scrollTo(II)V

    .line 282
    return-void
.end method
