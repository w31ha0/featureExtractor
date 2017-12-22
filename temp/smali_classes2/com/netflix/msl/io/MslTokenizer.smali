.class public abstract Lcom/netflix/msl/io/MslTokenizer;
.super Ljava/lang/Object;
.source "MslTokenizer.java"


# instance fields
.field private aborted:Z

.field private next:Lcom/netflix/msl/io/MslObject;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/io/MslTokenizer;->aborted:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    .line 31
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/MslTokenizer;->aborted:Z

    .line 38
    return-void
.end method

.method public more(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    iget-boolean v2, p0, Lcom/netflix/msl/io/MslTokenizer;->aborted:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslTokenizer;->nextObject(I)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    .line 54
    iget-object v2, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract next(I)Lcom/netflix/msl/io/MslObject;
.end method

.method public nextObject(I)Lcom/netflix/msl/io/MslObject;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-boolean v1, p0, Lcom/netflix/msl/io/MslTokenizer;->aborted:Z

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    .line 88
    iput-object v0, p0, Lcom/netflix/msl/io/MslTokenizer;->next:Lcom/netflix/msl/io/MslObject;

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/msl/io/MslTokenizer;->next(I)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    goto :goto_0
.end method
