.class public final La/a/a/j;
.super La/a/ac;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ac;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, La/a/ac;-><init>()V

    iput-object p1, p0, La/a/a/j;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "news"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, La/a/a/j;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, La/a/a/j;

    iget-object v0, p0, La/a/a/j;->a:Ljava/lang/String;

    iget-object v1, p1, La/a/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/j;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, La/a/a/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, La/a/a/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, La/a/a/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/j;->b:Ljava/lang/String;

    iget-object v1, p1, La/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/j;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, La/a/a/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/j;->b:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
