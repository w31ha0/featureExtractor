.class Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;
.super Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;",
        ">",
        "Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybean$Callback;)V

    .line 179
    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;->mCallback:Landroid/support/v7/media/MediaRouterJellybean$Callback;

    check-cast v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;

    invoke-interface {v0, p2}, Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;->onRoutePresentationDisplayChanged(Ljava/lang/Object;)V

    .line 185
    return-void
.end method
