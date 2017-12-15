.class public Lcom/google/ads/util/e;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/ads/util/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/ads/util/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    new-instance v2, Lcom/google/ads/util/a;

    invoke-direct {v2}, Lcom/google/ads/util/a;-><init>()V

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x4

    iget-boolean v4, v2, Lcom/google/ads/util/a;->a:Z

    if-eqz v4, :cond_2

    rem-int/lit8 v4, v1, 0x3

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v4, v2, Lcom/google/ads/util/a;->b:Z

    if-eqz v4, :cond_1

    if-lez v1, :cond_1

    sub-int v4, v1, v6

    div-int/lit8 v4, v4, 0x39

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, v2, Lcom/google/ads/util/a;->c:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    :goto_1
    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    :cond_1
    new-array v4, v3, [B

    iput-object v4, v2, Lcom/google/ads/util/a;->d:[B

    invoke-virtual {v2, p0, v1}, Lcom/google/ads/util/a;->a([BI)Z

    sget-boolean v1, Lcom/google/ads/util/e;->a:Z

    if-nez v1, :cond_4

    iget v1, v2, Lcom/google/ads/util/a;->e:I

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :try_start_1
    rem-int/lit8 v4, v1, 0x3

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    iget-object v1, v2, Lcom/google/ads/util/a;->d:[B

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
