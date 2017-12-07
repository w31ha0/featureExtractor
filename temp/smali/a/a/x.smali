.class public final La/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/x;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/x;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(La/a/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/x;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/x;->b:Ljava/util/Hashtable;

    iget v0, p0, La/a/x;->a:I

    invoke-static {p1}, La/a/i;->a(La/a/i;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, La/a/x;->a:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/x;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    iput-object p0, v0, La/a/x;->b:Ljava/util/Hashtable;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, La/a/x;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    check-cast p1, La/a/x;

    iget v0, p1, La/a/x;->a:I

    iget v1, p0, La/a/x;->a:I

    if-eq v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p1, La/a/x;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/x;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p1, La/a/x;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/x;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    iget-object v0, p1, La/a/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, La/a/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, La/a/x;->a:I

    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method
