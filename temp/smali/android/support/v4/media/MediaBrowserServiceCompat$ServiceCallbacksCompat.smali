.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;


# instance fields
.field final mCallbacks:Landroid/os/Messenger;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    .line 781
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 822
    iput p1, v0, Landroid/os/Message;->what:I

    .line 823
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 824
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 825
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 826
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 791
    if-nez p3, :cond_0

    .line 792
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 794
    :cond_0
    const-string/jumbo v0, "extra_service_version"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    const-string/jumbo v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v1, "data_media_session_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 798
    const-string/jumbo v1, "data_root_hints"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    invoke-direct {p0, v2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 800
    return-void
.end method

.method public onConnectFailed()V
    .locals 2

    .prologue
    .line 804
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 805
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 811
    const-string/jumbo v0, "data_media_item_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v0, "data_options"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 813
    if-eqz p2, :cond_0

    .line 814
    const-string/jumbo v2, "data_media_item_list"

    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 817
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 818
    return-void

    .line 814
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    goto :goto_0
.end method
