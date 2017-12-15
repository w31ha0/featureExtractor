.class final Lcom/creativemobi/engine/bw;
.super Ljava/lang/Object;
.source "WaitingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/u;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/u;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0xa

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v0, v0, Lcom/creativemobi/engine/u;->b:I

    if-eq v0, v11, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v0, v0, Lcom/creativemobi/engine/u;->b:I

    iget-object v1, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v1, v1, Lcom/creativemobi/engine/u;->d:I

    invoke-static {v0, v1}, Lcom/creativemobi/engine/bp;->g(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-boolean v0, v0, Lcom/creativemobi/engine/u;->f:Z

    if-nez v0, :cond_4

    .line 87
    sget-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->d(Ljava/lang/String;)I

    move-result v0

    .line 89
    if-lt v0, v12, :cond_0

    .line 90
    iget-object v1, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    sub-int v2, v0, v12

    invoke-static {v1, v2}, Lcom/creativemobi/engine/u;->a(Lcom/creativemobi/engine/u;I)I

    .line 93
    :cond_0
    if-ne v0, v9, :cond_7

    .line 94
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v0, v0, Lcom/creativemobi/engine/u;->b:I

    if-ne v0, v11, :cond_5

    .line 98
    sget-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-object v2, v2, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    const/4 v3, 0x0

    const/16 v4, 0x38

    shr-long v4, v0, v4

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v2

    move v3, v8

    .line 103
    :goto_1
    if-ge v3, v10, :cond_3

    .line 105
    const/4 v4, 0x5

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x8

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 106
    invoke-virtual {v2, v3, v4}, Lcom/creativemobi/engine/m;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 81
    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    move-wide v13, v1

    move-wide v2, v13

    move v1, v8

    .line 82
    :goto_2
    if-ge v1, v10, :cond_2

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-int/lit8 v6, v1, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v0, v0, Lcom/creativemobi/engine/u;->d:I

    invoke-static {v0, v2, v3}, Lcom/creativemobi/engine/bp;->a(IJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    :try_start_1
    new-instance v0, Lcom/creativemobi/engine/cg;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 116
    :goto_3
    iget-object v2, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-boolean v2, v2, Lcom/creativemobi/engine/u;->f:Z

    if-nez v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v2, v2, Lcom/creativemobi/engine/u;->b:I

    if-ne v2, v11, :cond_6

    iget-object v2, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    invoke-static {v2, v1, v0}, Lcom/creativemobi/engine/u;->a(Lcom/creativemobi/engine/u;Lcom/creativemobi/engine/m;Lcom/creativemobi/engine/cg;)V

    .line 129
    :cond_4
    :goto_4
    return-void

    .line 110
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iput-boolean v9, v0, Lcom/creativemobi/engine/u;->f:Z

    .line 111
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-object v0, v0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    invoke-interface {v0, v1, v8}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto :goto_4

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-object v0, v0, Lcom/creativemobi/engine/u;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget v2, v2, Lcom/creativemobi/engine/u;->c:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/m;

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/u;->a(Lcom/creativemobi/engine/u;Lcom/creativemobi/engine/m;Lcom/creativemobi/engine/cg;)V

    goto :goto_4

    .line 120
    :cond_7
    if-ge v0, v12, :cond_8

    .line 121
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iput-boolean v9, v0, Lcom/creativemobi/engine/u;->f:Z

    .line 122
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-object v0, v0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    invoke-interface {v0, v1, v8}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/creativemobi/engine/bw;->a:Lcom/creativemobi/engine/u;

    iget-boolean v0, v0, Lcom/creativemobi/engine/u;->f:Z

    if-nez v0, :cond_4

    .line 127
    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method
