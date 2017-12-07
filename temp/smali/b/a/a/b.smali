.class final Lb/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lb/a/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 2

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/b;->b(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lb/a/a/d;
    .locals 4

    sget-object v0, Lb/a/a/b;->a:Lb/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b;

    invoke-direct {v0}, Lb/a/a/b;-><init>()V

    sput-object v0, Lb/a/a/b;->a:Lb/a/a/b;

    :cond_0
    new-instance v0, Lb/a/a/d;

    invoke-direct {v0}, Lb/a/a/d;-><init>()V

    if-eqz p0, :cond_3

    new-instance v1, Lb/a/a/c;

    invoke-direct {v1}, Lb/a/a/c;-><init>()V

    invoke-static {p0, v1}, Lb/a/a/b;->b(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/a/d;->a(Lb/a/a/d;Ljava/lang/String;)V

    iget v2, v1, Lb/a/a/c;->a:I

    invoke-static {p0, v2}, Lb/a/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lb/a/a/c;->a:I

    iget v2, v1, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, v1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v2, v1, Lb/a/a/c;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lb/a/a/c;->a:I

    invoke-static {p0, v1}, Lb/a/a/b;->b(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/a/d;->b(Lb/a/a/d;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Lb/a/a/d;Lb/a/a/c;)V

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lb/a/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lb/a/a/c;->a:I

    move v1, v4

    :cond_0
    iget v2, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    iget v1, p1, Lb/a/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p1, Lb/a/a/c;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v1, :cond_4

    move v1, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget v2, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lb/a/a/d;Lb/a/a/c;)V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lb/a/a/d;->a(Lb/a/a/d;Ljava/util/Hashtable;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lb/a/a/d;->b(Lb/a/a/d;Ljava/util/Hashtable;)V

    :goto_0
    iget v0, p2, Lb/a/a/c;->a:I

    invoke-static {p0, v0}, Lb/a/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lb/a/a/c;->a:I

    iget v0, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p2, Lb/a/a/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lb/a/a/c;->a:I

    invoke-static {p0, p2}, Lb/a/a/b;->b(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lb/a/a/c;->a:I

    invoke-static {p0, v1}, Lb/a/a/b;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lb/a/a/c;->a:I

    iget v1, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    iget v1, p2, Lb/a/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lb/a/a/c;->a:I

    iget v1, p2, Lb/a/a/c;->a:I

    invoke-static {p0, v1}, Lb/a/a/b;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lb/a/a/c;->a:I

    iget v1, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iget v1, p2, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_5

    invoke-static {p0, p2}, Lb/a/a/b;->a(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1}, Lb/a/a/d;->a(Lb/a/a/d;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lb/a/a/b;->b(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lb/a/a/c;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-static {p0, v1}, Lb/a/a/b;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lb/a/a/c;->a:I

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/b;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v1, p1, Lb/a/a/c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/b;->b(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lb/a/a/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/b;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
