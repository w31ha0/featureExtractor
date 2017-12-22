.class Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;
.super Ljava/lang/Object;
.source "BillboardAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;J)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->val$requestId:J

    return-wide v0
.end method

.method public onErrorResponse()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->setLoadingData(Z)V

    .line 61
    return-void
.end method

.method public onNoVideosInResponse()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->setLoadingData(Z)V

    .line 56
    return-void
.end method

.method public updateDataSet(Ljava/util/List;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->setLoadingData(Z)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->addVideos(Ljava/util/List;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
