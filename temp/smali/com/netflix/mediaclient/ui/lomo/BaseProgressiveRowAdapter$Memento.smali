.class Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;
.super Ljava/lang/Object;
.source "BaseProgressiveRowAdapter.java"


# instance fields
.field final adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

.field final currDataIndex:I

.field final hasMoreData:Z

.field final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ZILcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            "ZI",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    .line 42
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->hasMoreData:Z

    .line 43
    iput p3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->currDataIndex:I

    .line 44
    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lomo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "no lomo"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasMoreData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->hasMoreData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currDataIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->currDataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
