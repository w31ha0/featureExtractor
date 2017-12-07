.class final Lb/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    iput-object v0, p0, Lb/a/a/d;->d:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lb/a/a/d;->d:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lb/a/a/d;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lb/a/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lb/a/a/d;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic b(Lb/a/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lb/a/a/d;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/d;->d:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/d;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lb/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, v1, Lb/a/a/d;->c:Ljava/util/Hashtable;

    iget-object v0, p0, Lb/a/a/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    iput-object p0, v1, Lb/a/a/d;->d:Ljava/util/Hashtable;

    return-object v1
.end method
