.class Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;
.super Ljava/lang/Object;
.source "FileSystemDataRepositoryImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/mediaclient/util/data/DataRepository$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;->this$0:Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)I
    .locals 4

    .prologue
    .line 360
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getTs()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getTs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getTs()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getTs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 363
    const/4 v0, -0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 357
    check-cast p1, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    check-cast p2, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;->compare(Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)I

    move-result v0

    return v0
.end method
