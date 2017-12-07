.class final La/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/g;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/g;->b:[C

    iput-object p1, p0, La/a/a/g;->b:[C

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, La/a/a/g;->b:[C

    array-length v0, v0

    :goto_0
    iget v1, p0, La/a/a/g;->a:I

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, La/a/a/g;->b:[C

    iget v2, p0, La/a/a/g;->a:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/g;->a:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(C)Z
    .locals 3

    iget v0, p0, La/a/a/g;->a:I

    iget-object v1, p0, La/a/a/g;->b:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    iget v0, p0, La/a/a/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/g;->a:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final b()I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, La/a/a/g;->b:[C

    array-length v0, v0

    move v2, v1

    :goto_0
    iget v3, p0, La/a/a/g;->a:I

    if-lt v3, v0, :cond_0

    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, La/a/a/g;->b:[C

    iget v4, p0, La/a/a/g;->a:I

    aget-char v3, v3, v4

    packed-switch v3, :pswitch_data_0

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v1, v1, 0xa

    move v2, v5

    :goto_2
    iget v3, p0, La/a/a/g;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/a/g;->a:I

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_2

    :pswitch_2
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x2

    move v2, v5

    goto :goto_2

    :pswitch_3
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x3

    move v2, v5

    goto :goto_2

    :pswitch_4
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x4

    move v2, v5

    goto :goto_2

    :pswitch_5
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x5

    move v2, v5

    goto :goto_2

    :pswitch_6
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x6

    move v2, v5

    goto :goto_2

    :pswitch_7
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x7

    move v2, v5

    goto :goto_2

    :pswitch_8
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x8

    move v2, v5

    goto :goto_2

    :pswitch_9
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x9

    move v2, v5

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final c()I
    .locals 8

    const/16 v7, 0x50

    const/16 v6, 0x4e

    const/16 v5, 0x43

    const/16 v4, 0x65

    const/16 v3, 0x45

    :try_start_0
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Month"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_0
    :try_start_1
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_2
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_2

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_0

    :cond_5
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_6

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    :cond_7
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_8

    const/16 v1, 0x72

    if-ne v0, v1, :cond_9

    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    :cond_9
    const/16 v1, 0x59

    if-eq v0, v1, :cond_a

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_b

    const/16 v1, 0x70

    if-ne v0, v1, :cond_d

    :cond_b
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_c

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_d
    const/16 v1, 0x55

    if-eq v0, v1, :cond_e

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    :cond_e
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_f

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    :cond_f
    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_6
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_10

    if-ne v0, v4, :cond_0

    :cond_10
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_11

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    :cond_11
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v5, :cond_12

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    :cond_12
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_13

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    :cond_13
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_14

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    :cond_14
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_15

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    :cond_15
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_16

    if-ne v0, v4, :cond_0

    :cond_16
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v0, v5, :cond_17

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    :cond_17
    const/16 v0, 0xb

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x44 -> :sswitch_9
        0x46 -> :sswitch_3
        0x4a -> :sswitch_0
        0x4d -> :sswitch_4
        0x4e -> :sswitch_8
        0x4f -> :sswitch_7
        0x53 -> :sswitch_6
        0x61 -> :sswitch_5
        0x64 -> :sswitch_9
        0x66 -> :sswitch_3
        0x6a -> :sswitch_0
        0x6d -> :sswitch_4
        0x6e -> :sswitch_8
        0x6f -> :sswitch_7
        0x73 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_1
        0x55 -> :sswitch_2
        0x61 -> :sswitch_1
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method public final d()I
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x74

    const/16 v4, 0x54

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_0
    :try_start_1
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    move v0, v6

    move v1, v6

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/a/g;->b:[C

    iget v2, p0, La/a/a/g;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/a/a/g;->a:I

    aget-char v0, v0, v2

    const/16 v2, 0x53

    if-eq v0, v2, :cond_1

    const/16 v2, 0x73

    if-ne v0, v2, :cond_6

    :cond_1
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v2, p0, La/a/a/g;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/a/a/g;->a:I

    aget-char v0, v0, v2

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_1
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v1, p0, La/a/a/g;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/g;->a:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v6

    move v1, v6

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :sswitch_2
    const/16 v0, 0x12c

    move v1, v0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x168

    move v1, v0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1a4

    move v1, v0

    move v0, v3

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x1e0

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_6
    const/16 v2, 0x44

    if-eq v0, v2, :cond_7

    const/16 v2, 0x64

    if-ne v0, v2, :cond_a

    :cond_7
    iget-object v0, p0, La/a/a/g;->b:[C

    iget v2, p0, La/a/a/g;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/a/a/g;->a:I

    aget-char v0, v0, v2

    if-eq v0, v4, :cond_8

    if-eq v0, v5, :cond_9

    :cond_8
    add-int/lit8 v0, v1, -0x3c

    :goto_1
    return v0

    :cond_9
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, La/a/a/g;->a:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x45 -> :sswitch_2
        0x47 -> :sswitch_1
        0x4d -> :sswitch_4
        0x50 -> :sswitch_5
        0x55 -> :sswitch_0
        0x63 -> :sswitch_3
        0x65 -> :sswitch_2
        0x67 -> :sswitch_1
        0x6d -> :sswitch_4
        0x70 -> :sswitch_5
        0x75 -> :sswitch_0
    .end sparse-switch
.end method
