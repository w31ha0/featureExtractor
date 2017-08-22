.class Lvpadn/cs$2;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lvpadn/cs$2;->b:Lvpadn/cs;

    iput-object p2, p0, Lvpadn/cs$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1600
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$2;->b:Lvpadn/cs;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lvpadn/cs$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Ljava/net/URL;)Ljava/net/URL;

    .line 1601
    iget-object v0, p0, Lvpadn/cs$2;->b:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->M(Lvpadn/cs;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1602
    iget-object v1, p0, Lvpadn/cs$2;->b:Lvpadn/cs;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/cs;->a(Lvpadn/cs;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :goto_0
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    const-string v1, "VideoManager"

    const-string v2, "getIconFromUrl new URL Failed"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
