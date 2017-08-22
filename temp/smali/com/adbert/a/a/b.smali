.class public Lcom/adbert/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Lcom/adbert/a/b/i;

.field public l:Ljava/lang/String;

.field public m:Lorg/json/JSONObject;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:I

.field public q:[Z

.field public r:[Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->b:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->c:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->g:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lcom/adbert/a/a/b;->i:Z

    .line 21
    iput-boolean v2, p0, Lcom/adbert/a/a/b;->j:Z

    .line 22
    sget-object v0, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    iput-object v0, p0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adbert/a/a/b;->m:Lorg/json/JSONObject;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lcom/adbert/a/a/b;->o:Z

    .line 27
    const/16 v0, 0x2710

    iput v0, p0, Lcom/adbert/a/a/b;->p:I

    .line 28
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/adbert/a/a/b;->q:[Z

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/a/b;->s:Ljava/lang/String;

    return-void

    .line 28
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public a()Lcom/adbert/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v3, Lcom/adbert/a/a/a;

    invoke-direct {v3}, Lcom/adbert/a/a/a;-><init>()V

    .line 34
    iput-boolean v2, v3, Lcom/adbert/a/a/a;->p:Z

    .line 35
    iget-boolean v0, p0, Lcom/adbert/a/a/b;->o:Z

    iput-boolean v0, v3, Lcom/adbert/a/a/a;->q:Z

    .line 36
    iget-object v0, p0, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->r:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/adbert/a/a/b;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->u:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/adbert/a/a/b;->g:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/adbert/a/a/b;->s:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->F:Ljava/lang/String;

    .line 43
    iget-boolean v0, p0, Lcom/adbert/a/a/b;->i:Z

    iput-boolean v0, v3, Lcom/adbert/a/a/a;->n:Z

    .line 44
    iget-boolean v0, p0, Lcom/adbert/a/a/b;->j:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/adbert/a/a/a;->k:Z

    .line 45
    iget-object v0, p0, Lcom/adbert/a/a/b;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->z:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/adbert/a/a/b;->p:I

    iput v0, v3, Lcom/adbert/a/a/a;->c:I

    .line 47
    iget-object v0, p0, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    .line 48
    iget-boolean v0, p0, Lcom/adbert/a/a/b;->j:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, v3, Lcom/adbert/a/a/a;->k:Z

    .line 49
    iget-object v0, p0, Lcom/adbert/a/a/b;->q:[Z

    iput-object v0, v3, Lcom/adbert/a/a/a;->i:[Z

    .line 50
    iget-object v0, p0, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    iput-object v0, v3, Lcom/adbert/a/a/a;->j:[Ljava/lang/String;

    .line 51
    return-object v3

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1
.end method
