.class public abstract La/a/l;
.super Ljava/lang/Object;

# interfaces
.implements La/a/j;


# instance fields
.field protected a:La/a/ae;

.field private b:I

.field private c:Z

.field private d:La/a/k;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/a/l;->b:I

    iput-boolean v0, p0, La/a/l;->c:Z

    iput-object v1, p0, La/a/l;->d:La/a/k;

    iput-object v1, p0, La/a/l;->a:La/a/ae;

    return-void
.end method

.method protected constructor <init>(La/a/ae;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/a/l;->b:I

    iput-boolean v0, p0, La/a/l;->c:Z

    iput-object v1, p0, La/a/l;->d:La/a/k;

    iput-object v1, p0, La/a/l;->a:La/a/ae;

    iput-object p1, p0, La/a/l;->a:La/a/ae;

    return-void
.end method


# virtual methods
.method public abstract a(La/a/q;[La/a/ac;)V
.end method

.method public abstract a(La/a/q;)[La/a/ac;
.end method

.method public d()[La/a/ac;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, La/a/q;->a:La/a/q;

    invoke-virtual {p0, v0}, La/a/l;->a(La/a/q;)[La/a/ac;

    move-result-object v0

    sget-object v1, La/a/q;->b:La/a/q;

    invoke-virtual {p0, v1}, La/a/l;->a(La/a/q;)[La/a/ac;

    move-result-object v1

    sget-object v2, La/a/q;->c:La/a/q;

    invoke-virtual {p0, v2}, La/a/l;->a(La/a/q;)[La/a/ac;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_3

    array-length v3, v0

    :goto_1
    if-eqz v1, :cond_4

    array-length v4, v1

    :goto_2
    add-int/2addr v3, v4

    if-eqz v2, :cond_5

    array-length v4, v2

    :goto_3
    add-int/2addr v3, v4

    new-array v3, v3, [La/a/ac;

    if-eqz v0, :cond_6

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    :goto_4
    if-eqz v1, :cond_1

    array-length v4, v1

    invoke-static {v1, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    if-eqz v2, :cond_2

    array-length v1, v2

    invoke-static {v2, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_4
.end method

.method public abstract e()V
.end method
