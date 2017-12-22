.class final Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;
.super Ljava/lang/Object;
.source "RowAdapter.java"


# instance fields
.field private final oldVideoContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final oldVideoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoIds:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoContents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getContent(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getId(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method save()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    .line 69
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoIds:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoContents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->oldVideoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
