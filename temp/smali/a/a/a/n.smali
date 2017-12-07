.class public final La/a/a/n;
.super La/a/s;


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, La/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/n;->a:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, La/a/a/n;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/n;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, p1, v0}, La/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v1, p0, La/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, La/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
