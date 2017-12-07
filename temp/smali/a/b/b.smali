.class public final La/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:La/b/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application"

    iput-object v0, p0, La/b/b;->a:Ljava/lang/String;

    const-string v0, "*"

    iput-object v0, p0, La/b/b;->b:Ljava/lang/String;

    new-instance v0, La/b/o;

    invoke-direct {v0}, La/b/o;-><init>()V

    iput-object v0, p0, La/b/b;->c:La/b/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, La/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v0, :cond_0

    if-gez v1, :cond_0

    new-instance v0, La/b/g;

    const-string v1, "Unable to find a sub type."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez v0, :cond_1

    if-ltz v1, :cond_1

    new-instance v0, La/b/g;

    const-string v1, "Unable to find a sub type."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz v0, :cond_2

    if-gez v1, :cond_2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/b/b;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/b;->b:Ljava/lang/String;

    new-instance v0, La/b/o;

    invoke-direct {v0}, La/b/o;-><init>()V

    iput-object v0, p0, La/b/b;->c:La/b/o;

    :goto_0
    iget-object v0, p0, La/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, La/b/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, La/b/g;

    const-string v1, "Primary type is invalid."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La/b/b;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/b;->b:Ljava/lang/String;

    new-instance v0, La/b/o;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/b/b;->c:La/b/o;

    goto :goto_0

    :cond_3
    new-instance v0, La/b/g;

    const-string v1, "Unable to find a sub type."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, La/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, La/b/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, La/b/g;

    const-string v1, "Sub type is invalid."

    invoke-direct {v0, v1}, La/b/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v4

    :goto_0
    if-lt v1, v0, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    const-string v3, "()<>@,;:/[]?=\\\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    move v2, v5

    :goto_2
    if-nez v2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, La/b/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch La/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/b/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/b/b;->c:La/b/o;

    invoke-virtual {v1}, La/b/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    invoke-virtual {p0}, La/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    return-void
.end method
