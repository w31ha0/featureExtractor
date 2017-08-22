.class Lcom/novel/reader/ArticleActivity$2;
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
    .line 263
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$100(Lcom/novel/reader/ArticleActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YearSubscription"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$200(Lcom/novel/reader/ArticleActivity;)V

    .line 268
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/novel/reader/ArticleActivity;->access$302(Lcom/novel/reader/ArticleActivity;Z)Z

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity$2;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v0}, Lcom/novel/reader/ArticleActivity;->access$500(Lcom/novel/reader/ArticleActivity;)V

    .line 271
    return-void
.end method
