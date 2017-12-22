.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onSelect()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 382
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
