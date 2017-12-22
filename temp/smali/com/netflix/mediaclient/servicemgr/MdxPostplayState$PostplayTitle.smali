.class public Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;
.super Ljava/lang/Object;
.source "MdxPostplayState.java"


# instance fields
.field private mTitleId:I

.field private mTitleType:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->this$0:Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleId:I

    .line 26
    iput p2, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleId:I

    .line 27
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleType:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleId:I

    return v0
.end method

.method public isEpisode()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->mTitleType:Ljava/lang/String;

    const-string/jumbo v1, "episode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
