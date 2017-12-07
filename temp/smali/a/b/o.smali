.class public final La/b/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/b/o;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/b/o;->a:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, La/b/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x22

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, La/b/o;->a(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3

    :cond_2
    if-ge v1, v0, :cond_0

    new-instance v0, La/b/g;

    const-string v1, "More characters encountered in input than expected."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, La/b/o;->a(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, La/b/o;->a(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2}, La/b/o;->a(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_7

    :cond_5
    new-instance v0, La/b/g;

    const-string v1, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, La/b/o;->a(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v0, :cond_8

    new-instance v0, La/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find a value for parameter named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_e

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_9

    new-instance v0, La/b/g;

    const-string v1, "Encountered unterminated quoted parameter value."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v4, v2

    :goto_2
    if-lt v4, v0, :cond_b

    :cond_a
    if-eq v3, v6, :cond_d

    new-instance v0, La/b/g;

    const-string v1, "Encountered unterminated quoted parameter value."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_a

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_c

    add-int/lit8 v4, v4, 0x1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    :goto_3
    iget-object v4, p0, La/b/o;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3}, La/b/o;->a(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    :cond_e
    invoke-static {v3}, La/b/o;->a(C)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v2

    :goto_4
    if-ge v3, v0, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, La/b/o;->a(C)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    new-instance v0, La/b/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character encountered at index "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v1, v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    :goto_1
    if-lt v2, v0, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, La/b/o;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_4

    if-ne v3, v7, :cond_5

    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object v0, p0

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    move v2, v6

    move v3, v6

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v3, :cond_1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, La/b/o;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    iget-object v0, p0, La/b/o;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, La/b/o;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, La/b/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
