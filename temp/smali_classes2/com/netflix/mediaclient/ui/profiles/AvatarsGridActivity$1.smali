.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;
.super Ljava/lang/Object;
.source "AvatarsGridActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 125
    const-string/jumbo v0, "AvatarsGridActivity"

    const-string/jumbo v1, "Manager is here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$002(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$300(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "AvatarsGridActivity"

    const-string/jumbo v1, "Manager isn\'t available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$002(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    .line 141
    return-void
.end method
