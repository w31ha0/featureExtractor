.class Lcom/mobfox/sdk/tagbanner/TagBanner$5;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->reportError(Lcom/mobfox/sdk/tagbanner/TagBanner;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field final synthetic val$adapter:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iput-object p3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$reason:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$adapter:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0, p2}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$reason:Ljava/lang/String;

    const-string v1, "No Ad Available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v0, v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    iget-object v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$adapter:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;->onNoFill(Landroid/view/View;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v0, v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    iget-object v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$adapter:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$5;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;->onBannerError(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
