.class Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;
.super Ljava/lang/Object;
.source "SearchQueryDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$102(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    .line 197
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$102(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 202
    return-void
.end method
