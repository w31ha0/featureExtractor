.class public Lcom/netflix/mediaclient/util/Triple;
.super Ljava/lang/Object;
.source "Triple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/netflix/mediaclient/util/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;TU;TV;)",
            "Lcom/netflix/mediaclient/util/Triple",
            "<TT;TU;TV;>;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/netflix/mediaclient/util/Triple;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/util/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/util/Triple;

    if-nez v2, :cond_3

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/util/Triple;

    .line 41
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 42
    iget-object v2, p1, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    iget-object v3, p1, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 49
    iget-object v2, p1, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    if-eqz v2, :cond_7

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    iget-object v3, p1, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_7
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    if-nez v2, :cond_8

    .line 56
    iget-object v2, p1, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    iget-object v3, p1, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 20
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 23
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 25
    return v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Triple;->second:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
