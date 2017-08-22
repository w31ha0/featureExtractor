.class public Lcom/mobfox/sdk/nativeads/NativeEvent;
.super Ljava/lang/Object;
.source "NativeEvent.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventNative;


# instance fields
.field ad:Lcom/mobfox/sdk/nativeads/NativeAd;

.field c:Landroid/content/Context;

.field listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 27
    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventNativeListener;
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventNativeListener;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/Tracker;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "extraTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->c:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    .line 34
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no ad"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-interface {p2, p0, v0}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeReady(Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V

    goto :goto_0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 45
    if-eqz p1, :cond_1

    .line 46
    new-instance v0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/nativeads/NativeEvent$1;-><init>(Lcom/mobfox/sdk/nativeads/NativeEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "layout is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
