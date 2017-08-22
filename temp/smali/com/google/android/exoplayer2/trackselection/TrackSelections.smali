.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelections;
.super Ljava/lang/Object;
.source "TrackSelections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field public final info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final length:I

.field private final trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 1
    .param p2, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    .local p1, "info":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->info:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 46
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->length:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    if-ne p0, p1, :cond_0

    .line 79
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    .line 85
    .local v0, "other":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<*>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelections;, "Lcom/google/android/exoplayer2/trackselection/TrackSelections<TT;>;"
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->hashCode:I

    if-nez v1, :cond_0

    .line 69
    const/16 v0, 0x11

    .line 70
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->hashCode:I

    .line 73
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelections;->hashCode:I

    return v1
.end method
