.class final Lcom/creativemobi/engine/bi;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field a:[Lcom/creativemobi/engine/bq;

.field b:I

.field c:I

.field private synthetic d:Lcom/creativemobi/engine/w;


# direct methods
.method synthetic constructor <init>(Lcom/creativemobi/engine/w;)V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/bi;-><init>(Lcom/creativemobi/engine/w;B)V

    return-void
.end method

.method private constructor <init>(Lcom/creativemobi/engine/w;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iput-object p1, p0, Lcom/creativemobi/engine/bi;->d:Lcom/creativemobi/engine/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/16 v0, 0xc8

    new-array v0, v0, [Lcom/creativemobi/engine/bq;

    iput-object v0, p0, Lcom/creativemobi/engine/bi;->a:[Lcom/creativemobi/engine/bq;

    .line 805
    iput v1, p0, Lcom/creativemobi/engine/bi;->b:I

    .line 806
    iput v1, p0, Lcom/creativemobi/engine/bi;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/bq;)V
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/creativemobi/engine/bi;->a:[Lcom/creativemobi/engine/bq;

    iget v1, p0, Lcom/creativemobi/engine/bi;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/creativemobi/engine/bi;->b:I

    aput-object p1, v0, v1

    .line 810
    iget v0, p0, Lcom/creativemobi/engine/bi;->b:I

    iget-object v1, p0, Lcom/creativemobi/engine/bi;->a:[Lcom/creativemobi/engine/bq;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/bi;->b:I

    .line 811
    return-void
.end method
