.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;
.super Ljava/lang/Object;
.source "ProfileSelectionActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$102(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$200(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)V

    .line 243
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$102(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 248
    return-void
.end method
