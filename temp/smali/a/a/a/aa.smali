.class public final La/a/a/aa;
.super Ljava/lang/Object;


# static fields
.field private static final h:La/a/a/w;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/a/a/w;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/w;-><init>(ILjava/lang/String;)V

    sput-object v0, La/a/a/aa;->h:La/a/a/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La/a/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/aa;->b:Z

    iput-object p2, p0, La/a/a/aa;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/aa;->g:I

    iput v0, p0, La/a/a/aa;->f:I

    iput v0, p0, La/a/a/aa;->d:I

    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, La/a/a/aa;->e:I

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    move v2, v6

    move v3, v6

    :goto_0
    if-lt v1, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    move v2, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_4

    const/16 v2, 0x5c

    if-ne v4, v2, :cond_2

    move v2, v6

    move v3, v7

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    if-ne v4, v2, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    move v3, v6

    goto :goto_1
.end method

.method private c()I
    .locals 2

    :goto_0
    iget v0, p0, La/a/a/aa;->d:I

    iget v1, p0, La/a/a/aa;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x4

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v1, p0, La/a/a/aa;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, La/a/a/aa;->d:I

    goto :goto_1

    :cond_1
    iget v0, p0, La/a/a/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/aa;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()La/a/a/w;
    .locals 10

    const/4 v9, -0x4

    const/16 v8, 0x28

    const/16 v7, 0x22

    const/16 v6, 0x20

    const/4 v5, 0x1

    iget v0, p0, La/a/a/aa;->f:I

    iput v0, p0, La/a/a/aa;->d:I

    iget v0, p0, La/a/a/aa;->d:I

    iget v1, p0, La/a/a/aa;->e:I

    if-lt v0, v1, :cond_0

    sget-object v0, La/a/a/aa;->h:La/a/a/w;

    :goto_0
    iget v1, p0, La/a/a/aa;->d:I

    iput v1, p0, La/a/a/aa;->g:I

    iput v1, p0, La/a/a/aa;->f:I

    return-object v0

    :cond_0
    invoke-direct {p0}, La/a/a/aa;->c()I

    move-result v0

    if-ne v0, v9, :cond_1

    sget-object v0, La/a/a/aa;->h:La/a/a/w;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_11

    iget v1, p0, La/a/a/aa;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/aa;->d:I

    :goto_2
    iget v2, p0, La/a/a/aa;->d:I

    iget v3, p0, La/a/a/aa;->e:I

    if-lt v2, v3, :cond_c

    new-instance v0, La/a/a/d;

    const-string v1, "Unbalanced quoted string"

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, La/a/a/aa;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/aa;->d:I

    move v2, v0

    move v0, v5

    :goto_3
    if-lez v0, :cond_3

    iget v3, p0, La/a/a/aa;->d:I

    iget v4, p0, La/a/a/aa;->e:I

    if-lt v3, v4, :cond_4

    :cond_3
    if-eqz v0, :cond_9

    new-instance v0, La/a/a/d;

    const-string v1, "Unbalanced comments"

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v3, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v4, p0, La/a/a/aa;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6

    iget v2, p0, La/a/a/aa;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/aa;->d:I

    move v2, v5

    :cond_5
    :goto_4
    iget v3, p0, La/a/a/aa;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/a/aa;->d:I

    goto :goto_3

    :cond_6
    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    move v2, v5

    goto :goto_4

    :cond_7
    if-ne v3, v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    const/16 v4, 0x29

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, La/a/a/aa;->b:Z

    if-nez v0, :cond_b

    if-eqz v2, :cond_a

    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    sub-int/2addr v2, v5

    invoke-static {v0, v1, v2}, La/a/a/aa;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v1, La/a/a/w;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v0}, La/a/a/w;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    invoke-direct {p0}, La/a/a/aa;->c()I

    move-result v0

    if-ne v0, v9, :cond_16

    sget-object v0, La/a/a/aa;->h:La/a/a/w;

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v3, p0, La/a/a/aa;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_e

    iget v0, p0, La/a/a/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/aa;->d:I

    move v0, v5

    :cond_d
    :goto_6
    iget v2, p0, La/a/a/aa;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/aa;->d:I

    goto/16 :goto_2

    :cond_e
    const/16 v3, 0xd

    if-ne v2, v3, :cond_f

    move v0, v5

    goto :goto_6

    :cond_f
    if-ne v2, v7, :cond_d

    iget v2, p0, La/a/a/aa;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/aa;->d:I

    if-eqz v0, :cond_10

    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    sub-int/2addr v2, v5

    invoke-static {v0, v1, v2}, La/a/a/aa;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v1, La/a/a/w;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, La/a/a/w;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_11
    if-lt v1, v6, :cond_12

    const/16 v0, 0x7f

    if-ge v1, v0, :cond_12

    iget-object v0, p0, La/a/a/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    :cond_12
    iget v0, p0, La/a/a/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/aa;->d:I

    new-array v0, v5, [C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    new-instance v2, La/a/a/w;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v1, v3}, La/a/a/w;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_13
    iget v0, p0, La/a/a/aa;->d:I

    :goto_8
    iget v1, p0, La/a/a/aa;->d:I

    iget v2, p0, La/a/a/aa;->e:I

    if-lt v1, v2, :cond_15

    :cond_14
    new-instance v1, La/a/a/w;

    const/4 v2, -0x1

    iget-object v3, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v4, p0, La/a/a/aa;->d:I

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, La/a/a/w;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/aa;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_14

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_14

    if-eq v1, v8, :cond_14

    if-eq v1, v6, :cond_14

    if-eq v1, v7, :cond_14

    iget-object v2, p0, La/a/a/aa;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_14

    iget v1, p0, La/a/a/aa;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/aa;->d:I

    goto :goto_8

    :cond_16
    move v0, v2

    goto/16 :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/a/a/aa;->a:Ljava/lang/String;

    iget v1, p0, La/a/a/aa;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
