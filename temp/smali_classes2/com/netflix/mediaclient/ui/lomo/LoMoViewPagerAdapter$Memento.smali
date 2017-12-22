.class Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;
.super Ljava/lang/Object;
.source "LoMoViewPagerAdapter.java"


# instance fields
.field final adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

.field final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

.field final preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field final state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Lcom/netflix/mediaclient/ui/lomo/RowAdapter;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->preErrorState:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 70
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    .line 71
    invoke-interface {p4}, Lcom/netflix/mediaclient/ui/lomo/RowAdapter;->saveToMemento()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    .line 72
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lomo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->state:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
