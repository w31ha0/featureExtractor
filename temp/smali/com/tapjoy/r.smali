.class public final Lcom/tapjoy/r;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field private static a:Lcom/tapjoy/r;

.field private static b:Lcom/tapjoy/o;

.field private static c:Lcom/tapjoy/u;

.field private static d:Lcom/tapjoy/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/tapjoy/r;->a:Lcom/tapjoy/r;

    .line 20
    sput-object v0, Lcom/tapjoy/r;->b:Lcom/tapjoy/o;

    .line 21
    sput-object v0, Lcom/tapjoy/r;->c:Lcom/tapjoy/u;

    .line 22
    sput-object v0, Lcom/tapjoy/r;->d:Lcom/tapjoy/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1, p2, p3}, Lcom/tapjoy/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static a()Lcom/tapjoy/r;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/tapjoy/r;->a:Lcom/tapjoy/r;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    sget-object v0, Lcom/tapjoy/r;->a:Lcom/tapjoy/r;

    return-object v0
.end method

.method public static a(ILcom/tapjoy/g;)V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/tapjoy/r;->b:Lcom/tapjoy/o;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/o;->a(ILcom/tapjoy/g;)V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/tapjoy/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/r;->a:Lcom/tapjoy/r;

    .line 38
    new-instance v0, Lcom/tapjoy/o;

    invoke-direct {v0, p0}, Lcom/tapjoy/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/r;->b:Lcom/tapjoy/o;

    .line 39
    new-instance v0, Lcom/tapjoy/u;

    invoke-direct {v0, p0}, Lcom/tapjoy/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/r;->c:Lcom/tapjoy/u;

    .line 40
    new-instance v0, Lcom/tapjoy/e;

    invoke-direct {v0, p0}, Lcom/tapjoy/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/r;->d:Lcom/tapjoy/e;

    .line 41
    return-void
.end method

.method public static a(Lcom/tapjoy/m;)V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/tapjoy/r;->d:Lcom/tapjoy/e;

    invoke-virtual {v0, p0}, Lcom/tapjoy/e;->a(Lcom/tapjoy/m;)V

    .line 270
    return-void
.end method

.method public static a(Lcom/tapjoy/t;)V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/tapjoy/r;->b:Lcom/tapjoy/o;

    invoke-virtual {v0, p0}, Lcom/tapjoy/o;->a(Lcom/tapjoy/t;)V

    .line 169
    return-void
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 144
    sget-object v0, Lcom/tapjoy/r;->b:Lcom/tapjoy/o;

    const-string v1, "TapjoyOffers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing offers with userID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "USER_ID"

    invoke-static {}, Lcom/tapjoy/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "URL_PARAMS"

    invoke-static {}, Lcom/tapjoy/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CLIENT_PACKAGE"

    invoke-static {}, Lcom/tapjoy/v;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method
