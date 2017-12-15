.class public final Lcom/creativemobi/engine/cg;
.super Ljava/lang/Object;
.source "CarSetting.java"


# instance fields
.field a:I

.field b:I

.field c:Ljava/util/ArrayList;

.field d:F

.field e:[F

.field f:I

.field g:F

.field h:F

.field i:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    .line 12
    iput v1, p0, Lcom/creativemobi/engine/cg;->d:F

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cg;->f:I

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cg;->g:F

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cg;->h:F

    .line 17
    iput v1, p0, Lcom/creativemobi/engine/cg;->i:F

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    .line 12
    iput v1, p0, Lcom/creativemobi/engine/cg;->d:F

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cg;->f:I

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cg;->g:F

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cg;->h:F

    .line 17
    iput v1, p0, Lcom/creativemobi/engine/cg;->i:F

    .line 44
    iput p1, p0, Lcom/creativemobi/engine/cg;->a:I

    .line 45
    iput-object p2, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # NaNf

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    .line 12
    iput v1, p0, Lcom/creativemobi/engine/cg;->d:F

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    .line 14
    iput v2, p0, Lcom/creativemobi/engine/cg;->f:I

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cg;->g:F

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cg;->h:F

    .line 17
    iput v1, p0, Lcom/creativemobi/engine/cg;->i:F

    .line 64
    iput p1, p0, Lcom/creativemobi/engine/cg;->a:I

    move v0, v2

    .line 65
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    aget v3, p2, v0

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/creativemobi/engine/cg;
    .locals 6

    .prologue
    .line 20
    new-instance v1, Lcom/creativemobi/engine/cg;

    invoke-direct {v1}, Lcom/creativemobi/engine/cg;-><init>()V

    .line 21
    iget v0, p0, Lcom/creativemobi/engine/cg;->a:I

    iput v0, v1, Lcom/creativemobi/engine/cg;->a:I

    .line 22
    iget v0, p0, Lcom/creativemobi/engine/cg;->b:I

    iput v0, v1, Lcom/creativemobi/engine/cg;->b:I

    .line 23
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 24
    iget-object v3, v1, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/cg;->g:F

    iput v0, v1, Lcom/creativemobi/engine/cg;->g:F

    .line 27
    iget v0, p0, Lcom/creativemobi/engine/cg;->h:F

    iput v0, v1, Lcom/creativemobi/engine/cg;->h:F

    .line 28
    iget v0, p0, Lcom/creativemobi/engine/cg;->i:F

    iput v0, v1, Lcom/creativemobi/engine/cg;->i:F

    .line 30
    iget v0, p0, Lcom/creativemobi/engine/cg;->d:F

    iput v0, v1, Lcom/creativemobi/engine/cg;->d:F

    .line 31
    iget v0, p0, Lcom/creativemobi/engine/cg;->f:I

    iput v0, v1, Lcom/creativemobi/engine/cg;->f:I

    .line 32
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/creativemobi/engine/cg;->e:[F

    .line 34
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/creativemobi/engine/cg;->e:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 35
    iget-object v2, v1, Lcom/creativemobi/engine/cg;->e:[F

    iget-object v3, p0, Lcom/creativemobi/engine/cg;->e:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_1
    return-object v1
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->d:F

    .line 98
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->f:I

    .line 99
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 100
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/creativemobi/engine/cg;->e:[F

    .line 101
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/creativemobi/engine/cg;->e:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lcom/creativemobi/engine/cg;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/cg;->a:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 108
    iget v0, p0, Lcom/creativemobi/engine/cg;->d:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 109
    iget v0, p0, Lcom/creativemobi/engine/cg;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 111
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->e:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/io/DataInputStream;)V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->g:F

    .line 126
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->h:F

    .line 127
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->i:F

    .line 128
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/creativemobi/engine/cg;->a:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 132
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 133
    iget-object v0, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    .line 134
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 135
    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public final b()[I
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 72
    iget-object v1, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    .line 73
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    aput v3, v0, v2

    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/io/DataInputStream;)V
    .locals 6

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/cg;->a:I

    .line 142
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    iget-object v2, p0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
