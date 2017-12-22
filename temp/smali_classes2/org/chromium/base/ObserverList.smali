.class public Lorg/chromium/base/ObserverList;
.super Ljava/lang/Object;
.source "ObserverList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCount:I

.field private mIterationDepth:I

.field private mNeedsCompact:Z

.field public final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ObserverList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/base/ObserverList;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->incrementIterationDepth()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/base/ObserverList;)I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->capacity()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/base/ObserverList;->getObserverAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/base/ObserverList;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->decrementIterationDepthAndCompactIfNeeded()V

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private compact()V
    .locals 2

    .prologue
    .line 158
    sget-boolean v0, Lorg/chromium/base/ObserverList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 160
    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    :cond_2
    return-void
.end method

.method private decrementIterationDepthAndCompactIfNeeded()V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    .line 172
    sget-boolean v0, Lorg/chromium/base/ObserverList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 173
    :cond_0
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-lez v0, :cond_2

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 176
    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->compact()V

    goto :goto_0
.end method

.method private getObserverAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private incrementIterationDepth()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    .line 168
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    sget-boolean v1, Lorg/chromium/base/ObserverList;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_2
    iget v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iput v1, p0, Lorg/chromium/base/ObserverList;->mCount:I

    .line 111
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 117
    iget-boolean v3, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 118
    :goto_1
    if-ge v1, v2, :cond_0

    .line 119
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public hasObserver(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ObserverList$ObserverListIterator;-><init>(Lorg/chromium/base/ObserverList;Lorg/chromium/base/ObserverList$1;)V

    return-object v0
.end method

.method public removeObserver(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v2, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 87
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 91
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    :goto_1
    iget v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    .line 99
    sget-boolean v0, Lorg/chromium/base/ObserverList;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_2
    iput-boolean v1, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 96
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ObserverList$ObserverListIterator;-><init>(Lorg/chromium/base/ObserverList;Lorg/chromium/base/ObserverList$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    return v0
.end method
