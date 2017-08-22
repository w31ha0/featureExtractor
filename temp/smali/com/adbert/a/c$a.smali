.class Lcom/adbert/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/c;

.field private b:Lcom/adbert/a/c$b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adbert/a/c;Lcom/adbert/a/c$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iput-object p1, p0, Lcom/adbert/a/c$a;->a:Lcom/adbert/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c$a;->c:Ljava/lang/String;

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c$a;->d:Ljava/lang/String;

    .line 415
    iput-object v1, p0, Lcom/adbert/a/c$a;->e:Ljava/util/Map;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c$a;->f:Ljava/lang/String;

    .line 417
    iput-object v1, p0, Lcom/adbert/a/c$a;->g:[B

    .line 418
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c$a;->h:Ljava/lang/String;

    .line 421
    iput-object p2, p0, Lcom/adbert/a/c$a;->b:Lcom/adbert/a/c$b;

    .line 422
    return-void
.end method


# virtual methods
.method public a()Lcom/adbert/a/c$b;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adbert/a/c$a;->b:Lcom/adbert/a/c$b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/adbert/a/c$a;->c:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adbert/a/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/adbert/a/c$a;->d:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/adbert/a/c$a;->h:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/adbert/a/c$a;->d:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/adbert/a/c$a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adbert/a/c$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/adbert/a/c$a;->g:[B

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adbert/a/c$a;->h:Ljava/lang/String;

    return-object v0
.end method
