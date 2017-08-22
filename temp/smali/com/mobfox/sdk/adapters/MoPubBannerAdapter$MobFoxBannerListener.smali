.class Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;
.super Ljava/lang/Object;
.source "MoPubBannerAdapter.java"

# interfaces
.implements Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobFoxBannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;


# direct methods
.method private constructor <init>(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;
    .param p2, "x1"    # Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;-><init>(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;)V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 204
    const-string v0, "MobFoxAdapter"

    const-string v1, "MobFox MoPub Adapter >> clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 208
    :cond_0
    return-void
.end method

.method public onBannerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 191
    const-string v0, "MobFoxAdapter"

    const-string v1, "MobFox MoPub Adapter >> closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 195
    :cond_0
    return-void
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "banner"    # Landroid/view/View;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    const-string p2, "Error in tag banner "

    .line 163
    :cond_1
    const-string v0, "MobFoxAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobFox MoPub Adapter >> error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->access$100(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 165
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v1, v1, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPubBannerAdapter"

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    return-void
.end method

.method public onBannerFinished()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "MobFoxAdapter"

    const-string v1, "MobFox MoPub Adapter >> finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 7
    .param p1, "bannerView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 170
    const-string v2, "MobFoxAdapter"

    const-string v3, "MobFox MoPub Adapter >> loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v2, v2, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 181
    .local v0, "match":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v2, v2, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v2, v2, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v2, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v2, v2, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v3, v3, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    sget-object v4, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v4}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MoPubBannerAdapter"

    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v6, v6, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onNoFill(Landroid/view/View;)V
    .locals 5
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 212
    const-string v0, "MobFoxAdapter"

    const-string v1, "MobFox MoPub Adapter >> no fill"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->access$100(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 214
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v1, v1, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->NO_FILL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPubBannerAdapter"

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;->this$0:Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
