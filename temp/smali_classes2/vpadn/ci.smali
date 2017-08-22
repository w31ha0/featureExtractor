.class public Lvpadn/ci;
.super Lvpadn/bu;
.source "PlaceCallCommandOneStatus.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 24
    iput-object p2, p0, Lvpadn/ci;->a:Lorg/json/JSONObject;

    .line 25
    iput-object p1, p0, Lvpadn/ci;->c:Lvpadn/cs;

    .line 26
    iget-object v0, p0, Lvpadn/ci;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ci;->a:Lorg/json/JSONObject;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    iget-object v0, p0, Lvpadn/ci;->a:Lorg/json/JSONObject;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "PlaceCallCommandOneStatus"

    const-string v1, "TEL number format is wrong"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ci;->b:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lvpadn/ci;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lvpadn/ci;->c:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v0, "PlaceCallCommandOneStatus"

    const-string v1, "PlaceCallCommandOneStatus throw Exception!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
