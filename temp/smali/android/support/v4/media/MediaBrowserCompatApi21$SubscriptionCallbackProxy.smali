.class Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    .line 129
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 140
    return-void
.end method
