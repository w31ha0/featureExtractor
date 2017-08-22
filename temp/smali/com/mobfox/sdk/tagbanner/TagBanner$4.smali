.class Lcom/mobfox/sdk/tagbanner/TagBanner$4;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field final synthetic val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Landroid/content/Context;Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$4;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iput-object p3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$4;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0, p2}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$4;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v0, v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    iget-object v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$4;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;->onBannerLoaded(Landroid/view/View;)V

    .line 165
    return-void
.end method
