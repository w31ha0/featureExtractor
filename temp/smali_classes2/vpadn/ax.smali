.class public Lvpadn/ax;
.super Ljava/lang/Object;
.source "VponAdData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;

.field private f:J

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v1, p0, Lvpadn/ax;->b:I

    .line 7
    iput v1, p0, Lvpadn/ax;->c:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/ax;->g:I

    .line 13
    iput-boolean v1, p0, Lvpadn/ax;->h:Z

    .line 15
    iput-boolean v1, p0, Lvpadn/ax;->i:Z

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lvpadn/ax;->j:Ljava/lang/String;

    .line 18
    const-string v0, "tw"

    iput-object v0, p0, Lvpadn/ax;->k:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lvpadn/ax;->l:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lvpadn/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lvpadn/ax;->f:J

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lvpadn/ax;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lvpadn/ax;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvpadn/ax;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lvpadn/ax;->f:J

    return-wide v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ax;->i:Z

    .line 102
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lvpadn/ax;->i:Z

    return v0
.end method
