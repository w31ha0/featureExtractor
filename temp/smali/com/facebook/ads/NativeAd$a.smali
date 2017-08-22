.class Lcom/facebook/ads/NativeAd$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAd;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAd$a;-><init>(Lcom/facebook/ads/NativeAd;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/af;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->p(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->h(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/util/af;->c()J

    move-result-wide v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/af;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "Ad cannot be clicked before it is viewed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "Clicks happened too fast."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/facebook/ads/AdChoicesView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->p(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/h;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/af;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "Clicks are too close to the border of the view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/util/af;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "nti"

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdView$Type;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->l(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "nhs"

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->l(Lcom/facebook/ads/NativeAd;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    iget-object v1, v1, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/v;->b(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->j(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/facebook/ads/internal/util/af;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->q(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->q(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
