.class public final Lk;
.super Ljava/lang/Object;

# interfaces
.implements Lo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "Could not get the JS to evaluate."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p3, Lb;

    if-eqz v0, :cond_1

    check-cast p3, Lb;

    invoke-virtual {p3}, Lb;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->b()Lb;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p0}, Lg;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
