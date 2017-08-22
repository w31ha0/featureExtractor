.class Lcom/adbert/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/h;


# direct methods
.method constructor <init>(Lcom/adbert/a/h;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/adbert/a/h$1;->a:Lcom/adbert/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/adbert/a/h$1;->a:Lcom/adbert/a/h;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adbert/a/h;->a(Lcom/adbert/a/h;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    return-void
.end method

.method public a(DD)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adbert/a/h$1;->a:Lcom/adbert/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/a/h;->a(Lcom/adbert/a/h;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/adbert/a/h$1;->a:Lcom/adbert/a/h;

    invoke-static {v0}, Lcom/adbert/a/h;->b(Lcom/adbert/a/h;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Location"

    iget-object v2, p0, Lcom/adbert/a/h$1;->a:Lcom/adbert/a/h;

    invoke-static {v2}, Lcom/adbert/a/h;->a(Lcom/adbert/a/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method
