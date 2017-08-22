.class Lcom/mobfox/sdk/bannerads/EventIterator$1$3;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/EventIterator$1;->onBannerFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/bannerads/EventIterator$1;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$3;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1$3;->this$1:Lcom/mobfox/sdk/bannerads/EventIterator$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerFinished()V

    .line 128
    return-void
.end method
