.class public Lcom/netflix/mediaclient/util/SortedListUtil;
.super Ljava/util/ArrayList;
.source "SortedListUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public insertSorted(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/SortedListUtil;->add(Ljava/lang/Object;)Z

    .line 28
    check-cast p1, Ljava/lang/Comparable;

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/SortedListUtil;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/util/SortedListUtil;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 30
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
