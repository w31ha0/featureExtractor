.class public Lcom/wordloco/wordchallenge/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[[Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wordloco/wordchallenge/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/wordloco/wordchallenge/c/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(IIIILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/wordloco/wordchallenge/c/c;->c:I

    .line 36
    iput p1, p0, Lcom/wordloco/wordchallenge/c/c;->d:I

    .line 37
    iput p3, p0, Lcom/wordloco/wordchallenge/c/c;->e:I

    .line 38
    iput p4, p0, Lcom/wordloco/wordchallenge/c/c;->f:I

    .line 39
    new-instance v0, Lcom/wordloco/wordchallenge/c/h;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/wordloco/wordchallenge/c/h;-><init>(IIILandroid/content/Context;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    .line 40
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->a:[Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->g:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->d()[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lcom/wordloco/wordchallenge/c/h;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    return-object v0
.end method

.method public a(IIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 48
    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    if-eq p1, p3, :cond_0

    .line 49
    if-ne p2, p4, :cond_1

    .line 50
    :cond_0
    if-ne p1, p3, :cond_4

    if-ge p2, p4, :cond_4

    move v1, p2

    .line 51
    :goto_0
    if-le v1, p4, :cond_3

    .line 100
    :cond_1
    if-ne p1, p3, :cond_2

    if-ne p2, p4, :cond_2

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_2
    return-object v0

    .line 52
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 54
    :cond_4
    if-ne p1, p3, :cond_5

    if-le p2, p4, :cond_5

    move v1, p2

    .line 55
    :goto_1
    if-lt v1, p4, :cond_1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 58
    :cond_5
    if-ge p1, p3, :cond_6

    if-ne p2, p4, :cond_6

    move v1, p1

    .line 59
    :goto_2
    if-gt v1, p3, :cond_1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2

    .line 62
    :cond_6
    if-le p1, p3, :cond_7

    if-ne p2, p4, :cond_7

    move v1, p1

    .line 63
    :goto_3
    if-lt v1, p3, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 66
    :cond_7
    if-ge p1, p3, :cond_8

    if-ge p2, p4, :cond_8

    move v1, p1

    .line 67
    :goto_4
    if-gt v1, p3, :cond_1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_4

    .line 72
    :cond_8
    if-le p1, p3, :cond_9

    if-le p2, p4, :cond_9

    move v1, p1

    .line 73
    :goto_5
    if-lt v1, p3, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    add-int/lit8 p2, p2, -0x1

    .line 73
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_5

    .line 78
    :cond_9
    if-ge p1, p3, :cond_a

    if-le p2, p4, :cond_a

    move v1, p1

    .line 79
    :goto_6
    if-gt v1, p3, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, p2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    .line 85
    :cond_a
    if-le p1, p3, :cond_1

    if-ge p2, p4, :cond_1

    move v1, p2

    .line 86
    :goto_7
    if-gt v1, p4, :cond_1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_7
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/wordloco/wordchallenge/c/c;->c:I

    .line 136
    return-void
.end method

.method public a(Lcom/wordloco/wordchallenge/c/h;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/c;->h:Lcom/wordloco/wordchallenge/c/h;

    .line 31
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wordloco/wordchallenge/c/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/c;->g:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/c;->a:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public a([[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/c;->b:[[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wordloco/wordchallenge/c/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/wordloco/wordchallenge/c/c;->d:I

    .line 144
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/wordloco/wordchallenge/c/c;->e:I

    .line 156
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/wordloco/wordchallenge/c/c;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/wordloco/wordchallenge/c/c;->f:I

    .line 164
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/wordloco/wordchallenge/c/c;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/wordloco/wordchallenge/c/c;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/wordloco/wordchallenge/c/c;->f:I

    return v0
.end method
