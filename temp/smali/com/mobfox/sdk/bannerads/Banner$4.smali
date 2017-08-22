.class Lcom/mobfox/sdk/bannerads/Banner$4;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/Banner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/Banner;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$4;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$4;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-boolean v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->hasLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$4;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$4;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$4;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/bannerads/Banner;->load(Ljava/lang/String;)V

    goto :goto_0
.end method
