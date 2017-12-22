.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "AvatarsGridActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    return-void
.end method


# virtual methods
.method public onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$102(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$300(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    goto :goto_0
.end method
