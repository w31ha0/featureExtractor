.class public interface abstract Lcom/mobfox/sdk/customevents/CustomEventNative;
.super Ljava/lang/Object;
.source "CustomEventNative.java"


# virtual methods
.method public abstract load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
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
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;)V
.end method
