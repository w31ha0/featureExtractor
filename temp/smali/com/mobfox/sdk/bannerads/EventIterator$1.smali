.class Lcom/mobfox/sdk/bannerads/EventIterator$1;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/EventIterator;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/EventIterator;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/sdk/bannerads/EventIterator$1$4;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public onBannerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/bannerads/EventIterator$1$2;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/sdk/bannerads/EventIterator$1$2;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mobfox/sdk/bannerads/EventIterator$1$5;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public onBannerFinished()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/bannerads/EventIterator$1$3;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/bannerads/EventIterator$1$3;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 3
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/bannerads/EventIterator$1$1;

    invoke-direct {v2, p0, p1}, Lcom/mobfox/sdk/bannerads/EventIterator$1$1;-><init>(Lcom/mobfox/sdk/bannerads/EventIterator$1;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->pixel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/EventIterator;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/EventIterator$1;->this$0:Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/EventIterator;->pixel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .local v0, "firePixel":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 109
    .end local v0    # "firePixel":Lcom/mobfox/sdk/networking/MobFoxRequest;
    :cond_0
    return-void
.end method
