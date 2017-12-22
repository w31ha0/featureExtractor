.class Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;
.super Ljava/lang/Object;
.source "OfflineVideosAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->access$002(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;Z)Z

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;)V

    .line 102
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
