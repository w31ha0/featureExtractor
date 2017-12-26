.class public Lb/a/a/a/a/g/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb/a/a/a/a/g/e;

.field public final b:Lb/a/a/a/a/g/p;

.field public final c:Lb/a/a/a/a/g/o;

.field public final d:Lb/a/a/a/a/g/m;

.field public final e:Lb/a/a/a/a/g/b;

.field public final f:Lb/a/a/a/a/g/f;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLb/a/a/a/a/g/e;Lb/a/a/a/a/g/p;Lb/a/a/a/a/g/o;Lb/a/a/a/a/g/m;Lb/a/a/a/a/g/b;Lb/a/a/a/a/g/f;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lb/a/a/a/a/g/w;->g:J

    .line 24
    iput-object p3, p0, Lb/a/a/a/a/g/w;->a:Lb/a/a/a/a/g/e;

    .line 25
    iput-object p4, p0, Lb/a/a/a/a/g/w;->b:Lb/a/a/a/a/g/p;

    .line 26
    iput-object p5, p0, Lb/a/a/a/a/g/w;->c:Lb/a/a/a/a/g/o;

    .line 27
    iput-object p6, p0, Lb/a/a/a/a/g/w;->d:Lb/a/a/a/a/g/m;

    .line 28
    iput p9, p0, Lb/a/a/a/a/g/w;->h:I

    .line 29
    iput p10, p0, Lb/a/a/a/a/g/w;->i:I

    .line 30
    iput-object p7, p0, Lb/a/a/a/a/g/w;->e:Lb/a/a/a/a/g/b;

    .line 31
    iput-object p8, p0, Lb/a/a/a/a/g/w;->f:Lb/a/a/a/a/g/f;

    .line 32
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lb/a/a/a/a/g/w;->g:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
