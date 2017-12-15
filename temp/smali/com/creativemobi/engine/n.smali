.class public final Lcom/creativemobi/engine/n;
.super Ljava/lang/Object;
.source "Racer.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/creativemobi/engine/n;->b:I

    .line 16
    iput p3, p0, Lcom/creativemobi/engine/n;->c:I

    .line 17
    neg-int v0, p2

    iput v0, p0, Lcom/creativemobi/engine/n;->d:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/creativemobi/engine/n;->b:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/n;->c:I

    .line 24
    iput p3, p0, Lcom/creativemobi/engine/n;->d:I

    .line 25
    iput p4, p0, Lcom/creativemobi/engine/n;->e:I

    .line 26
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 34
    check-cast p1, Lcom/creativemobi/engine/n;

    iget v0, p1, Lcom/creativemobi/engine/n;->d:I

    .line 35
    iget v1, p0, Lcom/creativemobi/engine/n;->d:I

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    invoke-static {}, Lcom/creativemobi/engine/bp;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 39
    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/creativemobi/engine/n;->d:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method
