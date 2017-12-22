.class public Lcom/ibm/icu/impl/number/ModifierHolder;
.super Ljava/lang/Object;
.source "ModifierHolder.java"


# instance fields
.field private mods:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/ibm/icu/impl/number/Modifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Modifier;

    .line 79
    add-int v2, p3, v1

    invoke-interface {v0, p1, p2, v2}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return v1
.end method

.method public applyStrong(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/Modifier;->isStrong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Modifier;

    .line 88
    add-int v2, p3, v1

    invoke-interface {v0, p1, p2, v2}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return v1
.end method

.method public clear()Lcom/ibm/icu/impl/number/ModifierHolder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 27
    return-object p0
.end method

.method public totalLength()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/ibm/icu/impl/number/ModifierHolder;->mods:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Modifier;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/ibm/icu/impl/number/Modifier;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return v1
.end method
