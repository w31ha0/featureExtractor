.class public final Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# direct methods
.method public static getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;
    .locals 3

    .prologue
    .line 50
    :try_start_0
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "MediaRouterJellybeanMr1"

    const-string/jumbo v2, "Cannot get presentation display for the route."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method
