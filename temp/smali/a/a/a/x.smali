.class public final La/a/a/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Return-Path"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Received"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-Date"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-From"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-Sender"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-To"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-Cc"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-Bcc"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Resent-Message-Id"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Date"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "From"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Sender"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Reply-To"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "To"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Cc"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Bcc"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "In-Reply-To"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "References"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Subject"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Comments"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Keywords"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Errors-To"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "MIME-Version"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Content-Transfer-Encoding"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Content-MD5"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, ":"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Content-Length"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    const-string v2, "Status"

    invoke-direct {v1, v2, v3}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-direct {p0, p1}, La/a/a/x;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0, p1}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v5

    :cond_2
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_3
    return-void

    :cond_4
    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, La/a/a/x;->c(Ljava/lang/String;)V

    :cond_5
    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/a/a/x;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, La/a/o;

    const-string v2, "Error in input stream"

    invoke-direct {v1, v2, v0}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    iget-object v1, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/n;

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    invoke-direct {v1, p1}, La/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Received"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Return-Path"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iget-object v2, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    move v3, v0

    :goto_1
    if-gez v2, :cond_2

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    new-instance v1, La/a/a/n;

    invoke-direct {v1, p1, p2}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    invoke-virtual {v0}, La/a/a/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    move v3, v2

    :cond_3
    invoke-virtual {v0}, La/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    new-instance v2, La/a/a/n;

    invoke-direct {v2, p1, p2}, La/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, La/a/a/x;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    if-eq v1, v3, :cond_1

    if-nez p2, :cond_2

    :cond_1
    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v2, v3

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/n;

    invoke-virtual {p0}, La/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/n;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, La/a/a/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    invoke-virtual {v0}, La/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v0, La/a/a/n;->b:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move v1, v5

    move v2, v5

    :goto_0
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, La/a/a/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    invoke-virtual {v0}, La/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    iget-object v2, v0, La/a/a/n;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, La/a/a/n;->b:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, La/a/a/n;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La/a/a/n;->b:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La/a/a/n;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/x;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_2
.end method
