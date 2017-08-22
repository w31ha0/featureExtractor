.class public interface abstract Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;
.super Ljava/lang/Object;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBannerClicked(Landroid/view/View;)V
.end method

.method public abstract onBannerClosed(Landroid/view/View;)V
.end method

.method public abstract onBannerError(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract onBannerFinished()V
.end method

.method public abstract onBannerLoaded(Landroid/view/View;)V
.end method

.method public abstract onNoFill(Landroid/view/View;)V
.end method
